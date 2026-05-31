CREATE DATABASE InmoPeru;
GO

USE InmoPeru;
GO

CREATE TABLE PROYECTO (
    id_proyecto INT PRIMARY KEY IDENTITY(1,1),

    nombre_proyecto VARCHAR(100) NOT NULL,

    provincia VARCHAR(50) NOT NULL,

    distrito VARCHAR(50) NOT NULL,

    direccion VARCHAR(150) NOT NULL,

    fecha_inicio DATE NOT NULL,

    fecha_entrega DATE NULL,

    estado_proyecto VARCHAR(30) NOT NULL
    CHECK (estado_proyecto IN ('En construcción', 'Terminado', 'En preventa'))
);
CREATE TABLE UNIDADES (
    id_unidad INT PRIMARY KEY IDENTITY(1,1),

    id_proyecto INT NOT NULL,

    codigo_unidad VARCHAR(20) NOT NULL UNIQUE,

    tipo_inmueble VARCHAR(30) NOT NULL
    CHECK (tipo_inmueble IN ('Departamento', 'Estacionamiento', 'Deposito', 'Closet')),

    piso INT NOT NULL
    CHECK (piso >= 0),

    tipologia VARCHAR(50) NULL,

    area_m2 DECIMAL(8,2) NOT NULL
    CHECK (area_m2 > 0),

    nro_habitaciones INT NOT NULL DEFAULT 0
    CHECK (nro_habitaciones >= 0),

    nro_baños INT NOT NULL DEFAULT 0
    CHECK (nro_baños >= 0),

    es_flat BIT NOT NULL DEFAULT 0,

    precio_lista INT NOT NULL
    CHECK (precio_lista > 0),

    moneda VARCHAR(10) NOT NULL
    CHECK (moneda IN ('Soles', 'Dolares')),

    estado_disponibilidad VARCHAR(30) NOT NULL
    CHECK (estado_disponibilidad IN ('Disponible', 'Separado', 'Vendido', 'Bloqueado')),

    FOREIGN KEY (id_proyecto)
    REFERENCES PROYECTO(id_proyecto)
);
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY IDENTITY(1,1),

    dni CHAR(8) NOT NULL UNIQUE
    CHECK (dni NOT LIKE '%[^0-9]%'),

    nombres VARCHAR(100) NOT NULL,

    apellidos VARCHAR(100) NOT NULL,

    edad INT NOT NULL
    CHECK (edad >= 18),

    nacionalidad VARCHAR(50) NOT NULL,

    provincia VARCHAR(50) NOT NULL,

    distrito_procedencia VARCHAR(50) NOT NULL,

    ocupacion VARCHAR(80) NOT NULL,

    estado_civil VARCHAR(30) NOT NULL
    CHECK (estado_civil IN ('Soltero', 'Casado', 'Divorciado', 'Viudo')),

    nro_hijos INT DEFAULT 0
    CHECK (nro_hijos >= 0),

    telefono VARCHAR(20) NOT NULL UNIQUE,

    correo VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE AGENTE_VENTA (
    id_agente INT PRIMARY KEY IDENTITY(1,1),

    nombres VARCHAR(100) NOT NULL,

    apellidos VARCHAR(100) NOT NULL,

    telefono VARCHAR(20) NOT NULL UNIQUE,

    correo VARCHAR(100) NOT NULL UNIQUE,

    porcentaje_comision DECIMAL(5,2) NOT NULL
    CHECK (porcentaje_comision >= 0 AND porcentaje_comision <= 100)
);
CREATE TABLE CANAL_CAPTACION (
    id_canal INT PRIMARY KEY IDENTITY(1,1),

    nombre_canal VARCHAR(50) NOT NULL UNIQUE
    CHECK (nombre_canal IN (
        'Facebook',
        'Instagram',
        'TikTok',
        'Pagina Web',
        'WhatsApp',
        'Referido',
        'Feria Inmobiliaria',
        'Agente Inmobiliario',
        'Llamada'
    ))
);
CREATE TABLE VENTA (
    id_venta INT PRIMARY KEY IDENTITY(1,1),

    id_unidad INT NOT NULL,

    id_cliente INT NOT NULL,

    id_agente INT NOT NULL,

    id_canal INT NOT NULL,

    fecha_venta DATE NOT NULL,

    precio_venta DECIMAL(12,2) NOT NULL
    CHECK (precio_venta > 0),

    moneda VARCHAR(10) NOT NULL
    CHECK (moneda IN ('Soles', 'Dolares')),

    estado_venta VARCHAR(30) NOT NULL
    CHECK (estado_venta IN ('Vigente', 'Anulado')),

    forma_pago VARCHAR(50) NOT NULL
    CHECK (forma_pago IN ('Contado', 'Crédito hipotecario')),

    FOREIGN KEY (id_unidad)
    REFERENCES UNIDADES(id_unidad),

    FOREIGN KEY (id_cliente)
    REFERENCES CLIENTE(id_cliente),

    FOREIGN KEY (id_agente)
    REFERENCES AGENTE_VENTA(id_agente),

    FOREIGN KEY (id_canal)
    REFERENCES CANAL_CAPTACION(id_canal)
);

ALTER TABLE VENTA
ADD monto_comision DECIMAL(12,2) NOT NULL DEFAULT 0;

