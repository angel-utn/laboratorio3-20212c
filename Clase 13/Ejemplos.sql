/*
Al ingresar una nueva suscripción. Verificar que la suscripción anterior del usuario (si corresponde) no sea del mismo Tipo Cuenta que actualmente tiene. En caso de que ocurra, indicarlo con un mensaje de error apropiado. De lo contrario, registrar la nueva suscripción.

Tabla: Suscripción 
Acción: Insert
Tipo Trigger: Indistinto
*/
Use Larabox
go
Create Trigger TR_Nueva_Suscripcion ON Suscripciones
instead of insert
as
begin
    declare @IDUsuario bigint
    declare @IDTipoCuenta bigint
    declare @IDTipoCuentaVigente bigint
    declare @TipoCuentaRepetido bit
    select @IDUsuario = IDUsuario, @IDTipoCuenta = IDTipoCuenta from inserted
    set @TipoCuentaRepetido = 0


    if (select count(*) from Suscripciones where IDUsuario = @IDUsuario And Fin is null) > 0 begin
        select @IDTipoCuentaVigente = IDTipoCuenta from Suscripciones
        where IDUsuario = @IDUsuario and Fin is null

        if @IDTipoCuenta = @IDTipoCuentaVigente begin
            set @TipoCuentaRepetido = 1
            RAISERROR('No puede ser el mismo tipo de cuenta', 16, 1)
        end
    end
    if @TipoCuentaRepetido = 0 begin
        insert into Suscripciones(IDUsuario, IDTipoCuenta, Inicio, Fin)
        select IDUsuario, IDTipoCuenta, Inicio, Fin from inserted
    end
end
go
select * from Suscripciones where idUsuario = 1
go
insert into Suscripciones(IDUsuario, IDTipoCuenta, Inicio, Fin)
Values (1, 2, getdate(), null)
go

/*
Al borrar una suscripción, borrar primero todos los pagos que tenga relacionada dicha suscripción
y luego borrar el registro.
*/
Create Trigger TR_Borrar_Suscripcion ON Suscripciones
Instead of delete
as
begin
    begin try
        begin transaction

        declare @IDSuscripcion bigint
        select @IDSuscripcion = ID from deleted

        -- Borrar los pagos de esa suscripción
        delete from Pagos Where IDSuscripcion = @IDSuscripcion

        -- Borrar la suscripción
        delete from Suscripciones where ID = @IDSuscripcion

        commit transaction

    end try
    begin catch
        rollback transaction
    end catch
end

delete from Suscripciones where ID = 2

select * from Suscripciones where ID = 2
select * from Pagos Where IDSuscripcion = 2