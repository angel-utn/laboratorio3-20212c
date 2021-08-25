Use LaraBox
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'ARG', N'Argentina')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'CHE', N'Suiza')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'ITA', N'Italia')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'JPN', N'Japon')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'URY', N'Uruguay')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'USA', N'Estados Unidos')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (N'ZAF', N'Sudafrica')
GO
SET IDENTITY_INSERT [dbo].[Localidades] ON 
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (1, N'ARG', N'Buenos Aires')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (2, N'ARG', N'San Isidro')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (3, N'ARG', N'San Fernando')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (4, N'ARG', N'General Pacheco')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (5, N'ARG', N'Tigre')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (6, N'ITA', N'Roma')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (7, N'URY', N'Montevideo')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (8, N'USA', N'Nueva York')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (9, N'USA', N'Miami')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (10, N'USA', N'San Diego')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (11, N'URY', N'Punta del Este')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (12, N'CHE', N'Lugano')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (13, N'CHE', N'Basilea')
GO
INSERT [dbo].[Localidades] ([ID], [IDPais], [Nombre]) VALUES (14, N'JPN', N'Tokyo')
GO
SET IDENTITY_INSERT [dbo].[Localidades] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (1, N'marena', N'50ccc59bffd800ad8d9dfb90b936c636', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (2, N'pcaero', N'79796e59d4f7f69925876fb6ae033824', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (3, N'ncosta', N'd000f5d808c1fa4ab92f65d69aa6d315', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (4, N'adordi', N'685dc32ef2a7dca76c80cecc47cfa495', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (5, N'nhoffman', N'a09ba86747f0486ad8d63dea5c192a97', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (6, N'ainsaurralde', N'bc896e63cb76a77b39a3d8c970ed3884', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (7, N'jliclacisneros', N'8e98580bc6ebe1f65713caa9776e8fd9', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (8, N'jmelgarejo', N'56a68a71ddf4b659045afc766bd1c6ea', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (9, N'amoreno', N'62e35e3a70f130072960b6c838bd1bdf', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (10, N'gmurias', N'db2c07d3fd1488264e693c35832c25b0', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (11, N'pperez', N'698303f696bbdf5428a6142441522cab', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (12, N'dquinteros', N'655975df1d4834d16a43ff3758219bb2', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (13, N'arasjido', N'f5a526ecf19e8a710b7704ce1c8af340', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (14, N'arobles', N'a4c526e261b2503d95a0b9a750fccf5e', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (15, N'tsantander', N'db9f161189e6fe60d3066500e370fdef', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (16, N'csilva', N'5ddd3148ac35546e8d8dc4599c44a626', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (17, N'avaca', N'52586257536776ad3cf72aac3b124f34', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (18, N'bvalor', N'48f1e86565adf78c670fe3352627cc68', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (19, N'hvarela', N'1ef41e90f2e5d524d3285eaa9202988a', 1)
GO
INSERT [dbo].[Usuarios] ([ID], [Nombreusuario], [Clave], [Estado]) VALUES (20, N'jvenezia', N'830f7fd50544b96285c2b3749b184058', 1)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (1, N'Arena', N'Maria Soledad', N'msand@hotmail.com', N'8459614983', N'6617028896', CAST(N'1979-10-06' AS Date), N'Avenida Silva 520', 1)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (2, N'Caero', N'Pablo Ezequiel', N'pcaero@utn.edu.ar', NULL, NULL, CAST(N'1988-12-03' AS Date), N'Virrey Quinteros 9663', 2)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (3, N'Costa', N'Nicolas Martin', N'ncosta@hotmail.com.ar', NULL, N'5532707996', NULL, N'General Rasjido S/N', 3)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (4, N'Dordi', N'Andres', N'adordi@yahoo.com.ar', N'5913353651', N'7611348315', CAST(N'1983-03-27' AS Date), N'Virrey Moreno S/N', 4)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (5, N'Hoffman', N'Nicolas', N'nhoffman@mail.net', NULL, N'7216636512', CAST(N'1992-05-28' AS Date), N'Doctora Dordi 999', 5)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (6, N'Insaurralde', N'Agustina', N'ainsaurralde@mail.ar', N'2986041545', N'9184875742', CAST(N'1982-07-21' AS Date), N'Reina Licla Cisneros 500', 5)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (7, N'Licla Cisneros', N'Jose Eduardo', N'jliclacisneros@argentina.ar', N'5392555169', NULL, NULL, N'Reina Robles 684', 5)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (8, N'Melgarejo', N'Jorge Ramon', N'jmelgarejo@argentina.ar', NULL, NULL, CAST(N'1990-09-02' AS Date), N'Presidente Dordi 1000', 6)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (9, N'Moreno', N'Agustina Magali', N'amoreno@mail.ar', N'2922921014', NULL, CAST(N'1996-07-31' AS Date), NULL, NULL)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (10, N'Murias', N'Gonzalo', N'gmurias@hotmail.com.ar', NULL, N'6671132794', CAST(N'1976-06-27' AS Date), N'Calle Silva 458', 7)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (11, N'Perez', N'Paul Alberto', N'pperez@hotmail.com', N'7175453783', NULL, NULL, N'Reina Chavero 415', 6)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (12, N'Quinteros', N'David Jonathan', N'dquinteros@argentina.ar', N'3427376804', N'1834032937', CAST(N'1994-10-28' AS Date), N'General Cesare 975', 8)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (13, N'Rasjido', N'Adriel Elian', N'arasjido@hotmail.com', NULL, NULL, CAST(N'1985-07-28' AS Date), N'Ingeniero Moruzzi 1400', 9)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (14, N'Robles', N'Agustin Lautaro', N'arobles@yahoo.com', N'3572005635', NULL, CAST(N'1993-12-08' AS Date), N'Virrey Virasoro 14850', 4)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (15, N'Santander', N'Tomas', N'tsantander@mail.ar', NULL, NULL, CAST(N'1985-03-08' AS Date), N'Obispo Rasjido 690', 10)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (16, N'Silva', N'Carlos Andres', N'charleswhistles@hotmail.com.ar', NULL, N'9077839728', CAST(N'1975-05-17' AS Date), NULL, 10)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (17, N'Vaca', N'Alan Gabriel', N'alan_cow@yahoo.com.ar', N'9733421502', NULL, CAST(N'1998-04-26' AS Date), N'Sargento Robles esquina Presidente Simon', 2)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (18, N'Valor', N'Braian Alejandro', N'bvalue@mail.ar', NULL, NULL, CAST(N'1995-05-22' AS Date), NULL, 2)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (19, N'Varela', N'Hernan Matias', N'hvarela@hotmail.com.ar', N'6201722515', NULL, CAST(N'1986-07-02' AS Date), N'General Arena 475', 3)
GO
INSERT [dbo].[DatosPersonales] ([ID], [Apellidos], [Nombres], [Email], [Telefono], [Celular], [Nacimiento], [Domicilio], [IDLocalidad]) VALUES (20, N'Venezia', N'Juan Martin', N'jvenezia@argentina.ar', NULL, N'4211146261', NULL, N'', 4)
GO
SET IDENTITY_INSERT [dbo].[Archivos] ON 
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (1, 15, N'UtAt', N'jpeg', 55296, CAST(N'2021-03-16' AS Date), CAST(N'2021-06-19' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (2, 1, N'MagnaVestibulum', N'jpeg', 135168, CAST(N'2020-12-24' AS Date), CAST(N'2021-01-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (3, 17, N'Phasellus', N'mp3', 267264, CAST(N'2020-04-11' AS Date), CAST(N'2020-04-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (4, 19, N'Accumsan', N'xls', 113664, CAST(N'2021-03-30' AS Date), CAST(N'2021-04-07' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (5, 11, N'PotentiInEleifend', N'tiff', 258048, CAST(N'2020-03-08' AS Date), CAST(N'2020-04-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (6, 1, N'Arcu', N'ppt', 164864, CAST(N'2020-10-29' AS Date), CAST(N'2021-02-02' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (7, 14, N'QuisJustoMaecenas', N'tiff', 45056, CAST(N'2021-04-10' AS Date), CAST(N'2021-07-08' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (8, 4, N'Tellus', N'tiff', 420864, CAST(N'2020-08-01' AS Date), CAST(N'2020-08-05' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (9, 7, N'PhasellusId', N'mpeg', 382976, CAST(N'2020-06-19' AS Date), CAST(N'2020-07-01' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (10, 7, N'MagnaBibendum', N'mp3', 500736, CAST(N'2020-12-12' AS Date), CAST(N'2021-01-09' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (11, 18, N'Metus', N'avi', 301056, CAST(N'2021-01-21' AS Date), CAST(N'2021-03-20' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (12, 9, N'FelisSed', N'ppt', 267264, CAST(N'2021-03-30' AS Date), CAST(N'2021-05-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (13, 17, N'Eget', N'avi', 56320, CAST(N'2021-04-18' AS Date), CAST(N'2021-07-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (14, 15, N'IpsumPrimisIn', N'jpeg', 489472, CAST(N'2020-07-02' AS Date), CAST(N'2020-08-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (15, 1, N'TinciduntLacus', N'doc', 97280, CAST(N'2021-02-08' AS Date), CAST(N'2021-04-13' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (16, 3, N'OrnareImperdiet', N'mp3', 149504, CAST(N'2021-02-25' AS Date), CAST(N'2021-05-05' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (17, 17, N'CongueDiamId', N'xls', 183296, CAST(N'2020-03-10' AS Date), CAST(N'2020-04-06' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (18, 9, N'EuTinciduntIn', N'mp3', 285696, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-07' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (19, 8, N'JustoIn', N'avi', 35840, CAST(N'2020-01-15' AS Date), CAST(N'2020-03-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (20, 3, N'Felis', N'avi', 187392, CAST(N'2020-10-20' AS Date), CAST(N'2020-11-29' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (21, 20, N'LectusVestibulumQuam', N'mp3', 339968, CAST(N'2021-05-26' AS Date), CAST(N'2021-08-07' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (22, 13, N'LigulaVehiculaConsequat', N'xls', 25600, CAST(N'2020-01-27' AS Date), CAST(N'2020-02-24' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (23, 16, N'ConsequatMetusSapien', N'xls', 258048, CAST(N'2020-11-30' AS Date), CAST(N'2020-12-20' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (24, 1, N'LectusAliquamSit', N'xls', 117760, CAST(N'2020-04-17' AS Date), CAST(N'2020-06-13' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (25, 15, N'Erat', N'txt', 18432, CAST(N'2020-07-24' AS Date), CAST(N'2020-08-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (26, 14, N'VestibulumQuamSapien', N'xls', 261120, CAST(N'2020-12-26' AS Date), CAST(N'2020-12-30' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (27, 20, N'NuncPurus', N'mp3', 287744, CAST(N'2021-04-08' AS Date), CAST(N'2021-05-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (28, 18, N'SemperPorta', N'pdf', 116736, CAST(N'2021-01-29' AS Date), CAST(N'2021-02-12' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (29, 15, N'QuamSuspendissePotenti', N'txt', 429056, CAST(N'2020-03-30' AS Date), CAST(N'2020-05-25' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (30, 5, N'In', N'mpeg', 440320, CAST(N'2021-03-14' AS Date), CAST(N'2021-03-14' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (31, 12, N'JustoEu', N'tiff', 320512, CAST(N'2021-03-30' AS Date), CAST(N'2021-04-14' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (32, 5, N'SapienInSapien', N'mp3', 39936, CAST(N'2021-02-04' AS Date), CAST(N'2021-02-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (33, 15, N'PraesentId', N'mov', 288768, CAST(N'2020-12-20' AS Date), CAST(N'2021-01-02' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (34, 12, N'Est', N'jpeg', 409600, CAST(N'2020-10-12' AS Date), CAST(N'2021-01-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (35, 17, N'MaurisNon', N'pdf', 35840, CAST(N'2020-08-14' AS Date), CAST(N'2020-10-30' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (36, 7, N'Ipsum', N'tiff', 495616, CAST(N'2020-02-12' AS Date), CAST(N'2020-04-28' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (37, 8, N'TellusNisi', N'xls', 268288, CAST(N'2021-03-01' AS Date), CAST(N'2021-04-26' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (38, 4, N'RutrumAtLorem', N'xls', 35840, CAST(N'2020-02-20' AS Date), CAST(N'2020-04-10' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (39, 14, N'Vestibulum', N'xls', 61440, CAST(N'2021-03-10' AS Date), CAST(N'2021-06-03' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (40, 11, N'DonecDapibus', N'tiff', 364544, CAST(N'2020-01-04' AS Date), CAST(N'2020-04-04' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (41, 12, N'Porttitor', N'avi', 315392, CAST(N'2020-02-04' AS Date), CAST(N'2020-03-26' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (42, 12, N'Id', N'xls', 358400, CAST(N'2020-12-04' AS Date), CAST(N'2021-01-21' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (43, 11, N'LectusSuspendissePotenti', N'xls', 205824, CAST(N'2020-03-11' AS Date), CAST(N'2020-06-15' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (44, 9, N'VivamusVelNulla', N'xls', 146432, CAST(N'2020-06-13' AS Date), CAST(N'2020-06-13' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (45, 17, N'SuspendissePotentiIn', N'ppt', 224256, CAST(N'2020-10-24' AS Date), CAST(N'2021-01-19' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (46, 6, N'EuNibhQuisque', N'mp3', 135168, CAST(N'2020-10-06' AS Date), CAST(N'2020-12-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (47, 14, N'In', N'pdf', 456704, CAST(N'2020-06-23' AS Date), CAST(N'2020-08-02' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (48, 14, N'EuismodScelerisque', N'mpeg', 262144, CAST(N'2020-08-24' AS Date), CAST(N'2020-09-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (49, 17, N'JustoPellentesque', N'doc', 209920, CAST(N'2021-04-12' AS Date), CAST(N'2021-06-09' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (50, 7, N'DonecDapibusDuis', N'txt', 310272, CAST(N'2021-01-20' AS Date), CAST(N'2021-04-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (51, 2, N'Volutpat', N'mp3', 166912, CAST(N'2021-02-09' AS Date), CAST(N'2021-03-31' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (52, 2, N'InCongue', N'gif', 429056, CAST(N'2021-04-23' AS Date), CAST(N'2021-07-01' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (53, 2, N'Luctus', N'gif', 285696, CAST(N'2020-12-06' AS Date), CAST(N'2021-03-10' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (54, 16, N'NonPretiumQuis', N'ppt', 92160, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-20' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (55, 19, N'PurusEuMagna', N'mpeg', 439296, CAST(N'2020-02-15' AS Date), CAST(N'2020-05-22' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (56, 5, N'TortorRisus', N'gif', 355328, CAST(N'2021-03-08' AS Date), CAST(N'2021-04-03' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (57, 9, N'Aliquam', N'mp3', 141312, CAST(N'2021-02-21' AS Date), CAST(N'2021-03-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (58, 7, N'Suspendisse', N'mp3', 136192, CAST(N'2020-02-07' AS Date), CAST(N'2020-02-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (59, 3, N'AmetSem', N'avi', 148480, CAST(N'2021-04-08' AS Date), CAST(N'2021-04-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (60, 5, N'RidiculusMus', N'gif', 359424, CAST(N'2021-03-08' AS Date), CAST(N'2021-05-31' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (61, 3, N'OrciEgetOrci', N'xls', 351232, CAST(N'2020-07-13' AS Date), CAST(N'2020-07-13' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (62, 1, N'FaucibusAccumsan', N'mov', 66560, CAST(N'2020-01-18' AS Date), CAST(N'2020-03-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (63, 11, N'ImperdietEtCommodo', N'xls', 220160, CAST(N'2021-04-27' AS Date), CAST(N'2021-08-05' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (64, 6, N'ArcuSedAugue', N'xls', 434176, CAST(N'2020-11-14' AS Date), CAST(N'2020-12-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (65, 19, N'RhoncusSed', N'jpeg', 219136, CAST(N'2020-01-31' AS Date), CAST(N'2020-01-31' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (66, 12, N'VenenatisNon', N'xls', 451584, CAST(N'2020-08-13' AS Date), CAST(N'2020-08-17' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (67, 13, N'Lacus', N'mov', 384000, CAST(N'2021-04-05' AS Date), CAST(N'2021-04-25' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (68, 18, N'LiberoUt', N'jpeg', 6144, CAST(N'2020-02-14' AS Date), CAST(N'2020-03-13' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (69, 15, N'IntegerTinciduntAnte', N'doc', 434176, CAST(N'2020-05-20' AS Date), CAST(N'2020-08-04' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (70, 13, N'OdioDonec', N'mp3', 144384, CAST(N'2020-12-31' AS Date), CAST(N'2021-01-07' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (71, 4, N'SitAmetEleifend', N'ppt', 434176, CAST(N'2020-12-05' AS Date), CAST(N'2021-03-02' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (72, 16, N'CrasInPurus', N'tiff', 118784, CAST(N'2021-02-11' AS Date), CAST(N'2021-05-12' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (73, 16, N'VivamusMetusArcu', N'avi', 342016, CAST(N'2020-12-26' AS Date), CAST(N'2021-01-08' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (74, 12, N'Eros', N'xls', 136192, CAST(N'2020-10-07' AS Date), CAST(N'2020-10-07' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (75, 18, N'Proin', N'tiff', 433152, CAST(N'2020-02-06' AS Date), CAST(N'2020-02-27' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (76, 3, N'Enim', N'jpeg', 480256, CAST(N'2020-09-21' AS Date), CAST(N'2020-12-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (77, 15, N'Morbi', N'xls', 306176, CAST(N'2020-06-29' AS Date), CAST(N'2020-08-15' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (78, 11, N'AtTurpisDonec', N'png', 50176, CAST(N'2020-09-23' AS Date), CAST(N'2020-09-23' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (79, 15, N'Interdum', N'jpeg', 369664, CAST(N'2020-09-20' AS Date), CAST(N'2020-10-17' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (80, 8, N'SapienCursus', N'avi', 58368, CAST(N'2020-05-27' AS Date), CAST(N'2020-07-15' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (81, 1, N'RisusDapibusAugue', N'tiff', 52224, CAST(N'2020-06-19' AS Date), CAST(N'2020-08-03' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (82, 5, N'SociisNatoque', N'mp3', 437248, CAST(N'2020-05-13' AS Date), CAST(N'2020-07-14' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (83, 16, N'PorttitorId', N'xls', 316416, CAST(N'2021-04-11' AS Date), CAST(N'2021-05-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (84, 8, N'JustoEuMassa', N'ppt', 317440, CAST(N'2020-04-18' AS Date), CAST(N'2020-04-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (85, 12, N'VelEnim', N'gif', 361472, CAST(N'2020-02-02' AS Date), CAST(N'2020-05-05' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (86, 18, N'LuctusEtUltrices', N'xls', 319488, CAST(N'2020-06-07' AS Date), CAST(N'2020-08-11' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (87, 18, N'NamNullaInteger', N'gif', 129024, CAST(N'2020-04-18' AS Date), CAST(N'2020-06-18' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (88, 11, N'PlaceratPraesent', N'mov', 207872, CAST(N'2020-06-18' AS Date), CAST(N'2020-07-11' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (89, 6, N'JustoNec', N'avi', 145408, CAST(N'2020-10-03' AS Date), CAST(N'2020-11-19' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (90, 16, N'Sem', N'avi', 129024, CAST(N'2020-06-03' AS Date), CAST(N'2020-06-16' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (91, 14, N'SedNisl', N'xls', 318464, CAST(N'2020-09-09' AS Date), CAST(N'2020-09-19' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (92, 12, N'Duis', N'mpeg', 480256, CAST(N'2020-05-30' AS Date), CAST(N'2020-06-02' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (93, 15, N'IaculisJustoIn', N'tiff', 311296, CAST(N'2020-01-11' AS Date), CAST(N'2020-02-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (94, 1, N'Semper', N'avi', 300032, CAST(N'2021-02-28' AS Date), CAST(N'2021-03-09' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (95, 6, N'Justo', N'pdf', 128000, CAST(N'2020-09-19' AS Date), CAST(N'2020-11-13' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (96, 17, N'Hac', N'avi', 108544, CAST(N'2020-06-30' AS Date), CAST(N'2020-08-06' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (97, 7, N'TempusVelPede', N'avi', 509952, CAST(N'2021-03-16' AS Date), CAST(N'2021-04-24' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (98, 9, N'ElitSodalesScelerisque', N'mp3', 256000, CAST(N'2020-06-21' AS Date), CAST(N'2020-08-09' AS Date), 1)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (99, 13, N'Mauris', N'ppt', 203776, CAST(N'2020-07-31' AS Date), CAST(N'2020-08-16' AS Date), 0)
GO
INSERT [dbo].[Archivos] ([ID], [IDUsuario], [Nombre], [Extension], [Tamaño], [Creacion], [Modificacion], [Estado]) VALUES (100, 20, N'SuscipitAFeugiat', N'mp3', 322560, CAST(N'2020-10-25' AS Date), CAST(N'2020-11-17' AS Date), 1)
GO
SET IDENTITY_INSERT [dbo].[Archivos] OFF
