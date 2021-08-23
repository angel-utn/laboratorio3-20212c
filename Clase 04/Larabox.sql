Create Database Larabox
go
Use Larabox
go
Create Table Paises(
    ID char(3) not null primary key,
    Nombre varchar(85) not null
)
go
Create Table Localidades(
    ID int not null primary key identity (1, 1),
    IDPais char(3) not null foreign key references Paises(ID),
    Nombre varchar(85) not null
)
go
Create Table Usuarios(
    ID bigint not null primary key identity(1, 1),
    Nombreusuario varchar(25) not null unique,
    Clave varchar(100) not null,
    Estado bit not null
)
go
Create Table DatosPersonales(
    ID bigint not null primary key foreign key references Usuarios(ID),
    Apellidos varchar(100) not null,
    Nombres varchar(100) not null,
    Email varchar(120) not null,
    Telefono varchar(20) null,
    Celular varchar(20) null,
    Nacimiento date null check (Nacimiento <= getdate()),
    Domicilio varchar(250) null,
    IDLocalidad int null foreign key references Localidades(ID)
)
go
Create Table Archivos(
    ID bigint not null primary key identity (1, 1),
    IDUsuario bigint not null foreign key references Usuarios(ID),
    Nombre varchar(100) not null,
    Extension varchar(8) not null,
    Tamaño bigint not null check (Tamaño >= 0),
    Creacion date not null,
    Modificacion date not null,
    Estado bit not null default(1),
    check (Creacion <= Modificacion)
)

/*
alter table Archivos    
add constraint CHK_Fechas Check (Creacion <= Modificacion)
*/