Use Larabox
go
Create Table TiposCuenta(
    ID int not null primary key identity (1, 1),
    Nombre varchar(50) not null,
    Cuota int not null check (Cuota > 0),
    Costo money not null check (Costo >= 0)
)
go
Create Table FormasPago(
    ID int not null primary key identity (1, 1),
    Nombre varchar(50) not null
)
go
Create Table Suscripciones(
    ID bigint not null primary key identity (1, 1),
    IDUsuario bigint not null foreign key references Usuarios (ID),
    IDTipoCuenta int not null foreign key references TiposCuenta (ID),
    Inicio date not null,
    Fin date null,
    Check (Fin >= Inicio)
)
go
Create Table Pagos(
    ID bigint not null primary key identity (1, 1),
    IDSuscripcion bigint not null foreign key references Suscripciones(ID),
    IDFormaPago int not null foreign key references FormasPago(ID),
    Fecha date not null,
    Mes tinyint not null check (Mes between 1 and 12),
    Año smallint not null check (Año > 0),
    Importe money not null check (Importe >= 0)
)