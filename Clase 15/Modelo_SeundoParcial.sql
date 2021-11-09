--- PUNTO 1
CREATE TRIGGER NuevoPrestamo 
ON Prestamos 
INSTEAD OF INSERT
AS 
BEGIN 
	BEGIN TRY
		DECLARE @IDSocio BIGINT 
		DECLARE @Cantidad BIT

		SELECT @IDSocio = IDSocio FROM Inserted

		SELECT @Cantidad = COUNT(*) FROM Prestamos 
		WHERE FDevolucion IS NULL AND IDSocio = @IDSocio

		IF @Cantidad = 0 
		BEGIN
			INSERT INTO Prestamos (IDSocio, IDLibro, FPrestamo)
			SELECT IDSocio, IDLibro, FPrestamo FROM Inserted
		END 
		ELSE
		BEGIN
			RAISERROR ('El socio aun no devolvio el libro.', 16, 1)
		END
	END TRY	
	CATCH

	END CATCH
END

--- PUNTO 2
CREATE PROCEDURE PR_PrestamosOrdenados(@IDSocio BIGINT) AS
BEGIN 
	SELECT P.FPrestamo, L.Titulo FROM Libros L
	INNER JOIN  Prestamos P
		ON L.ID = P.IDLibro
	WHERE P.FDevolucion IS NOT NULL AND P.IDSocio = @IDSocio
	ORDER BY P.FPrestamo DESC
END 

--- PUNTO 3
CREATE PROCEDURE Devolver_Libro (@IDLibro BIGINT, @FDevolucion DATE) AS
BEGIN
	-- Verificar si el Libro esta prestado
	IF (SELECT COUNT(*) FROM Prestamos WHERE IDLibro = @IDLibro AND FDevolucion IS NULL) = 1
	BEGIN
		-- Obtener precio del libro
		DECLARE @Precio Money
		DECLARE @Dias INT

		SELECT @Precio = Precio FROM Libros WHERE ID = @IDLibro

		SELECT @Dias = DATEDIFF(DD, FPrestamo, @FDevolucion) FROM Prestamos 
		WHERE IDLibro = @IDLibro AND FDevolucion IS NULL
		--Calculo el costo
		IF @Dias >= 7
		BEGIN
			SET @Precio = @Precio * 0.2
		END
		ELSE 
		BEGIN
			SET @Precio = @Precio * 0.1
		END
		-- Actualizo
		UPDATE Prestamos
		SET FDevolucion = @FDevolucion, Costo = @Precio
		WHERE IDLibro = @IDLibro AND FDevolucion IS NULL

	END
	ELSE
	BEGIN
		RAISERROR('El libro no esta prestado.', 16,1)
	END

END

---- PUNTO 4
SELECT DISTINCT S.* FROM Socios S
INNER JOIN Prestamos P
	ON S.ID = P.IDSocio
INNER JOIN Libros L
	ON P.IDLibro = L.ID
WHERE L.bestseller = 1