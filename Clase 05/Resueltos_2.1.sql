--11 Listado con Apellidos, Nombres, Email y Edad de los usuarios
-- Alternativa when
select Apellidos, Nombres, Email, Nacimiento,
case 
when (month(Nacimiento) < month(getdate())) or (month(Nacimiento) = month(getdate()) and day(Nacimiento) < day(getdate())) then year(getdate()) - year(Nacimiento)
else year(getdate()) - year(Nacimiento) - 1
end as Edad
From DatosPersonales

-- Alternativa Dordi
select Apellidos, Nombres, Email, Nacimiento,
cast(datediff(DD, nacimiento, getdate())/365.25 as int) as Edad
From DatosPersonales

-- 15 Listado de Usuarios con apellido y nombres, email y celular (si no tienen celular debe figurar el texto 'Sin celular' en la columna)
select Apellidos, Nombres, email, 
case 
    when celular is null then 'Sin celular'
    else celular
end as Celular
from DatosPersonales

select Apellidos, Nombres, email, isnull(celular, 'Sin celular') as Celular
From DatosPersonales

--16 Listado de Usuarios con apellido y nombres, email y celular (si no tienen celular debe figurar el teléfono y si no tienen teléfono debe figurar el domicilio, de lo contrario 'Incontactable')

-- Opción A con Case
select Apellidos, Nombres, email, 
case
    when celular is not null then celular
    when telefono is not null then telefono
    when domicilio is not null then domicilio
    else 'Incontactable'
end as Contacto
From DatosPersonales

-- Opción B con isnull
select Apellidos, Nombres, email, 
isnull(celular, isnull(telefono, isnull(domicilio, 'Incontactable'))) as Contacto
From DatosPersonales

-- Opción con Coalesce
select Apellidos, Nombres, email,
coalesce(celular, telefono, domicilio, 'Incontactable') as Contacto
From DatosPersonales

/* 18 Listado de Usuarios con apellido y nombres y el texto:
'Generación X' si el año de nacimiento está comprendido entre 1969-1980
'Millennials' si el año de nacimiento está comprendido entre 1981-1993 
'Generación Z' si el año de nacimiento está comprendido entre 1994-2010
*/
Select Apellidos, Nombres, Nacimiento,
case
when year(Nacimiento) between 1969 and 1980 then 'Generación X'
when year(Nacimiento) between 1981 and 1993 then 'Millenials'
when year(Nacimiento) between 1994 and 2010 then 'Generación Z'
end as Generacion
From DatosPersonales

