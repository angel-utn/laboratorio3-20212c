-- 1 - Variante A
select C.Apellido, C.Nombre
from Clientes C
inner join Servicios S on C.ID = S.IDCliente
where year(S.Fecha) = 2020
group by C.Apellido, C.Nombre
having sum(S.Importe) > 60000

-- 1 -- Variante B
Select Resumen2020.Apellido, Resumen2020.Nombre From (    
    select C.Apellido, C.Nombre, sum(S.Importe) as Total2020
    from Clientes C
    inner join Servicios S on C.ID = S.IDCliente
    where year(S.Fecha) = 2020
    group by C.Apellido, C.Nombre 
) as Resumen2020
Where Resumen2020.Total2020 > 60000

-----------------------
-- 2
-----------------------

select distinct T.ID, T.Apellido, T.Nombre from Tecnicos T
inner join Servicios S on T.ID = S.IDTecnico
where S.Importe < 2600 and S.Duracion > (
    select avg(Duracion) From Servicios
)

-----------------------
-- 3
-----------------------
Select T.Apellido, T.Nombre,
    (
        select isnull(sum(Importe), 0) from Servicios where IDTecnico = T.ID and FormaPago = 'E'
    ) as TotalEfectivo,
    (
        select isnull(sum(Importe), 0) from Servicios where IDTecnico = T.ID and FormaPago = 'T'
    ) as TotalTarjeta
From Tecnicos T

-----------------------
-- 4 Alternativa A
-----------------------
select count(*) as Cant from (
    select TS.Descripcion,
        (
            select count(distinct S.IDCliente) from Servicios S
            inner join Clientes C ON C.ID = S.IDCliente
            Where C.Tipo = 'E' and S.IDTipo = TS.ID
        ) as CantCliEmpresas,
        (
            select count(distinct S.IDCliente) from Servicios S
            inner join Clientes C ON C.ID = S.IDCliente
            Where C.Tipo = 'P' and S.IDTipo = TS.ID
        ) as CantCliParticular
    From TiposServicio TS
) as Tablita
Where Tablita.CantCliParticular > Tablita.CantCliEmpresas

-- 4 Alternativa B
select count(*) as Cant
From TiposServicio TS
Where
        (
            select count(distinct S.IDCliente) from Servicios S
            inner join Clientes C ON C.ID = S.IDCliente
            Where C.Tipo = 'P' and S.IDTipo = TS.ID
        ) >
        (
            select count(distinct S.IDCliente) from Servicios S
            inner join Clientes C ON C.ID = S.IDCliente
            Where C.Tipo = 'E' and S.IDTipo = TS.ID
        )

-----------------------
-- 5 
-----------------------
Create Table Valoraciones(
    IDServicio int not null primary key foreign key references Servicios(ID),
    Puntaje tinyint not null check (Puntaje between 1 and 10),
    Observacion varchar(500) not null
)