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


--Se eliminan los registros de las tabla venta y unidades porque no lo habia ingresado correctamente la lógica, los departamentos no tenian números correlativos.

DELETE FROM VENTA;
DELETE FROM UNIDADES;

DBCC CHECKIDENT ('UNIDADES', RESEED, 0);
DBCC CHECKIDENT ('VENTA', RESEED, 0);

-- Se insertan nuevamente los departamentos con códigos correlativos por piso y tipología flat, para luego realizar las ventas correspondientes.

-- Proyecto Miraflores Tower 

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

-- Piso 1
(1,'M101','Departamento',1,'Flat',44,1,1,1,320000,'Soles','Disponible'),
(1,'M102','Departamento',1,'Flat',60,2,2,1,450000,'Soles','Disponible'),
(1,'M103','Departamento',1,'Flat',80,3,2,1,650000,'Soles','Disponible'),
(1,'M104','Departamento',1,'Flat',65,2,2,1,480000,'Soles','Disponible'),

-- Piso 2
(1,'M201','Departamento',2,'Flat',42,1,1,1,310000,'Soles','Disponible'),
(1,'M202','Departamento',2,'Flat',55,2,2,1,420000,'Soles','Disponible'),
(1,'M203','Departamento',2,'Flat',75,3,2,1,620000,'Soles','Disponible'),
(1,'M204','Departamento',2,'Flat',65,2,2,1,470000,'Soles','Disponible'),

-- Piso 3
(1,'M301','Departamento',3,'Flat',44,1,1,1,330000,'Soles','Disponible'),
(1,'M302','Departamento',3,'Flat',60,2,2,1,450000,'Soles','Disponible'),
(1,'M303','Departamento',3,'Flat',80,3,2,1,670000,'Soles','Disponible'),
(1,'M304','Departamento',3,'Flat',65,2,2,1,490000,'Soles','Disponible'),

-- Piso 4
(1,'M401','Departamento',4,'Flat',42,1,1,1,325000,'Soles','Disponible'),
(1,'M402','Departamento',4,'Flat',58,2,2,1,440000,'Soles','Disponible'),
(1,'M403','Departamento',4,'Flat',78,3,2,1,680000,'Soles','Disponible'),
(1,'M404','Departamento',4,'Flat',65,2,2,1,500000,'Soles','Disponible'),

