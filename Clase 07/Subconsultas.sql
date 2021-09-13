select Nombre, Extension From Archivos where Tamaño > (
    select avg(Tamaño) from Archivos where Extension = 'avi'
)

select Nombre, Extension From Archivos where IDUsuario in (
    select ID from Usuarios where Nombreusuario like 'a%'
)

select Nombre, Extension From Archivos where IDUsuario = ANY (
    select ID from Usuarios where Nombreusuario like 'a%'
)


select A.Nombre, A.Extension from Archivos A
inner join Usuarios U on U.ID = A.IDUsuario
where U.Nombreusuario like 'a%'

-- 6 Las formas de pago que no se utilizaron en Diciembre de 2019.
select * from FormasPago where ID not in (
    select distinct IDFormaPago from Pagos where Year(Fecha) = 2021 and Month(Fecha) = 6
)

select * from FormasPago where ID <> ALL (
    select distinct IDFormaPago from Pagos where Year(Fecha) = 2021 and Month(Fecha) = 6
)

-- Los nombres de los archivos que tengan un tamaño mayor a cualquier archivo con extensión 'XLS'.
select Nombre, Extension, Tamaño From Archivos where Tamaño > ALL(
    select Tamaño from Archivos where Extension = 'xls'
)

-- Los nombres de los archivos que tengan un tamaño mayor a algún archivo con extensión 'XLS'.
select Nombre, Extension, Tamaño From Archivos where Tamaño > ANY(
    select Tamaño from Archivos where Extension = 'xls'
)

-- $500
-- Alcanza cualquiera de los productos

-- $200
-- Alcanza alguno de los productos

-- $10
-- Alcanza ninguno de los productos

-- Gaseosa      $100
-- Energizante  $150
-- Cerveza      $220

-- Listar apellidos, nombres y nombre de usuario y la cantidad de archivos de extensión 'avi' y la cantidad de archivos de extensión 'xls'.
Select Dat.ID, Dat.Apellidos, Dat.Nombres, U.NombreUsuario,
(
    select count(*) from Archivos
    where Extension = 'xls' and IDUsuario = U.ID
) as CantXLS,
(
    select count(*) from Archivos
    where Extension = 'avi' and IDUsuario = U.ID
) as CantAVI
From DatosPersonales DAT
inner join Usuarios U on U.ID = DAT.ID

-- Igual a la anterior, pero sólo aquellas personas que tengan la misma cantidad de XLS que AVI pero que al menos tenga algún archivo.
Select * From (
    Select Dat.ID, Dat.Apellidos, Dat.Nombres, U.NombreUsuario,
    (
        select count(*) from Archivos
        where Extension = 'xls' and IDUsuario = U.ID
    ) as CantXLS,
    (
        select count(*) from Archivos
        where Extension = 'avi' and IDUsuario = U.ID
    ) as CantAVI
    From DatosPersonales DAT
    inner join Usuarios U on U.ID = DAT.ID
) as Tablita
Where Tablita.CantAVI = Tablita.CantXLS and Tablita.CantXLS > 0



Select Dat.ID, Dat.Apellidos, Dat.Nombres, U.NombreUsuario,
(
    select count(*) from Archivos
    where Extension = 'xls' and IDUsuario = U.ID
) as CantXLS,
(
    select count(*) from Archivos
    where Extension = 'avi' and IDUsuario = U.ID
) as CantAVI
From DatosPersonales DAT
inner join Usuarios U on U.ID = DAT.ID
Where (
    select count(*) from Archivos
    where Extension = 'xls' and IDUsuario = U.ID
) = (
    select count(*) from Archivos
    where Extension = 'avi' and IDUsuario = U.ID
) and (
    select count(*) from Archivos
    where Extension = 'xls' and IDUsuario = U.ID
) > 0