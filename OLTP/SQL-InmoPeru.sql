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