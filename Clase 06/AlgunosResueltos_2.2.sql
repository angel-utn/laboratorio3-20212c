Use Larabox
go
-- 7 Nombre de usuario y nombre del país al que pertenece. Si no registra país debe figurar con el nombre 'Sin país'.
select U.Nombreusuario, isnull(P.Nombre, 'Sin país') as Pais from DatosPersonales DAT
inner join Usuarios U on U.ID = DAT.ID
left join Localidades L ON L.ID = DAT.IDLocalidad
left join Paises P ON P.ID = L.IDPais

-- 14 Apellidos y nombres, sin repetir, de aquellos usuarios que hayan registrado al menos un archivo que hayan creado y no modificado.
select distinct DAT.Apellidos, DAT.Nombres from DatosPersonales DAT
inner join Usuarios U on U.ID = DAT.ID
inner join Archivos A on U.ID = A.IDUsuario
where A.Creacion = A.Modificacion

-- 15 Los nombres de los países que aún no registren usuarios.
select P.Nombre from DatosPersonales DAT
inner join Localidades L ON L.ID = DAT.IDLocalidad
right join Paises P ON P.ID = L.IDPais
where DAT.ID is null
