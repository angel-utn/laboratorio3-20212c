-- Actividad 2.3
-- Ej: 10
SELECT FP.Nombre, avg(P.Importe) AS Promedio 
FROM Pagos P
INNER JOIN FormasPago FP
	ON P.IDFormaPago = FP.ID
GROUP BY FP.Nombre

-- Ej: 16
SELECT U.Nombreusuario, DP.Nombres, DP.Apellidos, A.Extension, COUNT(A.ID) AS Cantidad
FROM Archivos A
INNER JOIN Usuarios U
	ON A.IDUsuario = U.ID
INNER JOIN DatosPersonales DP
	ON U.ID = DP.ID
GROUP BY U.Nombreusuario, DP.Nombres, DP.Apellidos, A.Extension
HAVING COUNT(A.ID) > 2

-- Ej: 17
SELECT DP.ID, DP.Apellidos, DP.Nombres
FROM Archivos A
INNER JOIN DatosPersonales DP
	ON A.IDUsuario = DP.ID
-- Agrego el ID por si aparecen nombres repetidos pero de distintos usuarios
GROUP BY DP.ID, DP.Apellidos, DP.Nombres
HAVING COUNT(DISTINCT A.Extension) > 5

-- Ej: 18
SELECT DP.ID, DP.Apellidos, DP.Nombres, SUM(A.Tamaño) AS TOTAL
FROM Archivos A
INNER JOIN DatosPersonales DP
	ON A.IDUsuario = DP.ID
WHERE A.Estado = 0
-- AGREGO EL ID POR SI HAY DOS USUARIOS CON EL MISMO NOMBRE
GROUP BY DP.ID, DP.Apellidos, DP.Nombres

-- Ej: 19
SELECT U.Nombreusuario, MAX(DATEDIFF(DAY, S.Inicio, ISNULL(S.Fin, GETDATE()))) AS Dias
FROM Suscripciones S
INNER JOIN Usuarios U
	ON S.IDUsuario = U.ID
GROUP BY U.Nombreusuario