-- Piso 5
(1,'M501','Departamento',5,'Flat',44,1,1,1,340000,'Soles','Disponible'),
(1,'M502','Departamento',5,'Flat',62,2,2,1,470000,'Soles','Disponible'),
(1,'M503','Departamento',5,'Flat',80,3,2,1,700000,'Soles','Disponible'),
(1,'M504','Departamento',5,'Flat',65,2,2,1,520000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(1,'ME01','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME02','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME03','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME04','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME05','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME06','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME07','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME08','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME09','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME10','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),

(1,'ME11','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME12','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME13','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME14','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME15','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME16','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME17','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME18','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME19','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(1,'ME20','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(1,'MD01','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD02','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD03','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD04','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD05','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),

(1,'MD06','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD07','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD08','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD09','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(1,'MD10','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible');

-- Proyecto San Isidro Living

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

-- Piso 1 (5 departamentos)
(2,'S101','Departamento',1,'Flat',44,1,1,1,320000,'Soles','Disponible'),
(2,'S102','Departamento',1,'Flat',60,2,2,1,450000,'Soles','Disponible'),
(2,'S103','Departamento',1,'Flat',80,3,2,1,650000,'Soles','Disponible'),
(2,'S104','Departamento',1,'Flat',55,2,2,1,420000,'Soles','Disponible'),
(2,'S105','Departamento',1,'Flat',42,1,1,1,310000,'Soles','Disponible'),

-- Piso 2 (5 departamentos)
(2,'S201','Departamento',2,'Flat',44,1,1,1,330000,'Soles','Disponible'),
(2,'S202','Departamento',2,'Flat',65,2,2,1,480000,'Soles','Disponible'),
(2,'S203','Departamento',2,'Flat',78,3,2,1,670000,'Soles','Disponible'),
(2,'S204','Departamento',2,'Flat',58,2,2,1,440000,'Soles','Disponible'),
(2,'S205','Departamento',2,'Flat',40,1,1,1,300000,'Soles','Disponible'),

-- Piso 3 (4 departamentos)
(2,'S301','Departamento',3,'Flat',44,1,1,1,340000,'Soles','Disponible'),
(2,'S302','Departamento',3,'Flat',62,2,2,1,470000,'Soles','Disponible'),
(2,'S303','Departamento',3,'Flat',80,3,2,1,700000,'Soles','Disponible'),
(2,'S304','Departamento',3,'Flat',60,2,2,1,460000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(2,'SE01','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE02','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE03','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE04','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE05','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE06','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE07','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),

(2,'SE08','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE09','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE10','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE11','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE12','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE13','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(2,'SE14','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(2,'SD01','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(2,'SD02','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(2,'SD03','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(2,'SD04','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),

(2,'SD05','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(2,'SD06','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(2,'SD07','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible');

-- Proyecto Barranco Living

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

-- Piso 1 (3 departamentos)
(3,'B101','Departamento',1,'Flat',42,1,1,1,310000,'Soles','Disponible'),
(3,'B102','Departamento',1,'Flat',60,2,2,1,450000,'Soles','Disponible'),
(3,'B103','Departamento',1,'Flat',78,3,2,1,670000,'Soles','Disponible'),

-- Piso 2 (3 departamentos)
(3,'B201','Departamento',2,'Flat',44,1,1,1,330000,'Soles','Disponible'),
(3,'B202','Departamento',2,'Flat',58,2,2,1,440000,'Soles','Disponible'),
(3,'B203','Departamento',2,'Flat',75,3,2,1,650000,'Soles','Disponible'),

-- Piso 3 (3 departamentos)
(3,'B301','Departamento',3,'Flat',40,1,1,1,300000,'Soles','Disponible'),
(3,'B302','Departamento',3,'Flat',65,2,2,1,480000,'Soles','Disponible'),
(3,'B303','Departamento',3,'Flat',80,3,2,1,700000,'Soles','Disponible'),

-- Piso 4 (3 departamentos)
(3,'B401','Departamento',4,'Flat',44,1,1,1,340000,'Soles','Disponible'),
(3,'B402','Departamento',4,'Flat',60,2,2,1,460000,'Soles','Disponible'),
(3,'B403','Departamento',4,'Flat',78,3,2,1,680000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(3,'BE01','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE02','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE03','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE04','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE05','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE06','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),

(3,'BE07','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE08','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE09','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE10','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE11','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(3,'BE12','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(3,'BD01','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(3,'BD02','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(3,'BD03','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),

(3,'BD04','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(3,'BD05','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(3,'BD06','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible');

-- Proyecto Surco Garden

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

-- Piso 1 (2 departamentos)
(4,'SG101','Departamento',1,'Flat',42,1,1,1,310000,'Soles','Disponible'),
(4,'SG102','Departamento',1,'Flat',60,2,2,1,450000,'Soles','Disponible'),

-- Piso 2 (2 departamentos)
(4,'SG201','Departamento',2,'Flat',44,1,1,1,330000,'Soles','Disponible'),
(4,'SG202','Departamento',2,'Flat',65,2,2,1,480000,'Soles','Disponible'),

-- Piso 3 (2 departamentos)
(4,'SG301','Departamento',3,'Flat',58,2,2,1,440000,'Soles','Disponible'),
(4,'SG302','Departamento',3,'Flat',78,3,2,1,670000,'Soles','Disponible'),

-- Piso 4 (2 departamentos)
(4,'SG401','Departamento',4,'Flat',60,2,2,1,460000,'Soles','Disponible'),
(4,'SG402','Departamento',4,'Flat',80,3,2,1,700000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(4,'SGE01','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE02','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE03','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE04','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),

(4,'SGE05','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE06','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE07','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(4,'SGE08','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(4,'SGD01','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(4,'SGD02','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),

(4,'SGD03','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(4,'SGD04','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible');

-- Proyecto Magdalena Plaza

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

-- Piso 1 (2 departamentos)
(5,'MP101','Departamento',1,'Flat',44,1,1,1,320000,'Soles','Disponible'),
(5,'MP102','Departamento',1,'Flat',60,2,2,1,450000,'Soles','Disponible'),

-- Piso 2 (2 departamentos)
(5,'MP201','Departamento',2,'Flat',65,2,2,1,480000,'Soles','Disponible'),
(5,'MP202','Departamento',2,'Flat',80,3,2,1,700000,'Soles','Disponible'),

-- Piso 3 (2 departamentos)
(5,'MP301','Departamento',3,'Flat',42,1,1,1,310000,'Soles','Disponible'),
(5,'MP302','Departamento',3,'Flat',58,2,2,1,440000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(5,'MPE01','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(5,'MPE02','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(5,'MPE03','Estacionamiento',-1,'Simple',15,0,0,0,50000,'Soles','Disponible'),

(5,'MPE04','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(5,'MPE05','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible'),
(5,'MPE06','Estacionamiento',-2,'Simple',15,0,0,0,50000,'Soles','Disponible');

INSERT INTO UNIDADES
(id_proyecto, codigo_unidad, tipo_inmueble, piso, tipologia,
area_m2, nro_habitaciones, nro_baños, es_flat,
precio_lista, moneda, estado_disponibilidad)
VALUES

(5,'MPD01','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(5,'MPD02','Deposito',-1,'Deposito',6,0,0,0,18000,'Soles','Disponible'),
(5,'MPD03','Deposito',-2,'Deposito',6,0,0,0,18000,'Soles','Disponible');


-- Consulta para obtener el número de departamentos, estacionamientos y depósitos por proyecto

SELECT 
    p.nombre_proyecto AS Proyecto,
    SUM(CASE WHEN u.tipo_inmueble = 'Departamento' THEN 1 ELSE 0 END) AS Departamentos,
    SUM(CASE WHEN u.tipo_inmueble = 'Estacionamiento' THEN 1 ELSE 0 END) AS Estacionamientos,
    SUM(CASE WHEN u.tipo_inmueble = 'Deposito' THEN 1 ELSE 0 END) AS Depositos,
    COUNT(*) AS Total_Unidades
FROM UNIDADES u
INNER JOIN PROYECTO p
    ON u.id_proyecto = p.id_proyecto
GROUP BY p.nombre_proyecto
ORDER BY p.nombre_proyecto;

-- actualización de estado de disponibilidad a vendido para las unidades vendidas en la tabla venta

UPDATE UNIDADES
SET estado_disponibilidad = 'Vendido'
WHERE id_unidad IN (
1,2,3,5,6,9,10,13,17,18,
51,52,56,57,61,62,
86,87,89,90,
116,117,
136,137,138
);

UPDATE UNIDADES
SET estado_disponibilidad = 'Separado'
WHERE id_unidad IN (
4,7,11,53,58,88,92,118,120,139
);

INSERT INTO VENTA
(id_unidad, id_cliente, id_agente, id_canal,
fecha_venta, precio_venta, moneda, estado_venta,
forma_pago, monto_comision, monto_separacion)
VALUES

-- Miraflores Tower
(1,1,1,1,'2025-01-15',320000,'Soles','Vigente','Crédito hipotecario',9600,0),
(2,2,2,2,'2025-01-25',450000,'Soles','Vigente','Contado',13500,0),
(3,3,3,4,'2025-02-10',650000,'Soles','Vigente','Crédito hipotecario',19500,0),
(5,4,1,5,'2025-02-20',310000,'Soles','Vigente','Crédito directo',9300,0),
(6,5,2,3,'2025-03-01',420000,'Soles','Vigente','Crédito hipotecario',12600,0),
(9,6,4,1,'2025-03-15',330000,'Soles','Vigente','Contado',9900,0),
(10,7,5,2,'2025-04-05',450000,'Soles','Vigente','Crédito hipotecario',13500,0),
(13,8,3,4,'2025-04-18',325000,'Soles','Vigente','Crédito directo',9750,0),
(17,9,2,5,'2025-05-02',340000,'Soles','Vigente','Crédito hipotecario',10200,0),
(18,10,1,3,'2025-05-20',470000,'Soles','Vigente','Contado',14100,0),

-- San Isidro Living
(51,1,4,1,'2025-06-01',320000,'Soles','Vigente','Crédito hipotecario',9600,0),
(52,2,5,2,'2025-06-15',450000,'Soles','Vigente','Crédito directo',13500,0),
(56,3,2,4,'2025-06-25',330000,'Soles','Vigente','Crédito hipotecario',9900,0),
(57,4,3,5,'2025-07-10',480000,'Soles','Vigente','Contado',14400,0),
(61,5,1,3,'2025-07-22',340000,'Soles','Vigente','Crédito hipotecario',10200,0),
(62,6,4,1,'2025-08-05',470000,'Soles','Vigente','Crédito directo',14100,0),

-- Barranco House
(86,7,5,2,'2025-08-20',310000,'Soles','Vigente','Contado',9300,0),
(87,8,2,3,'2025-09-01',450000,'Soles','Vigente','Crédito hipotecario',13500,0),
(89,9,3,4,'2025-09-18',330000,'Soles','Vigente','Crédito directo',9900,0),
(90,10,1,5,'2025-10-05',440000,'Soles','Vigente','Crédito hipotecario',13200,0),

-- Surco Garden
(116,1,4,1,'2025-10-20',310000,'Soles','Vigente','Contado',9300,0),
(117,2,5,2,'2025-11-02',450000,'Soles','Vigente','Crédito hipotecario',13500,0),

-- Magdalena Park
(136,3,2,4,'2025-11-15',320000,'Soles','Vigente','Crédito directo',9600,0),
(137,4,3,5,'2025-11-25',450000,'Soles','Vigente','Crédito hipotecario',13500,0),
(138,5,1,3,'2025-12-05',480000,'Soles','Vigente','Contado',14400,0);

INSERT INTO VENTA
(id_unidad, id_cliente, id_agente, id_canal,
fecha_venta, precio_venta, moneda, estado_venta,
forma_pago, monto_comision, monto_separacion)
VALUES

-- Miraflores Tower
(4,6,2,1,'2025-12-10',480000,'Soles','Vigente','Crédito hipotecario',14400,10000),
(7,7,3,2,'2025-12-12',620000,'Soles','Vigente','Crédito directo',18600,15000),
(11,8,4,3,'2025-12-14',670000,'Soles','Vigente','Contado',20100,20000),

-- San Isidro Living
(53,9,5,4,'2025-12-15',650000,'Soles','Vigente','Crédito hipotecario',19500,10000),
(58,10,1,5,'2025-12-16',670000,'Soles','Vigente','Crédito directo',20100,15000),

-- Barranco House
(88,1,2,1,'2025-12-17',670000,'Soles','Vigente','Crédito hipotecario',20100,10000),
(92,2,3,2,'2025-12-18',300000,'Soles','Vigente','Contado',9000,5000),

-- Surco Garden
(118,3,4,3,'2025-12-19',330000,'Soles','Vigente','Crédito hipotecario',9900,10000),
(120,4,5,4,'2025-12-20',440000,'Soles','Vigente','Crédito directo',13200,10000),

-- Magdalena Park
(139,5,1,5,'2025-12-21',700000,'Soles','Vigente','Crédito hipotecario',21000,15000);

