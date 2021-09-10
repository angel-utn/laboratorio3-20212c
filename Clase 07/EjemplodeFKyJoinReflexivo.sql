Create Database EquiposDB
go
Use EquiposDB
go
Create Table Equipos(
    ID bigint not null primary key,
    Pais char(3) not null,
    Nombre varchar(50) not null,
    NombreEstadio varchar(120) not null,
    IDEquipoRival bigint null foreign key references Equipos(ID),
    check (ID <> IDEquipoRival)
)
go
Insert into Equipos (ID, Pais, Nombre, NombreEstadio, IDEquipoRival) Values 
(1, 'ARG', 'Independiente', 'Libertadores de América', null),
(2, 'ARG', 'River Plate', 'Monumental', null),
(3, 'ARG', 'Boca Juniors', 'Bombonera', null),
(4, 'ARG', 'Racing Club', 'Cilindro de Avellaneda', null),
(5, 'ARG', 'Vélez Sarsfield', 'José Amalfitani', null)
go
Update Equipos set IDEquipoRival = 4 Where ID = 1
Update Equipos set IDEquipoRival = 1 Where ID = 4
Update Equipos set IDEquipoRival = 3 Where ID = 2
Update Equipos set IDEquipoRival = 2 Where ID = 3
go
Select  
    E.Nombre, E.NombreEstadio as [Nombre del Estadio], 
    R.Nombre as [Nombre del Rival], R.NombreEstadio as [Estadio del Rival]
From Equipos E
Left Join Equipos R ON E.IDEquipoRival = R.ID
