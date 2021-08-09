use master
go
drop database Clase1
go
Create Database Clase1
go
Use Clase1
go
Create Table Areas(
    ID bigint not null PRIMARY KEY,
    Nombre varchar(50) not null,
    Presupuesto money not null check(Presupuesto > 0),
    Mail varchar(100) not null unique
)
go
Create Table Empleados(
    Legajo bigint not null primary key identity(100, 10),
    IDArea bigint not null foreign key references Areas(ID),
    Apellidos varchar(100) not null,
    Nombres varchar(100) not null,
    Nacimiento date not null,
    Telefono varchar(20) null, -- Acepta este formto: +54011154567989
    Sueldo money not null check (Sueldo >= 0)
)
go
Alter Table Empleados
Add Constraint chk_nacimiento check(Nacimiento < getdate())

/*
    Comentario de
    muchas líneas.
*/