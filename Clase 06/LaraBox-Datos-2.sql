Use Larabox
go 
set dateformat 'DMY'
INSERT INTO Larabox.dbo.FormasPago (Nombre) VALUES
	 (N'Efectivo'),
	 (N'Cheque'),
	 (N'Tarjeta de Débito'),
	 (N'Tarjeta de Crédito'),
	 (N'Billetera electrónica');
go
INSERT INTO Larabox.dbo.TiposCuenta (Nombre,Cuota,Costo) VALUES
	 (N'Free',500,0.0000),
	 (N'Bronce',1000,100.0000),
	 (N'Plata',2500,200.0000),
	 (N'Oro',7500,500.0000),
	 (N'Diamante',20000,1000.0000);    
go
SET IDENTITY_INSERT [dbo].[Suscripciones] ON 
    insert into Suscripciones (ID,IDUsuario,IDTipoCuenta,Inicio,Fin)
    VALUES  (1,1,1,'10/01/2018','12/05/2018'),
            (2,1,2,'12/05/2018','06/06/2021'),
            (3,1,3,'06/06/2021',NULL),
            (4,2,1,'09/10/2020','03/05/2021'),
            (5,2,4,'03/05/2021',NULL),
            (6,3,1,'06/04/2021',NULL),
            (7,4,1,'06/06/2021',NULL),
            (8,5,1,'04/08/2020',NULL),
            (9,6,1,'03/03/2019','05/05/2019'),
            (10,6,2,'05/05/2019','10/10/2019'),
            (11,6,3,'10/10/2019','07/07/2021'),
            (12,6,4,'07/07/2021',NULL),
            (13,7,1,'09/09/2020','10/10/2020'),
            (14,7,3,'10/10/2020','06/04/2021'),
            (15,7,5,'06/04/2021',NULL),
            (16,8,1,'01/01/2019',NULL),
            (17,9,1,'02/01/2020',NULL),
            (18,10,1,'03/01/2019',NULL),
            (19,11,1,'04/01/2021',NULL),
            (20,12,1,'05/01/2019',NULL),
            (21,13,1,'06/01/2019',NULL),
            (22,14,1,'07/01/2018',NULL),
            (23,15,1,'08/01/2019',NULL),
            (24,16,1,'09/01/2019',NULL),
            (25,17,1,'10/01/2020',NULL),
            (26,18,1,'11/01/2019',NULL),
            (27,19,1,'12/01/2017',NULL),
            (28,20,1,'13/01/2019',NULL)
