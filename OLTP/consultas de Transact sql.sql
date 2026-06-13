/* Mostrar todos los proyectos */
SELECT *
FROM PROYECTO;

/* Mostrar todas las unidades disponibles */
SELECT *
FROM UNIDADES
WHERE estado_disponibilidad = 'Disponible';

/* Mostrar todas las unidades vendidas */
SELECT *
FROM UNIDADES
WHERE estado_disponibilidad = 'Vendido';

/* Mostrar los clientes de Lima */
SELECT *
FROM CLIENTE
WHERE provincia = 'Lima';

/* Mostrar las ventas realizadas */
SELECT *
FROM VENTA
WHERE estado_venta = 'Vigente';

/* Mostrar las unidades ordenadas por precio de lista */
SELECT codigo_unidad,
       tipo_inmueble,
       precio_lista
FROM UNIDADES
ORDER BY precio_lista DESC;

/* Mostrar los clientes con nacionalidad peruana */
SELECT *
FROM CLIENTE
WHERE nacionalidad = 'Peruana';

/* Mostrar ventas realizadas mediante crédito hipotecario */
SELECT *
FROM VENTA
WHERE forma_pago = 'Crédito hipotecario';

/* Mostrar las unidades pertenecientes a Miraflores Tower */
SELECT u.*
FROM UNIDADES u
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto
WHERE p.nombre_proyecto = 'Miraflores Tower';


/* Mostrar ventas con información del cliente */
SELECT
    v.id_venta,
    c.nombres,
    c.apellidos,
    v.precio_venta,
    v.fecha_venta
FROM VENTA v
INNER JOIN CLIENTE c
ON v.id_cliente = c.id_cliente;

/* Cantidad de unidades por proyecto */
SELECT
    p.nombre_proyecto,
    COUNT(*) AS Total_Unidades
FROM UNIDADES u
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto
GROUP BY p.nombre_proyecto;

/* Total vendido por proyecto */
SELECT
    p.nombre_proyecto,
    SUM(CASE WHEN v.moneda = 'Soles'
             THEN v.precio_venta ELSE 0 END) AS Total_Soles,
    SUM(CASE WHEN v.moneda = 'Dolares'
             THEN v.precio_venta ELSE 0 END) AS Total_Dolares
FROM VENTA v
INNER JOIN UNIDADES u
    ON v.id_unidad = u.id_unidad
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
GROUP BY p.nombre_proyecto;

/* Porcentaje de unidades vendidas por proyecto */
SELECT
    p.nombre_proyecto,
    CONCAT(
        CAST(
            ROUND(
                COUNT(CASE WHEN u.estado_disponibilidad = 'Vendido' THEN 1 END) * 100.0
                / COUNT(*),
                0
            ) AS INT
        ),
        '%'
    ) AS Porcentaje_Vendido
FROM UNIDADES u
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
GROUP BY p.nombre_proyecto;


SELECT
    p.nombre_proyecto,
    u.codigo_unidad,
    u.estado_disponibilidad,
    c.nombres + ' ' + c.apellidos AS Cliente,
    a.nombres + ' ' + a.apellidos AS Agente,
    cc.nombre_canal,
    v.precio_venta,
    v.monto_comision,
    v.fecha_venta
FROM VENTA v
INNER JOIN UNIDADES u
    ON v.id_unidad = u.id_unidad
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
INNER JOIN CLIENTE c
    ON v.id_cliente = c.id_cliente
INNER JOIN AGENTE_VENTA a
    ON v.id_agente = a.id_agente
INNER JOIN CANAL_CAPTACION cc
    ON v.id_canal = cc.id_canal
ORDER BY v.fecha_venta DESC;

SELECT DB_NAME() AS BaseActual;

SELECT id_proyecto, nombre_proyecto
FROM PROYECTO
ORDER BY id_proyecto;

SELECT
    id_unidad,
    codigo_unidad,
    id_proyecto
FROM UNIDADES
ORDER BY id_unidad;

SELECT COUNT(*) AS TotalUnidades
FROM UNIDADES;

SELECT COUNT(*) AS Totalventas
FROM VENTA;

SELECT
    p.nombre_proyecto,
    COUNT(*) AS Total_Unidades,
    STRING_AGG(u.codigo_unidad, ', ') AS Codigos_Unidades
FROM UNIDADES u
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
GROUP BY p.nombre_proyecto;

SELECT
    id_unidad,
    id_proyecto,
    codigo_unidad,
    tipo_inmueble,
    piso
FROM UNIDADES
ORDER BY id_proyecto, id_unidad;

SELECT name
FROM sys.check_constraints
WHERE parent_object_id = OBJECT_ID('UNIDADES');

ALTER TABLE UNIDADES
DROP CONSTRAINT CK__UNIDADES__piso__4F7CD00D;

UPDATE UNIDADES
SET piso = -1
WHERE tipo_inmueble = 'Estacionamiento';

UPDATE UNIDADES
SET piso = -2
WHERE tipo_inmueble = 'Deposito';

UPDATE UNIDADES
SET piso = -2
WHERE tipo_inmueble = 'Closet';

SELECT
    tipo_inmueble,
    piso,
    COUNT(*) AS cantidad
FROM UNIDADES
GROUP BY tipo_inmueble, piso
ORDER BY piso, tipo_inmueble;

/* Listar todos los departamentos disponibles con su proyecto */
SELECT
    p.nombre_proyecto,
    u.codigo_unidad,
    u.piso,
    u.area_m2,
    u.nro_habitaciones,
    u.precio_lista,
    u.moneda
FROM UNIDADES u
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
WHERE u.tipo_inmueble = 'Departamento'
AND u.estado_disponibilidad = 'Disponible'
ORDER BY p.nombre_proyecto, u.precio_lista;

/* Mostrar la unidad más cara vendida por cada proyecto */
WITH Ventas_Proyecto AS
(
    SELECT
        p.nombre_proyecto,
        u.codigo_unidad,
        v.precio_venta,
        ROW_NUMBER() OVER
        (
            PARTITION BY p.nombre_proyecto 
            ORDER BY v.precio_venta DESC
        ) AS Posicion
    FROM VENTA v
    INNER JOIN UNIDADES u
        ON v.id_unidad = u.id_unidad
    INNER JOIN PROYECTO p
        ON u.id_proyecto = p.id_proyecto
)
SELECT
    nombre_proyecto,
    codigo_unidad,
    precio_venta
FROM Ventas_Proyecto
WHERE Posicion = 1;


/* Mostrar las ventas ordenadas cronológicamente y asignar un número de operación */
SELECT
    ROW_NUMBER() OVER(ORDER BY fecha_venta) AS Numero_Operacion,
    id_venta,
    fecha_venta,
    precio_venta,
    forma_pago
FROM VENTA;

-- Mostrar el precio promedio de los departamentos por proyecto, solo para aquellos proyectos cuyo precio promedio sea mayor al precio promedio general de los departamentos

SELECT
    p.nombre_proyecto,
    AVG(u.precio_lista) AS Precio_Promedio
FROM UNIDADES u
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
WHERE u.tipo_inmueble = 'Departamento'
GROUP BY p.nombre_proyecto
HAVING AVG(u.precio_lista) >
(
    SELECT AVG(precio_lista)
    FROM UNIDADES
    WHERE tipo_inmueble = 'Departamento'
);