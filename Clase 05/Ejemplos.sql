-- 1 Apellidos y nombres de los usuarios y nombre de la localidad en la que vive. Si el usuario no registra una localidad no debe figurar en la lista.
select DAT.Apellidos, DAT.Nombres, L.Nombre from DatosPersonales as DAT
inner join Localidades as L ON L.ID = DAT.IDLocalidad

-- 2 Apellidos y nombres de los usuarios y nombre de la localidad en la que vive. Si el usuario no registra una localidad debe figurar en la lista de todas maneras.
select DAT.Apellidos, DAT.Nombres, L.Nombre from DatosPersonales as DAT
left join Localidades as L ON L.ID = DAT.IDLocalidad

--3 Apellidos y nombres de los usuarios y nombre de la localidad en la que vive. Si la localidad no registra un usuario debe figurar en la lista de todas maneras.
select DAT.Apellidos, DAT.Nombres, L.Nombre from DatosPersonales as DAT
right join Localidades as L ON L.ID = DAT.IDLocalidad

-- Nombres de localidades que no tengan relacionados ningún usuario
select L.Nombre from DatosPersonales as DAT
right join Localidades as L ON L.ID = DAT.IDLocalidad
where DAT.ID is null

-- Ejemplo de full join (inner + left + right)
select DAT.Apellidos, DAT.Nombres, L.Nombre from DatosPersonales as DAT
full join Localidades as L ON L.ID = DAT.IDLocalidad

--4 Apellidos y nombres de los usuarios, nombre de la localidad en la que vive y nombre del país.
select DAT.Apellidos, DAT.Nombres, L.Nombre, P.Nombre from DatosPersonales as DAT
inner join Localidades as L ON L.ID = DAT.IDLocalidad
inner join Paises as P ON P.ID = L.IDPais



-- Ejemplo de UNION
Select DNI, Apellido, Nombre, 'Alumno', Email From Alumnos
union
Select DNI, Apellido, Nombre, 'Graduado', Email From Graduados
UNION
Select DNI, Apellido, Nombre, 'No-Docentes', 'Sin mail' From NoDocentes
union
Select Legajo, Apellido, Nombre, 'Docentes', EmailUTN From Docentes
