--Modelo de datos dimensional para InmoPeru

CREATE TABLE DIM_PROYECTO (
    id_proyecto INT PRIMARY KEY,
    nombre_proyecto VARCHAR(100)
);

CREATE TABLE DIM_CLIENTE (
    id_cliente INT PRIMARY KEY,
    nombres VARCHAR(100),
    apellidos VARCHAR(100)
);

CREATE TABLE DIM_AGENTE (
    id_agente INT PRIMARY KEY,
    nombres VARCHAR(100),
    apellidos VARCHAR(100)
);

CREATE TABLE DIM_CANAL (
    id_canal INT PRIMARY KEY,
    nombre_canal VARCHAR(50)
);

CREATE TABLE DIM_UNIDAD (
    id_unidad INT PRIMARY KEY,
    codigo_unidad VARCHAR(20),
    tipo_inmueble VARCHAR(30),
    tipologia VARCHAR(30),
    piso INT,
    area_m2 DECIMAL(10,2)
);

CREATE TABLE DIM_TIEMPO (
    id_fecha DATE PRIMARY KEY,
    año INT,
    trimestre INT,
    mes INT,
    nombre_mes VARCHAR(20)
);

-- tabla de hechos que registra las ventas realizadas, con claves foráneas a las dimensiones y medidas relevantes para el análisis comercial

CREATE TABLE FACT_VENTA (
    id_venta INT PRIMARY KEY,
    id_proyecto INT,
    id_cliente INT,
    id_agente INT,
    id_canal INT,
    id_unidad INT,
    id_fecha DATE,
    precio_venta DECIMAL(18,2),
    monto_comision DECIMAL(18,2),
    monto_separacion DECIMAL(18,2),

    FOREIGN KEY (id_proyecto) REFERENCES DIM_PROYECTO(id_proyecto),
    FOREIGN KEY (id_cliente) REFERENCES DIM_CLIENTE(id_cliente),
    FOREIGN KEY (id_agente) REFERENCES DIM_AGENTE(id_agente),
    FOREIGN KEY (id_canal) REFERENCES DIM_CANAL(id_canal),
    FOREIGN KEY (id_unidad) REFERENCES DIM_UNIDAD(id_unidad),
    FOREIGN KEY (id_fecha) REFERENCES DIM_TIEMPO(id_fecha)
);


-- Carga inicial de datos en la dimensión de proyectos desde la tabla original

INSERT INTO DIM_PROYECTO
SELECT id_proyecto, nombre_proyecto
FROM PROYECTO;

-- Carga inicial de datos en la dimensión de clientes desde la tabla original

INSERT INTO DIM_CLIENTE
SELECT id_cliente, nombres, apellidos
FROM CLIENTE;

-- Carga inicial de datos en la dimensión de agentes desde la tabla original

INSERT INTO DIM_AGENTE
SELECT id_agente, nombres, apellidos
FROM AGENTE_VENTA;

-- Carga inicial de datos en la dimensión de canales desde la tabla original

INSERT INTO DIM_CANAL
SELECT id_canal, nombre_canal
FROM CANAL_CAPTACION;

-- Carga inicial de datos en la dimensión de unidades desde la tabla original

INSERT INTO DIM_UNIDAD
SELECT 
    id_unidad,
    codigo_unidad,
    tipo_inmueble,
    tipologia,
    piso,
    area_m2
FROM UNIDADES;

-- Carga inicial de datos en la dimensión de tiempo desde la tabla original

INSERT INTO DIM_TIEMPO
SELECT DISTINCT
    fecha_venta,
    YEAR(fecha_venta),
    DATEPART(QUARTER, fecha_venta),
    MONTH(fecha_venta),
    DATENAME(MONTH, fecha_venta)
FROM VENTA;

-- Se une las ventas con las dimensiones:

INSERT INTO FACT_VENTA
SELECT
    v.id_venta,
    u.id_proyecto,
    v.id_cliente,
    v.id_agente,
    v.id_canal,
    v.id_unidad,
    v.fecha_venta,
    v.precio_venta,
    v.monto_comision,
    v.monto_separacion
FROM VENTA v
INNER JOIN UNIDADES u
    ON v.id_unidad = u.id_unidad;

SELECT COUNT(*) AS Proyectos FROM DIM_PROYECTO;
SELECT COUNT(*) AS Clientes FROM DIM_CLIENTE;
SELECT COUNT(*) AS Agentes FROM DIM_AGENTE;
SELECT COUNT(*) AS Canales FROM DIM_CANAL;
SELECT COUNT(*) AS Unidades FROM DIM_UNIDAD;
SELECT COUNT(*) AS Fechas FROM DIM_TIEMPO;
SELECT COUNT(*) AS Ventas FROM FACT_VENTA;


SELECT 
    fk.name AS Nombre_FK,
    tp.name AS Tabla_Principal,
    cp.name AS Columna_Principal,
    tr.name AS Tabla_Referenciada,
    cr.name AS Columna_Referenciada
FROM sys.foreign_keys AS fk
INNER JOIN sys.foreign_key_columns AS fkc ON fk.object_id = fkc.constraint_object_id
INNER JOIN sys.tables AS tp ON fkc.parent_object_id = tp.object_id
INNER JOIN sys.columns AS cp ON fkc.parent_object_id = cp.object_id AND fkc.parent_column_id = cp.column_id
INNER JOIN sys.tables AS tr ON fkc.referenced_object_id = tr.object_id
INNER JOIN sys.columns AS cr ON fkc.referenced_object_id = cr.object_id AND fkc.referenced_column_id = cr.column_id
ORDER BY tp.name;



CREATE VIEW vw_ModeloEstrellaInmoPeru AS
SELECT 
    f.id_venta,
    p.nombre_proyecto,
    c.nombres + ' ' + c.apellidos AS Cliente,
    a.nombres + ' ' + a.apellidos AS Agente,
    ca.nombre_canal,
    u.tipo_inmueble,
    u.tipologia,
    u.piso,
    u.area_m2,
    t.año,
    t.mes,
    t.nombre_mes,
    f.precio_venta,
    f.monto_comision,
    f.monto_separacion
FROM FACT_VENTA f
JOIN DIM_PROYECTO p ON f.id_proyecto = p.id_proyecto
JOIN DIM_CLIENTE c ON f.id_cliente = c.id_cliente
JOIN DIM_AGENTE a ON f.id_agente = a.id_agente
JOIN DIM_CANAL ca ON f.id_canal = ca.id_canal
JOIN DIM_UNIDAD u ON f.id_unidad = u.id_unidad
JOIN DIM_TIEMPO t ON f.id_fecha = t.id_fecha;

SELECT nombre_proyecto, año, SUM(precio_venta) AS TotalVentas
FROM vw_ModeloEstrellaInmoPeru
GROUP BY nombre_proyecto, año;

