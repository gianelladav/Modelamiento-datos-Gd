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

    SELECT COUNT(*) AS Total_Clientes FROM CLIENTE;

INSERT INTO CLIENTE
(dni,nombres,apellidos,edad,nacionalidad,
provincia,distrito_procedencia,ocupacion,
estado_civil,nro_hijos,telefono,correo)
VALUES
('76789012','Sofia','Castro',28,'Peruana','Lima','Barranco','Diseñadora','Soltero',0,'987654326','sofia@gmail.com'),
('77890123','Ricardo','Vega',38,'Peruana','Lima','Surco','Ingeniero','Casado',2,'987654327','ricardo@gmail.com'),
('78901234','Valeria','Mendoza',31,'Peruana','Lima','San Miguel','Administradora','Soltero',0,'987654328','valeria@gmail.com'),
('79012345','Diego','Salazar',42,'Peruana','Lima','La Molina','Arquitecto','Casado',1,'987654329','diego@gmail.com'),
('70123456','Camila','Navarro',27,'Peruana','Lima','Magdalena','Marketing','Soltero',0,'987654330','camila@gmail.com');

select * from CLIENTE;
ALTER TABLE VENTA
ADD monto_separacion DECIMAL(12,2) NULL;


select * from VENTA;

UPDATE VENTA
SET monto_separacion = 5000
WHERE id_venta IN (2,5,9,13,17);

UPDATE UNIDADES
SET estado_disponibilidad = 'Separado'
WHERE id_unidad IN (2,5,9,13,17);

INSERT INTO UNIDADES
(id_proyecto,codigo_unidad,tipo_inmueble,piso,tipologia,area_m2,nro_habitaciones,nro_baños,es_flat,precio_lista,moneda,estado_disponibilidad)
VALUES
(1,'M105','Departamento',5,'2 Dorm',75.50,2,2,0,420000,'Soles','Disponible'),
(1,'M106','Departamento',6,'3 Dorm',95.00,3,2,0,580000,'Soles','Vendido'),
(1,'M107','Departamento',7,'2 Dorm',78.00,2,2,0,450000,'Soles','Separado'),
(1,'M108','Departamento',8,'1 Dorm',55.00,1,1,0,350000,'Soles','Disponible'),
(1,'M109','Estacionamiento',0,'Simple',15.00,0,0,0,45000,'Soles','Disponible'),
(1,'M110','Deposito',0,'Deposito',8.00,0,0,0,18000,'Soles','Disponible'),
(1,'M111','Departamento',9,'3 Dorm',110.00,3,3,1,690000,'Soles','Vendido'),
(1,'M112','Departamento',10,'2 Dorm',82.00,2,2,0,470000,'Soles','Separado'),

(2,'S205','Departamento',5,'2 Dorm',72.00,2,2,0,430000,'Soles','Disponible'),
(2,'S206','Departamento',6,'3 Dorm',98.00,3,2,0,610000,'Soles','Vendido'),
(2,'S207','Departamento',7,'1 Dorm',50.00,1,1,0,330000,'Soles','Disponible'),
(2,'S208','Estacionamiento',0,'Simple',14.00,0,0,0,42000,'Soles','Disponible'),

(3,'B305','Departamento',5,'2 Dorm',70.00,2,2,0,410000,'Soles','Disponible'),
(3,'B306','Departamento',6,'3 Dorm',100.00,3,2,0,620000,'Soles','Vendido'),
(3,'B307','Departamento',7,'Loft',65.00,1,1,0,390000,'Soles','Separado'),
(3,'B308','Closet',0,'Closet',4.00,0,0,0,12000,'Soles','Disponible'),

(4,'SG405','Departamento',5,'2 Dorm',76.00,2,2,0,440000,'Soles','Disponible'),
(4,'SG406','Departamento',6,'3 Dorm',102.00,3,3,0,650000,'Soles','Vendido'),

(5,'MP505','Departamento',5,'2 Dorm',74.00,2,2,0,425000,'Soles','Disponible'),
(5,'MP506','Departamento',6,'3 Dorm',99.00,3,2,0,605000,'Soles','Separado');

INSERT INTO UNIDADES
(id_proyecto,codigo_unidad,tipo_inmueble,piso,tipologia,area_m2,nro_habitaciones,nro_baños,es_flat,precio_lista,moneda,estado_disponibilidad)
VALUES
(1,'M113','Departamento',11,'2 Dorm',80.00,2,2,0,465000,'Soles','Disponible'),
(1,'M114','Departamento',12,'3 Dorm',105.00,3,2,0,675000,'Soles','Vendido'),
(1,'M115','Departamento',13,'1 Dorm',52.00,1,1,0,340000,'Soles','Disponible'),
(1,'M116','Estacionamiento',0,'Simple',15.00,0,0,0,45000,'Soles','Disponible'),
(1,'M117','Deposito',0,'Deposito',7.50,0,0,0,17000,'Soles','Disponible'),
(1,'M118','Departamento',14,'2 Dorm',78.00,2,2,0,455000,'Soles','Separado'),
(1,'M119','Departamento',15,'3 Dorm',108.00,3,3,1,710000,'Soles','Vendido'),
(1,'M120','Departamento',16,'2 Dorm',82.00,2,2,0,475000,'Soles','Disponible'),

