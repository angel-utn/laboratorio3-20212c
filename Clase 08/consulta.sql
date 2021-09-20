-- 11) Listar apellidos, nombres y nombre de usuario y el total abonado en concepto de pagos en Efectivo y el total abonado en concepto de Billetera electrónica.
select 
    DAT.Apellidos, 
    DAT.Nombres, 
    U.NombreUsuario,
    (
        select isnull(sum(P.Importe), 0) from Pagos P
        inner join FormasPago FP on FP.ID = P.IDFormaPago
        inner join Suscripciones S on S.ID = P.IDSuscripcion
        where S.IDUsuario = U.ID and FP.Nombre = 'Efectivo'
    ) as TotalEfectivo,
    (
        select isnull(sum(P.Importe), 0) from Pagos P
        inner join FormasPago FP on FP.ID = P.IDFormaPago
        inner join Suscripciones S on S.ID = P.IDSuscripcion
        where S.IDUsuario = U.ID and FP.Nombre like 'Billetera electr[oó]nica'
    ) as TotalBilletera
From DatosPersonales DAT
inner join Usuarios U ON DAT.ID = U.ID