SET IDENTITY_INSERT [dbo].[Suscripciones] OFF
go
SET IDENTITY_INSERT [dbo].[Pagos] ON
    Insert Into Pagos(ID, IDSuscripcion, IDFormaPago, Fecha, Mes, Año, Importe)
    Values  (1,2,5,'05/08/2018',8,2018,50), 
            (2,2,4,'04/09/2018',9,2018,50), 
            (3,2,4,'04/10/2018',10,2018,50), 
            (4,2,2,'03/11/2018',11,2018,50), 
            (5,2,4,'03/12/2018',12,2018,50), 
            (6,2,3,'02/01/2019',1,2019,50), 
            (7,2,5,'01/02/2019',2,2019,50), 
            (8,2,5,'03/03/2019',3,2019,50), 
            (9,2,4,'02/04/2019',4,2019,50), 
            (10,2,2,'02/05/2019',5,2019,50), 
            (11,2,5,'01/06/2019',6,2019,50), 
            (12,2,3,'01/07/2019',7,2019,55), 
            (13,2,3,'31/07/2019',7,2019,55), 
            (14,2,4,'30/08/2019',8,2019,55), 
            (15,2,2,'29/09/2019',9,2019,55), 
            (16,2,4,'29/10/2019',10,2019,55), 
            (17,2,2,'28/11/2019',11,2019,55), 
            (18,2,3,'28/12/2019',12,2019,55), 
            (19,2,2,'27/01/2020',1,2020,75), 
            (20,2,1,'26/02/2020',2,2020,75), 
            (21,2,4,'27/03/2020',3,2020,75), 
            (22,2,1,'26/04/2020',4,2020,75), 
            (23,2,2,'26/05/2020',5,2020,75), 
            (24,2,5,'25/06/2020',6,2020,75), 
            (25,2,4,'25/07/2020',7,2020,75), 
            (26,2,3,'24/08/2020',8,2020,90), 
            (27,2,2,'23/09/2020',9,2020,90), 
            (28,2,4,'23/10/2020',10,2020,90), 
            (29,2,1,'22/11/2020',11,2020,90), 
            (30,2,3,'22/12/2020',12,2020,90), 
            (31,2,4,'21/01/2021',1,2021,100), 
            (32,2,2,'20/02/2021',2,2021,100), 
            (33,2,3,'22/03/2021',3,2021,100), 
            (34,2,4,'21/04/2021',4,2021,100), 
            (35,2,4,'21/05/2021',5,2021,100), 
            (36,3,4,'20/06/2021',6,2021,200), 
            (37,5,3,'05/04/2021',4,2021,500), 
            (38,5,3,'05/05/2021',5,2021,500), 
            (39,5,4,'04/06/2021',6,2021,500), 
            (40,5,1,'04/07/2021',7,2021,500), 
            (41,10,4,'05/10/2019',5,2019,100), 
            (42,10,5,'05/10/2019',6,2019,100), 
            (43,10,3,'05/10/2019',7,2019,100), 
            (44,10,3,'05/10/2019',8,2019,100), 
            (45,10,5,'05/10/2019',9,2019,100), 
            (46,10,2,'05/10/2019',10,2019,100), 
            (47,10,1,'05/10/2019',11,2019,100), 
            (48,10,5,'05/10/2019',12,2019,100), 
            (49,10,2,'05/10/2019',1,2020,100), 
            (50,10,2,'05/10/2019',2,2020,100), 
            (51,10,2,'05/10/2019',3,2020,100), 
            (52,10,3,'05/10/2019',4,2020,100), 
            (53,10,4,'05/10/2019',5,2020,100), 
            (54,11,1,'10/11/2019',11,2019,200), 
            (55,11,4,'10/11/2019',12,2019,200), 
            (56,11,3,'10/11/2019',1,2020,200), 
            (57,11,3,'10/11/2019',2,2020,200), 
            (58,11,3,'10/11/2019',3,2020,200), 
            (59,11,3,'10/11/2019',4,2020,200), 
            (60,11,3,'10/11/2019',5,2020,200), 
            (61,11,2,'10/11/2019',6,2020,200), 
            (62,11,3,'10/11/2019',7,2020,200), 
            (63,11,2,'10/11/2019',8,2020,200), 
            (64,11,4,'10/11/2019',9,2020,200), 
            (65,11,3,'10/11/2019',10,2020,200), 
            (66,11,5,'10/11/2019',11,2020,200), 
            (67,11,2,'10/11/2019',12,2020,200), 
            (68,11,2,'10/11/2019',1,2021,200), 
            (69,11,5,'10/11/2019',2,2021,200), 
            (70,11,2,'10/11/2019',3,2021,200), 
            (71,11,4,'10/11/2019',4,2021,200), 
            (72,11,5,'10/11/2019',5,2021,200), 
            (73,11,1,'10/11/2019',6,2021,200), 
            (74,12,4,'10/07/2021',7,2021,500), 
            (75,14,2,'10/10/2020',10,2020,200), 
            (76,14,1,'09/11/2020',11,2020,200), 
            (77,14,2,'09/12/2020',12,2020,200), 
            (78,14,5,'08/01/2021',1,2021,200), 
            (79,14,2,'07/02/2021',2,2021,200), 
            (80,14,5,'09/03/2021',3,2021,200), 
            (81,14,2,'08/04/2021',4,2021,200), 
            (82,15,2,'10/05/2021',5,2021,1000), 
            (83,15,3,'09/06/2021',6,2021,1000), 
            (84,15,5,'09/07/2021',7,2021,1000), 
            (85,15,5,'08/08/2021',8,2021,1000), 
            (86,15,2,'07/09/2021',9,2021,1000)
SET IDENTITY_INSERT [dbo].[Pagos] OFF

