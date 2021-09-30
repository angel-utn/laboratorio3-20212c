-- Actividad 2.4

-- Ej: 4
SELECT DP.Apellidos, DP.Nombres, DP.Email, DP.Telefono, DP.Celular
FROM DatosPersonales DP
LEFT JOIN Archivos A
	ON DP.ID = A.IDUsuario
WHERE A.ID IS NULL

-- Ej: 6
SELECT FP.Nombre
FROM FormasPago FP
WHERE FP.ID NOT IN (
	SELECT DISTINCT P.IDFormaPago
	FROM Pagos P
	WHERE P.Año = 2019 AND P.Mes = 12
)

-- Ej: 8
SELECT A.Nombre
FROM Archivos A
WHERE YEAR(A.Creacion) = 2021
AND A.Tamaño < (SELECT MAX(AR.Tamaño) FROM Archivos AR WHERE AR.Extension = 'DOC' )

-- Ej: 10
SELECT DP.Apellidos, DP.Nombres, U.Nombreusuario,
(
	SELECT COUNT(A.ID) 
	FROM Archivos A
	WHERE A.IDUsuario = U.ID AND A.Extension = 'avi'
) AS AVI,
(
	SELECT COUNT(A.ID) 
	FROM Archivos A
	WHERE A.IDUsuario = U.ID AND A.Extension = 'xls'
) AS XLS
FROM Usuarios U
INNER JOIN DatosPersonales DP
	ON U.ID = DP.ID

-- Ej: 16
SELECT COUNT(U.ID) AS Cantida
FROM Usuarios U
WHERE 
(
	SELECT COUNT(A.ID) 
	FROM Archivos A
	WHERE A.IDUsuario = U.ID AND A.Extension = 'AVI'
)
>
(
	SELECT COUNT(A.ID) 
	FROM Archivos A
	WHERE A.IDUsuario = U.ID AND A.Extension = 'XLS'
) * 2 
