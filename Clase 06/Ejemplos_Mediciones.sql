-- La cantidad de ciudades distintas de las que se tiene mediciones
select count(distinct ciudad) from Mediciones

-- Por cada continente, el nombre y la cantidad de países (mostrar el continente aunque no tenga países)
select C.Nombre, count(p.ID) as Cantidad
From Continentes C
Left Join Paises P ON C.ID = P.IDContinente
group by C.Nombre

-- Los nombres de los continentes que no tienen países
select C.Nombre
From Continentes C
Left Join Paises P ON C.ID = P.IDContinente
group by C.Nombre
Having Count(P.ID) = 0



select * from Paises
select * From Continentes