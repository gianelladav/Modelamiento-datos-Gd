/* Vista que muestra todas las unidades con información del proyecto */

CREATE VIEW VW_INVENTARIO_GENERAL
AS
SELECT
    p.nombre_proyecto,
    u.codigo_unidad,
    u.tipo_inmueble,
    u.tipologia,
    u.piso,
    u.area_m2,
    u.precio_lista,
    u.moneda,
    u.estado_disponibilidad
FROM UNIDADES u
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto;

/* Vista que muestra el detalle de cada operación comercial */

CREATE VIEW VW_VENTAS_DETALLADAS
AS
SELECT
    v.id_venta,
    p.nombre_proyecto,
    u.codigo_unidad,
    c.nombres + ' ' + c.apellidos AS Cliente,
    a.nombres + ' ' + a.apellidos AS Agente,
    ca.nombre_canal AS Canal,
    v.fecha_venta,
    v.precio_venta,
    v.forma_pago,
    v.monto_comision,
    v.monto_separacion
FROM VENTA v
INNER JOIN UNIDADES u
ON v.id_unidad = u.id_unidad
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto
INNER JOIN CLIENTE c
ON v.id_cliente = c.id_cliente
INNER JOIN AGENTE_VENTA a
ON v.id_agente = a.id_agente
INNER JOIN CANAL_CAPTACION ca
ON v.id_canal = ca.id_canal;

/* Vista que muestra el desempeño comercial de cada agente */

CREATE VIEW VW_RENDIMIENTO_AGENTES
AS
SELECT
    a.id_agente,
    a.nombres + ' ' + a.apellidos AS Agente,
    COUNT(v.id_venta) AS Cantidad_Ventas,
    SUM(v.precio_venta) AS Monto_Vendido,
    SUM(v.monto_comision) AS Comision_Generada
FROM AGENTE_VENTA a
INNER JOIN VENTA v
ON a.id_agente = v.id_agente
GROUP BY
a.id_agente,
a.nombres,
a.apellidos;

/* Vista de unidades disponibles, separadas y vendidas por proyecto */

CREATE VIEW VW_ESTADO_COMERCIAL_PROYECTOS
AS
SELECT
    p.nombre_proyecto,
    u.estado_disponibilidad,
    COUNT(*) AS Cantidad
FROM UNIDADES u
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto
GROUP BY
p.nombre_proyecto,
u.estado_disponibilidad;

-- procedimientos

/* Busca la información de un cliente */

CREATE PROCEDURE SP_BUSCAR_CLIENTE
@id_cliente INT
AS
BEGIN

SELECT *
FROM CLIENTE
WHERE id_cliente = @id_cliente;

END;

EXEC SP_BUSCAR_CLIENTE 1;

/* Obtiene las ventas de un proyecto específico */

CREATE PROCEDURE SP_VENTAS_POR_PROYECTO
@nombre_proyecto VARCHAR(100)
AS
BEGIN

SELECT
    p.nombre_proyecto,
    u.codigo_unidad,
    v.precio_venta,
    v.fecha_venta
FROM VENTA v
INNER JOIN UNIDADES u
ON v.id_unidad = u.id_unidad
INNER JOIN PROYECTO p
ON u.id_proyecto = p.id_proyecto
WHERE p.nombre_proyecto = @nombre_proyecto;

END;

EXEC SP_VENTAS_POR_PROYECTO 'Miraflores Tower';

/* Cambia el estado de disponibilidad de una unidad */

CREATE PROCEDURE SP_ACTUALIZAR_ESTADO_UNIDAD
@id_unidad INT,
@nuevo_estado VARCHAR(20)
AS
BEGIN

UPDATE UNIDADES
SET estado_disponibilidad = @nuevo_estado
WHERE id_unidad = @id_unidad;

END;

SELECT dbo.FN_TOTAL_VENDIDO_PROYECTO(1) AS Total_Vendido;

/* Devuelve la cantidad de departamentos vendidos */

CREATE FUNCTION FN_DEPARTAMENTOS_VENDIDOS
(@id_proyecto INT)
RETURNS INT
AS
BEGIN

DECLARE @cantidad INT;

SELECT
@cantidad = COUNT(*)
FROM UNIDADES
WHERE id_proyecto = @id_proyecto
AND tipo_inmueble = 'Departamento'
AND estado_disponibilidad = 'Vendido';

RETURN @cantidad;

END;

SELECT dbo.FN_DEPARTAMENTOS_VENDIDOS(1) AS Departamentos_Vendidos;

/* Calcula el porcentaje de departamentos vendidos y separados */

CREATE FUNCTION FN_ABSORCION_PROYECTO
(@id_proyecto INT)
RETURNS DECIMAL(5,2)
AS
BEGIN

DECLARE @porcentaje DECIMAL(5,2);

SELECT
@porcentaje =
(
COUNT(CASE 
    WHEN estado_disponibilidad IN ('Vendido','Separado')
    THEN 1 END) * 100.0
)
/
COUNT(*)
FROM UNIDADES
WHERE id_proyecto = @id_proyecto
AND tipo_inmueble = 'Departamento';

RETURN @porcentaje;

END;

SELECT dbo.FN_ABSORCION_PROYECTO(1) AS Porcentaje_Absorcion;

