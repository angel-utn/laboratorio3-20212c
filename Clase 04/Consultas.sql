-- Apellidos y nombres de usuarios que no vivan en las localidades 3, 7 ni 9.
Select Apellidos, Nombres from DatosPersonales
Where IDLocalidad Not In (3, 7, 9)

Select Apellidos, Nombres from DatosPersonales
Where IDLocalidad <> 3 And IDLocalidad <> 7 And IDLocalidad <> 9

Select Apellidos, Nombres from DatosPersonales
Where Not (IDLocalidad = 3 Or IDLocalidad = 7 Or IDLocalidad = 9)

-- Listado de todos las columnas de archivos de aquellos cuyo tamaño en megabytes sea entre 10 y 50.
select Nombre, Tamaño, Cast(Tamaño/1024.0 as Decimal(10, 2))  as TamañoMB from Archivos
Where Tamaño/1024.0 Between 10 and 50

select Nombre, Tamaño, Tamaño/1024.0  as TamañoMB from Archivos
Where Tamaño/1024.0 >= 10 and Tamaño/1024.0 <= 50

-- Listado de Usuarios cuyo apellido comience y finalice con consonante
Select Apellidos, Nombres From DatosPersonales
Where Apellidos Like '[^aeiou]%[^aeiou]'

-- Apellidos y nombres de usuarios que no tengan celular
Select Apellidos, Nombres From DatosPersonales
Where Celular is null

-- Apellidos y nombres de usuarios que no tengan celular pero sí teléfono
Select Apellidos, Nombres From DatosPersonales
Where Celular is null and Telefono is not null

-- Listado con los años de nacimiento de los usuarios
select year(Nacimiento) as Años From DatosPersonales
order by 1 asc

-- Listado con los distintos años de nacimiento de los usuarios
select distinct year(Nacimiento) as Años From DatosPersonales
order by 1 asc