INSERT INTO CANAL_CAPTACION (nombre_canal)
VALUES
('Facebook'),
('Instagram'),
('TikTok'),
('Pagina Web'),
('Referido');

INSERT INTO AGENTE_VENTA
(nombres, apellidos, telefono, correo, porcentaje_comision)
VALUES
('Juan', 'Perez', '999111111', 'juan@inmoperu.com', 3.00),
('Maria', 'Lopez', '999111112', 'maria@inmoperu.com', 3.00),
('Carlos', 'Diaz', '999111113', 'carlos@inmoperu.com', 2.50),
('Ana', 'Torres', '999111114', 'ana@inmoperu.com', 3.50),
('Luis', 'Rojas', '999111115', 'luis@inmoperu.com', 4.00);

INSERT INTO PROYECTO
(nombre_proyecto, provincia, distrito, direccion,
fecha_inicio, fecha_entrega, estado_proyecto)
VALUES
('Miraflores Tower', 'Lima', 'Miraflores', 'Av. Larco 123',
'2025-01-01', '2026-12-01', 'En construcción'),

('San Isidro Living', 'Lima', 'San Isidro', 'Av. Javier Prado 456',
'2025-02-01', '2026-11-01', 'En preventa'),

('Barranco House', 'Lima', 'Barranco', 'Av. Grau 789',
'2025-03-01', '2026-10-01', 'En construcción'),

('Surco Garden', 'Lima', 'Santiago de Surco', 'Av. Benavides 222',
'2025-04-01', '2027-01-01', 'En preventa'),

('Magdalena Park', 'Lima', 'Magdalena', 'Av. Brasil 555',
'2025-05-01', '2027-03-01', 'En construcción');

INSERT INTO CLIENTE
(dni, nombres, apellidos, edad, nacionalidad,
provincia, distrito_procedencia, ocupacion,
estado_civil, nro_hijos, telefono, correo)
VALUES
('71234567','Pedro','Gomez',35,'Peruana','Lima','Miraflores','Ingeniero','Casado',2,'987654321','pedro@gmail.com'),

('72345678','Lucia','Fernandez',29,'Peruana','Lima','Surco','Arquitecta','Soltero',0,'987654322','lucia@gmail.com'),

('73456789','Miguel','Ruiz',41,'Peruana','Lima','San Borja','Contador','Casado',1,'987654323','miguel@gmail.com'),

('74567890','Andrea','Torres',33,'Peruana','Lima','La Molina','Abogada','Soltero',0,'987654324','andrea@gmail.com'),

('75678901','Jorge','Silva',45,'Peruana','Lima','San Isidro','Administrador','Casado',3,'987654325','jorge@gmail.com');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia, area_m2,
nro_habitaciones, nro_baños, es_flat, precio_lista, moneda, estado_disponibilidad)
VALUES

(1,'M101','Departamento',1,'Flat',75.50,2,2,1,450000,'Soles','Disponible'),
(1,'M102','Departamento',1,'Flat',82.00,3,2,1,520000,'Soles','Disponible'),
(1,'M103','Estacionamiento',0,NULL,12.50,0,0,0,45000,'Soles','Disponible'),
(1,'M104','Deposito',0,NULL,6.00,0,0,0,15000,'Soles','Disponible'),

(2,'S201','Departamento',2,'Flat',68.00,2,2,1,420000,'Soles','Disponible'),
(2,'S202','Departamento',2,'Flat',95.00,3,2,1,650000,'Soles','Disponible'),
(2,'S203','Closet',2,NULL,4.00,0,0,0,8000,'Soles','Disponible'),
(2,'S204','Estacionamiento',0,NULL,12.50,0,0,0,50000,'Soles','Disponible'),

(3,'B301','Departamento',3,'Flat',70.00,2,2,1,480000,'Soles','Disponible'),
(3,'B302','Departamento',3,'Duplex',120.00,4,3,0,850000,'Soles','Disponible'),
(3,'B303','Deposito',0,NULL,5.50,0,0,0,18000,'Soles','Disponible'),
(3,'B304','Estacionamiento',0,NULL,13.00,0,0,0,48000,'Soles','Disponible'),

(4,'SG401','Departamento',4,'Flat',88.00,3,2,1,590000,'Soles','Disponible'),
(4,'SG402','Departamento',4,'Flat',92.00,3,2,1,620000,'Soles','Disponible'),
(4,'SG403','Closet',4,NULL,3.50,0,0,0,7000,'Soles','Disponible'),
(4,'SG404','Estacionamiento',0,NULL,12.50,0,0,0,47000,'Soles','Disponible'),

(5,'MP501','Departamento',5,'Flat',78.00,2,2,1,510000,'Soles','Disponible'),
(5,'MP502','Departamento',5,'Duplex',135.00,4,3,0,980000,'Soles','Disponible'),
(5,'MP503','Deposito',0,NULL,7.00,0,0,0,22000,'Soles','Disponible'),
(5,'MP504','Estacionamiento',0,NULL,13.50,0,0,0,52000,'Soles','Disponible');

INSERT INTO VENTA
(id_unidad, id_cliente, id_agente, id_canal,
fecha_venta, precio_venta, moneda,
estado_venta, forma_pago, monto_comision)
VALUES

(1,1,1,1,'2026-01-10',445000.00,'Soles','Vigente','Crédito hipotecario',13350.00),
(2,2,2,2,'2026-01-15',515000.00,'Soles','Vigente','Contado',15450.00),
(3,3,3,3,'2026-01-20',45000.00,'Soles','Vigente','Contado',1125.00),
(4,4,4,4,'2026-01-22',15000.00,'Soles','Vigente','Contado',525.00),

(5,5,5,5,'2026-02-01',415000.00,'Soles','Vigente','Crédito hipotecario',16600.00),
(6,1,1,2,'2026-02-05',640000.00,'Soles','Vigente','Contado',19200.00),
(7,2,2,3,'2026-02-10',8000.00,'Soles','Vigente','Contado',240.00),
(8,3,3,4,'2026-02-12',50000.00,'Soles','Vigente','Contado',1250.00),

(9,4,4,5,'2026-02-18',475000.00,'Soles','Vigente','Crédito hipotecario',16625.00),
(10,5,5,1,'2026-02-22',840000.00,'Soles','Vigente','Contado',33600.00),
(11,1,1,2,'2026-03-01',18000.00,'Soles','Vigente','Contado',540.00),
(12,2,2,3,'2026-03-05',47000.00,'Soles','Vigente','Contado',1410.00),

(13,3,3,4,'2026-03-10',585000.00,'Soles','Vigente','Crédito hipotecario',14625.00),
(14,4,4,5,'2026-03-15',615000.00,'Soles','Vigente','Crédito hipotecario',21525.00),
(15,5,5,1,'2026-03-18',7000.00,'Soles','Vigente','Contado',280.00),
(16,1,1,2,'2026-03-20',47000.00,'Soles','Vigente','Contado',1410.00),

(17,2,2,3,'2026-04-01',505000.00,'Soles','Vigente','Crédito hipotecario',15150.00),
(18,3,3,4,'2026-04-05',960000.00,'Soles','Vigente','Contado',24000.00),
(19,4,4,5,'2026-04-10',22000.00,'Soles','Vigente','Contado',770.00),
(20,5,5,1,'2026-04-15',52000.00,'Soles','Vigente','Contado',2080.00);

SELECT
    v.id_venta,
    p.nombre_proyecto,
    u.codigo_unidad,
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
    ON v.id_canal = cc.id_canal;