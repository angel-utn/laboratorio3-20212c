-- Resolución del Modelo de Segundo Parcial
-- ----------------------------------------------
-- 1) Hacer un trigger que al cargar un crédito verifique que el importe del mismo sumado a los importes de los créditos que actualmente solicitó esa persona no supere al triple de la declaración de ganancias. Sólo deben tenerse en cuenta en la sumatoria los créditos que no se encuentren cancelados. De no poder otorgar el crédito aclararlo con un mensaje.

-- Disable Trigger TR_NuevoCredito ON Creditos
-- go
-- Drop Trigger TR_NuevoCredito
-- go 
Create Trigger TR_NuevoCredito ON Creditos
Instead of Insert
As
Begin
    begin try
    Declare @DNI varchar(10)
    Declare @Importe money
    Declare @DeclaracionGanancias money
    Declare @SumatoriaCreditos money

    -- Obtener el DNI y el Importe del crédito insertado
    select @DNI = DNI, @Importe = Importe from inserted
    
    -- Obtener la sumatoria de créditos no cancelados de la persona
    select @SumatoriaCreditos = isnull(SUM(Importe), 0) from Creditos
    Where DNI = @DNI and Cancelado = 0

    -- Obtener la declaración de ganancias de la persona
    select @DeclaracionGanancias = DeclaracionGanancias From Personas
    Where DNI = @DNI

    -- Si Sumatoria > Declaración*3 --> Error
    if @SumatoriaCreditos + @Importe > @DeclaracionGanancias*3 begin
        RAISERROR('No se puede otorgar el crédito', 16, 1)
    end
    else begin
    -- Sino registrar crédito
        insert into creditos(IDBanco, DNI, Fecha, Importe, Plazo, Cancelado)
        select IDBanco, DNI, Fecha, Importe, Plazo, Cancelado from inserted
    end

    end try
    begin catch
        print error_message()
    end catch
End
GO
Create Trigger TR_NuevoCredito ON Creditos
After Insert
As
Begin
    Begin Try
        begin transaction
        Declare @DNI varchar(10)
        Declare @DeclaracionGanancias money
        Declare @SumatoriaCreditos money

        -- Obtener el DNI y el Importe del crédito insertado
        select @DNI = DNI from inserted
        
        -- Obtener la sumatoria de créditos no cancelados de la persona
        select @SumatoriaCreditos = isnull(SUM(Importe), 0) from Creditos
        Where DNI = @DNI and Cancelado = 0

        -- Obtener la declaración de ganancias de la persona
        select @DeclaracionGanancias = DeclaracionGanancias From Personas
        Where DNI = @DNI

        -- Si Sumatoria > Declaración*3 --> Error
        if @SumatoriaCreditos > @DeclaracionGanancias*3 begin
            RAISERROR('No se puede otorgar el crédito', 16, 1)
        end
        commit transaction
    End Try
    Begin catch
        rollback transaction
        print error_message()
    End Catch
End
go
-- 2) Hacer un trigger que al eliminar un crédito realice la cancelación del mismo.
-- ---------------------------------------------------------------------------------
Create Trigger TR_BorrarCredito on Creditos
Instead of delete
as
begin
    begin transaction
    declare @ID bigint
    select @ID = ID from deleted
    
    update creditos set Cancelado = 1 where ID = @ID

    if @@rowcount <> 1 begin
        rollback transaction
        RAISERROR('Hubo un error al cancelar el crédito', 16, 1)
    end
   
   if @@TRANCOUNT > 0 begin
    commit transaction
   end
end
go
-- 3) Hacer un trigger que no permita otorgar créditos con un plazo de 20 o más años a personas cuya declaración de ganancias sea menor al promedio de declaración de ganancias.
Create Trigger TR_NuevoCredito2 on Creditos
After Insert
as
begin
    begin transaction

    declare @plazo int
    declare @dni varchar(10)
    declare @declaracionGanancias money
    declare @promedio money

    select @plazo = plazo, @dni = dni from inserted

    if @plazo >= 20 begin
        select @declaracionGanancias = DeclaracionGanancias from Personas
        where DNI = @DNI
        select @promedio = avg(DeclaracionGanancias) From Personas

        if @declaracionGanancias < @promedio begin
            rollback transaction
            raiserror('No se puede otorgar el crédito. Plazo muy grande.', 16, 1)
            return
        end
    end

    if @@trancount > 0 begin
        commit transaction
    end
end

select * from Personas
select * from Creditos
select avg(DeclaracionGanancias) from Personas

-- Plazo >= 20, Declaracion >= Promedio --> OK
insert into creditos(IDBanco, DNI, Fecha, Importe, Plazo, Cancelado)
Values (2, 1111, getdate(), 1, 100, 0)

-- Plazo >= 20, Declaración < Promedio --> Error
insert into creditos(IDBanco, DNI, Fecha, Importe, Plazo, Cancelado)
Values (2, 3333, getdate(), 1, 100, 0)

-- Plazo < 20 --> OK
insert into creditos(IDBanco, DNI, Fecha, Importe, Plazo, Cancelado)
Values (2, 3333, getdate(), 1, 10, 0)
go
-- 4) Hacer un procedimiento almacenado que reciba dos fechas y liste todos los créditos otorgados entre esas fechas. Debe listar el apellido y nombre del solicitante, el nombre del banco, el tipo de banco, la fecha del crédito y el importe solicitado.
Create Procedure SP_Punto_4(
    @Inicio date,
    @Fin date
)
as
begin
    Select P.Apellidos, P.Nombres, B.Nombre, B.Tipo, C.Fecha, C.Importe
    From Personas P
    Inner Join Creditos C ON P.DNI = C.DNI
    Inner Join Bancos B ON B.ID = C.IDBanco
    Where C.Fecha Between @Inicio And @Fin
end

set dateformat 'dmy'
Exec SP_Punto_4 '1/1/2020', '31/12/2020'