(2,'S209','Departamento',8,'2 Dorm',75.00,2,2,0,440000,'Soles','Disponible'),
(2,'S210','Departamento',9,'3 Dorm',101.00,3,2,0,620000,'Soles','Vendido'),
(2,'S211','Departamento',10,'1 Dorm',54.00,1,1,0,345000,'Soles','Disponible'),
(2,'S212','Deposito',0,'Deposito',6.00,0,0,0,15000,'Soles','Disponible'),
(2,'S213','Departamento',11,'2 Dorm',77.00,2,2,0,460000,'Soles','Separado'),
(2,'S214','Departamento',12,'3 Dorm',103.00,3,3,0,640000,'Soles','Vendido'),

(3,'B309','Departamento',8,'2 Dorm',72.00,2,2,0,425000,'Soles','Disponible'),
(3,'B310','Departamento',9,'3 Dorm',104.00,3,2,0,630000,'Soles','Vendido'),
(3,'B311','Departamento',10,'1 Dorm',56.00,1,1,0,355000,'Soles','Disponible'),
(3,'B312','Departamento',11,'2 Dorm',79.00,2,2,0,470000,'Soles','Separado'),

(4,'SG407','Departamento',7,'2 Dorm',78.00,2,2,0,450000,'Soles','Disponible'),
(4,'SG408','Departamento',8,'3 Dorm',106.00,3,3,0,670000,'Soles','Vendido');

INSERT INTO VENTA
(id_unidad,id_cliente,id_agente,id_canal,fecha_venta,
precio_venta,moneda,estado_venta,forma_pago,
monto_comision,monto_separacion)
VALUES

(21,6,1,2,'2026-05-01',420000,'Soles','Vigente','Crédito hipotecario',12600,NULL),
(22,7,2,3,'2026-05-03',580000,'Soles','Vigente','Contado',17400,NULL),
(23,8,3,1,'2026-05-05',450000,'Soles','Vigente','Crédito directo',13500,5000),
(24,9,4,5,'2026-05-06',350000,'Soles','Vigente','Contado',10500,NULL),
(25,10,5,4,'2026-05-08',45000,'Soles','Vigente','Contado',1350,NULL),

(26,6,1,1,'2026-05-10',18000,'Soles','Vigente','Contado',540,NULL),
(27,7,2,2,'2026-05-12',690000,'Soles','Vigente','Crédito hipotecario',20700,NULL),
(28,8,3,3,'2026-05-14',470000,'Soles','Vigente','Crédito directo',14100,5000),

(29,9,4,4,'2026-05-16',430000,'Soles','Vigente','Crédito hipotecario',12900,NULL),
(30,10,5,5,'2026-05-18',610000,'Soles','Vigente','Contado',18300,NULL),
(31,6,1,2,'2026-05-20',330000,'Soles','Vigente','Contado',9900,NULL),
(32,7,2,1,'2026-05-22',42000,'Soles','Vigente','Contado',1260,NULL),

(33,8,3,3,'2026-05-24',410000,'Soles','Vigente','Crédito hipotecario',12300,NULL),
(34,9,4,4,'2026-05-25',620000,'Soles','Vigente','Crédito directo',18600,NULL),
(35,10,5,5,'2026-05-27',390000,'Soles','Vigente','Crédito directo',11700,5000),
(36,6,1,1,'2026-05-28',12000,'Soles','Vigente','Contado',360,NULL),

(37,7,2,2,'2026-05-29',440000,'Soles','Vigente','Crédito hipotecario',13200,NULL),
(38,8,3,3,'2026-05-30',650000,'Soles','Vigente','Crédito hipotecario',19500,NULL),
(39,9,4,4,'2026-05-31',425000,'Soles','Vigente','Contado',12750,NULL),
(40,10,5,5,'2026-06-01',605000,'Soles','Vigente','Crédito directo',18150,5000);

UPDATE UNIDADES
SET estado_disponibilidad = 'Separado'
WHERE id_unidad IN (23,28,35,40);

UPDATE UNIDADES
SET estado_disponibilidad = 'Vendido'
WHERE id_unidad IN
(21,22,24,25,26,27,29,30,31,32,33,34,36,37,38,39);

UPDATE UNIDADES
SET tipologia = 'Simple'
WHERE tipo_inmueble = 'Estacionamiento'
AND tipologia IS NULL;

UPDATE UNIDADES
SET tipologia = 'Deposito'
WHERE tipo_inmueble = 'Deposito';

UPDATE UNIDADES
SET tipologia = 'Closet'
WHERE tipo_inmueble = 'Closet';

UPDATE UNIDADES
SET tipologia = 'Flat'
WHERE tipo_inmueble = 'Departamento'
AND tipologia IN ('1 Dorm','2 Dorm','3 Dorm');

ALTER TABLE UNIDADES
ADD CONSTRAINT CK_UNIDADES_TIPOLOGIA
CHECK (
    (tipo_inmueble = 'Departamento' AND tipologia IN ('Flat','Duplex','Triplex','Loft'))
    OR
    (tipo_inmueble = 'Estacionamiento' AND tipologia IN ('Simple','Doble'))
    OR
    (tipo_inmueble = 'Deposito' AND tipologia = 'Deposito')
    OR
    (tipo_inmueble = 'Closet' AND tipologia = 'Closet')
);
