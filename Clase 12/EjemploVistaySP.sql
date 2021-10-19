/*
    Hacer un reporte utilizando una vista que informe por cada usuario el nombre de usuario, el tipo de cuenta de todas las suscripciones que registra y cuanto lleva abonado por ellas.
*/
Create view VW_SuscripcionesUsuario as
select U.Nombreusuario, TC.Nombre, isnull(sum(P.Importe), 0) as TotalAbonado from Usuarios U
inner join Suscripciones S ON U.ID = S.IDUsuario
inner join TiposCuenta TC ON TC.ID = S.IDTipoCuenta
left join Pagos P ON S.ID = P.IDSuscripcion
group by U.Nombreusuario, TC.Nombre
go
select * from VW_SuscripcionesUsuario


-- Listar todos los archivos cuyo tamaño sea mayor al tamaño promedio de los archivos con extensión XLS.
declare @tamañoPromedio decimal(10, 2)
set @tamañoPromedio = (select avg(tamaño) from Archivos where Extension = 'XLS')
select * from Archivos where Tamaño > @tamañoPromedio
go
-- Hacer un reporte mediante un procedimiento almacenado que reciba un IDUsuario y muestre el apellido y nombre del usuario, nombre y extensión de archivo.
create procedure SP_ArchivosUsuario(
    @IDUsuario bigint
)
as
begin
    select U.Nombreusuario, A.Nombre +'.'+ A.Extension as NombreArchivo
    from Usuarios U
    inner join Archivos A on U.ID = A.IDUsuario
    where A.IDUsuario = @IDUsuario
end

exec SP_ArchivosUsuario 5