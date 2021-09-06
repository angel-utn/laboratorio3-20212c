use master
Drop Database Mediciones


Create Database Mediciones
GO
use Mediciones
go
Create Table Continentes(
    ID tinyint not null primary key,
    Nombre varchar(50) not null
)
go
Create Table Paises(
    ID char(3) not null primary key,
    Nombre varchar(50) not null,
    IDContinente tinyint not null foreign key references Continentes(ID)
)
go
Create Table Mediciones(
    ID bigint not null primary key identity (1, 1),
    Ciudad varchar(50) not null, --Desnormalizado a propósito para que se adapte al ejemplo
    Pais char(3) not null foreign key references Paises(ID),
    Fecha date not null,
    Temperatura decimal(5, 2)  null,
    Lluvia decimal(5, 2) null
)
go
Insert into Continentes (ID, Nombre)
Values  (1, 'Asia'),
        (2, 'America'),
        (3, 'Africa'),
        (4, 'Europa'),
        (5, 'Ocenia')
go
Insert into Paises (ID, Nombre, IDContinente) 
Values  ('ARG', 'Argentina', 2),
        ('BRA', 'Brasil', 2),
        ('KOR', 'Corea del Sur', 1),
        ('ITA', 'Italia', 4)
GO
set Dateformat 'DMY'
Insert into Mediciones (Ciudad, Pais, Fecha, Temperatura, Lluvia)
Values  ('Buenos Aires', 'ARG', '6/2/2020', 13, 0),
        ('Cordoba', 'ARG', '20/1/2020', 10, 0),
        ('Buenos Aires', 'ARG', '29/11/2019', 22, NULL),
        ('San Pablo', 'BRA', '15/1/2020', NULL, 14),
        ('Rosario', 'ARG', '6/2/2020', 10, 17),
        ('Cordoba', 'ARG', '4/2/2020', 29, NULL),
        ('Rosario', 'ARG', '4/12/2019', NULL, 0),
        ('San Pablo', 'BRA', '8/2/2020', 24, NULL),
        ('Seul', 'KOR', '1/2/2020', 4, 50),
        ('Seul', 'KOR', '1/3/2020', 0, 100),
        ('Seul', 'KOR', '2/12/2019', 5, NULL),
        ('Rio de Janeiro', 'BRA', '7/2/2020', 18, 15)