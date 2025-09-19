-- Bodega de máquinas de repuesto
INSERT INTO storage_warehouse (warehouse_id, warehouse_name, address, equipment_quantity)
VALUES (uuid_generate_v4(), 'En el oeste de la ciudad', 'Bodega Central', 50);

-- Sucursales
INSERT INTO gym_branch (branch_id, branch_name, branch_address)
VALUES (uuid_generate_v4(), 'Sucursal Central', 'Centro de la ciudad'),
(uuid_generate_v4(), 'Sucursal Norte', 'Al norte de la ciudad'),
(uuid_generate_v4(), 'Sucursal Sur', 'Al sur de la ciudad');

-- Roles
INSERT INTO role (role_id, role_name)
VALUES (uuid_generate_v4(), 'Administrador'),
(uuid_generate_v4(), 'Administrador de Inventario'),
(uuid_generate_v4(), 'Entrenador'),
(uuid_generate_v4(), 'Recepcionista');

-- Empleados
INSERT INTO employee(employee_id, role_id, branch_id, employee_name, password, contact_phone)
VALUES 
-- Sucursal Central
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Alejandro Torres', 'ale123', '15550101'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Camila Rojas', 'cam123', '25550102'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Daniel Méndez', 'dan123', '35550103'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Valeria Castillo', 'val123', '45550104'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Sebastián López', 'seb123', '55550105'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Mariana Sánchez', 'mar123', '65550106'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Javier Pérez', 'jav123', '75550107'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Natalia Ramírez', 'nat123', '85550108'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Rodrigo Fernández', 'rod123', '95550109'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Andrea Morales', 'andrea123', '05550110'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Luis Gutiérrez', 'luis123', '15550111'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Paola Díaz', 'pao123', '25550112'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Carlos Hernández', 'carlos123', '35550113'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Gabriela Vargas', 'gab123', '45550114'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Mauricio Aguilar', 'mau123', '55550115'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Karen Soto', 'karen123', '65550116'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Ricardo Jiménez', 'ric123', '57550117'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Daniela Flores', 'dani123', '85550118'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Francisco Molina', 'fran123', '95550119'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Lorena Castro', 'lor123', '56550120'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Eduardo Ruiz', 'edu123', '55550121'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Fernanda Silva', 'fer123', '95550122'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Jorge Martínez', 'jor123', '85550123'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Sofía Bravo', 'sof123', '75550124'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Andrés Vega', 'andres123', '65550125'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Fernando Aguilar', 'fern123', '55550126'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Laura Mendoza', 'lau123', '45550127'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Javier Ortiz', 'javi123', '35550128'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Claudia Herrera', 'clau123', '25550129'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Fernando Aguilar', 'ferando123', '15550130'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Ricardo Peña', 'ricardo123', '55050131'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Isabel Torres', 'isa123', '55500132'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Central'), 'Martín Rivas', 'martin123', '55530133'),
-- Sucursal Norte
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Diego Salazar', 'die123', '55500201'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Paula Miranda', 'pau123', '55510202'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Tomás Beltrán', 'tom123', '55520203'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Elisa Ramírez', 'eli123', '55530204'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Nicolás Cordero', 'nic123', '55540205'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Juliana Pacheco', 'jul123', '55550206'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Matías Figueroa', 'mat123', '55560207'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Carolina Herrera', 'car123', '55570208'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Sebastían Andrade', 'sebas123', '55580209'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Valentina Soto', 'vale123', '55590210'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Andrés Cifuentes', 'andres1234', '55500211'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Mariana López', 'mari123', '55510212'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Felipe Duarte', 'fel123', '55520213'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Lorena Medina', 'lor1234', '55530214'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Gabriel Torres', 'gab1234', '55540215'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Patricia Vega', 'pat123', '55550216'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Hugo Sánchez', 'hug123', '55560217'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Adriana Molina', 'adri123', '55570218'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Daniel Rojas', 'dani123', '55580219'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Norte'), 'Jorge Salinas', 'jorge123', '55590220'),
-- Sucursal Sur
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Mauricio Ríos', 'pass123', '5550301'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Valeria Paredes', 'pass123', '5550302'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Carlos León', 'pass123', '5550303'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Fernanda Cabrera', 'pass123', '55500304'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Ricardo Orozco', 'pass123', '55540305'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Camila Fajardo', 'pass123', '55570306'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Andrés Jiménez', 'pass123', '55580307'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Natalia Guzmán', 'pass123', '55590308'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Felipe Carrillo', 'pass123', '55530309'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Entrenador'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Lorena Salcedo', 'pass123', '55560310'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Sandra Morales', 'pass123', '55540311'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Administrador de Inventario'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Víctor Ramírez', 'pass123', '55590312'),
(uuid_generate_v4(), (SELECT role_id FROM role WHERE role_name = 'Recepcionista'), (SELECT branch_id FROM gym_branch WHERE branch_name = 'Sucursal Sur'), 'Alejandro Castillo', 'pass123', '55530313');

-- Tipos de membresía
INSERT INTO membership_type (membership_type_id, membership_type_name)
VALUES (uuid_generate_v4(), 'Básico'),
(uuid_generate_v4(), 'Premium'),
(uuid_generate_v4(), 'VIP');

-- Clientes
INSERT INTO client (client_id, name, phone_number, contact_emergency, trainer_id, membership_type_id)
VALUES
(uuid_generate_v4(), 'Andrea López', '55501001', '55501002', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Diego Martínez', '55501003', '55501004', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Valentina Herrera', '55501005', '55501006', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Sebastián González', '55501007', '55501008', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Camila Ramírez', '55501009', '55501010', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Nicolás Fernández', '55501011', '55501012', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Mariana Torres', '55501013', '55501014', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Javier Morales', '55501015', '55501016', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Isabella Castro', '55501017', '55501018', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Rodrigo Sánchez', '55501019', '55501020', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Daniela Flores', '55501021', '55501022', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Alejandro Rivas', '55501023', '55501024', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Paula Jiménez', '55501025', '55501026', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Matías Díaz', '55501027', '55501028', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Lorena Pérez', '55501029', '55501030', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Carlos Gutiérrez', '55501031', '55501032', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Fernanda Vega', '55501033', '55501034', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Felipe Molina', '55501035', '55501036', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Natalia Herrera', '55501037', '55501038', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Tomás Ramírez', '55501039', '55501040', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Gabriela Soto', '55501041', '55501042', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Andrés Salazar', '55501043', '55501044', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Sofía Bravo', '55501045', '55501046', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Luis Cordero', '55501047', '55501048', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Karen Mendoza', '55501049', '55501050', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Ricardo Aguilar', '55501051', '55501052', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Juliana Ortíz', '55501053', '55501054', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Eduardo Ramírez', '55501055', '55501056', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Isabel Cabrera', '55501057', '55501058', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Martín Castillo', '55501059', '55501060', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Básico')),
(uuid_generate_v4(), 'Samuel Torres', '55502001', '55502002', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Valeria Paredes', '55502003', '55502004', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Diego Rojas', '55502005', '55502006', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Camila Vargas', '55502007', '55502008', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Andrés Castillo', '55502009', '55502010', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Mariana Soto', '55502011', '55502012', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Nicolás Ramírez', '55502013', '55502014', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Juliana Morales', '55502015', '55502016', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Felipe Herrera', '55502017', '55502018', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Isabella Cruz', '55502019', '55502020', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Javier Guzmán', '55502021', '55502022', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Lorena Medina', '55502023', '55502024', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Alejandro Figueroa', '55502025', '55502026', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Sofía Jiménez', '55502027', '55502028', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Carlos Peña', '55502029', '55502030', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Fernanda López', '55502031', '55502032', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Ricardo Duarte', '55502033', '55502034', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Gabriela Cordero', '55502035', '55502036', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Matías Salazar', '55502037', '55502038', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Daniela Bravo', '55502039', '55502040', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='Premium')),
(uuid_generate_v4(), 'Tomás Ortíz', '55503001', '55503002', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Paula Fernández', '55503003', '55503004', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Luis Vega', '55503005', '55503006', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Valentina Ríos', '55503007', '55503008', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Mauricio Aguilar', '55503009', '55503010', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Isabel Pacheco', '55503011', '55503012', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Jorge Castillo', '55503013', '55503014', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Carolina Ramírez', '55503015', '55503016', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Francisco Herrera', '55503017', '55503018', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP')),
(uuid_generate_v4(), 'Natalia Silva', '55503019', '55503020', (SELECT employee_id FROM employee WHERE role_id=(SELECT role_id FROM role WHERE role_name='Entrenador') ORDER BY random() LIMIT 1), (SELECT membership_type_id FROM membership_type WHERE membership_type_name='VIP'));


-- Máquinas de ejercicio en sucursal central
INSERT INTO exercise_machine (machine_id, machine_name, machine_status, description, location_id) VALUES
(uuid_generate_v4(), 'Caminadora 1', TRUE, 'Caminadora eléctrica para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Caminadora 2', TRUE, 'Caminadora eléctrica para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Caminadora 3', TRUE, 'Caminadora eléctrica para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Caminadora 4', TRUE, 'Caminadora eléctrica para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Caminadora 5', TRUE, 'Caminadora eléctrica para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Bicicleta Estática 1', TRUE, 'Bicicleta fija de resistencia ajustable', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Bicicleta Estática 2', TRUE, 'Bicicleta fija de resistencia ajustable', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Bicicleta Estática 3', TRUE, 'Bicicleta fija de resistencia ajustable', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Bicicleta Estática 4', TRUE, 'Bicicleta fija de resistencia ajustable', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Bicicleta Estática 5', TRUE, 'Bicicleta fija de resistencia ajustable', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Elíptica 1', TRUE, 'Máquina elíptica con resistencia magnética', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Elíptica 2', TRUE, 'Máquina elíptica con resistencia magnética', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Elíptica 3', TRUE, 'Máquina elíptica con resistencia magnética', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Elíptica 4', TRUE, 'Máquina elíptica con resistencia magnética', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Elíptica 5', TRUE, 'Máquina elíptica con resistencia magnética', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Remadora 1', TRUE, 'Máquina de remo con resistencia hidráulica', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Remadora 2', TRUE, 'Máquina de remo con resistencia hidráulica', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Remadora 3', TRUE, 'Máquina de remo con resistencia hidráulica', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Pecho', TRUE, 'Pectoral fly para trabajar pecho', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Press de Pecho', TRUE, 'Press de pecho horizontal', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Press Inclinado', TRUE, 'Press inclinado para pecho superior', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Espalda', TRUE, 'Lat Pulldown para dorsales', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Remo Sentado', TRUE, 'Remo en polea baja', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Piernas', TRUE, 'Prensa de piernas', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Extensión de Pierna', TRUE, 'Para cuádriceps', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Curl de Pierna', TRUE, 'Para isquiotibiales', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Abductores', TRUE, 'Máquina para abductores de cadera', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Aductores', TRUE, 'Máquina para aductores de cadera', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Hombros', TRUE, 'Press de hombros', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Elevaciones Laterales', TRUE, 'Máquina para deltoides', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Bíceps', TRUE, 'Curl de bíceps en máquina', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Máquina de Tríceps', TRUE, 'Extensión de tríceps en máquina', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Abdominales', TRUE, 'Crunch abdominal en máquina', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Banco Abdominal', TRUE, 'Banco inclinado para abdominales', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Banco Plano', TRUE, 'Banco plano multipropósito', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Banco Inclinado', TRUE, 'Banco inclinado multipropósito', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Banco Declinado', TRUE, 'Banco declinado multipropósito', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Smith Machine', TRUE, 'Máquina multipower para press y sentadillas', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Rack de Sentadillas', TRUE, 'Rack para ejercicios de fuerza', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Rack de Pesas', TRUE, 'Rack con mancuernas', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Cuerda de Batalla', TRUE, 'Cuerda gruesa para entrenamiento funcional', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Kettlebells', TRUE, 'Juego de kettlebells de distintos pesos', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Balón Medicinal', TRUE, 'Balones de distintos pesos para core', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'TRX', TRUE, 'Sistema de entrenamiento en suspensión', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Máquina de Gemelos', TRUE, 'Elevación de talones sentado', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Máquina de Glúteos', TRUE, 'Patada de glúteo en máquina', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),

(uuid_generate_v4(), 'Stepper 1', TRUE, 'Escaladora vertical para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7'),
(uuid_generate_v4(), 'Stepper 2', TRUE, 'Escaladora vertical para cardio', '50dc759e-9fa1-4593-b275-f66e7d2fd1f7');

-- Máquinas en sucursal sur
INSERT INTO exercise_machine (machine_id, machine_name, machine_status, description, location_id) VALUES
(uuid_generate_v4(), 'Caminadora 1', TRUE, 'Caminadora eléctrica para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Caminadora 2', TRUE, 'Caminadora eléctrica para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Caminadora 3', TRUE, 'Caminadora eléctrica para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Caminadora 4', TRUE, 'Caminadora eléctrica para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Caminadora 5', TRUE, 'Caminadora eléctrica para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Bicicleta Estática 1', TRUE, 'Bicicleta fija de resistencia ajustable', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Bicicleta Estática 2', TRUE, 'Bicicleta fija de resistencia ajustable', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Bicicleta Estática 3', TRUE, 'Bicicleta fija de resistencia ajustable', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Bicicleta Estática 4', TRUE, 'Bicicleta fija de resistencia ajustable', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Bicicleta Estática 5', TRUE, 'Bicicleta fija de resistencia ajustable', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Elíptica 1', TRUE, 'Máquina elíptica con resistencia magnética', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Elíptica 2', TRUE, 'Máquina elíptica con resistencia magnética', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Elíptica 3', TRUE, 'Máquina elíptica con resistencia magnética', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Elíptica 4', TRUE, 'Máquina elíptica con resistencia magnética', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Elíptica 5', TRUE, 'Máquina elíptica con resistencia magnética', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Remadora 1', TRUE, 'Máquina de remo con resistencia hidráulica', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Remadora 2', TRUE, 'Máquina de remo con resistencia hidráulica', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Remadora 3', TRUE, 'Máquina de remo con resistencia hidráulica', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Pecho', TRUE, 'Pectoral fly para trabajar pecho', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Press de Pecho', TRUE, 'Press de pecho horizontal', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Press Inclinado', TRUE, 'Press inclinado para pecho superior', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Espalda', TRUE, 'Lat Pulldown para dorsales', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Remo Sentado', TRUE, 'Remo en polea baja', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Piernas', TRUE, 'Prensa de piernas', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Extensión de Pierna', TRUE, 'Para cuádriceps', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Curl de Pierna', TRUE, 'Para isquiotibiales', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Abductores', TRUE, 'Máquina para abductores de cadera', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Aductores', TRUE, 'Máquina para aductores de cadera', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Hombros', TRUE, 'Press de hombros', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Elevaciones Laterales', TRUE, 'Máquina para deltoides', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Bíceps', TRUE, 'Curl de bíceps en máquina', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Máquina de Tríceps', TRUE, 'Extensión de tríceps en máquina', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Abdominales', TRUE, 'Crunch abdominal en máquina', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Banco Abdominal', TRUE, 'Banco inclinado para abdominales', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Banco Plano', TRUE, 'Banco plano multipropósito', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Banco Inclinado', TRUE, 'Banco inclinado multipropósito', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Banco Declinado', TRUE, 'Banco declinado multipropósito', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Smith Machine', TRUE, 'Máquina multipower para press y sentadillas', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Rack de Sentadillas', TRUE, 'Rack para ejercicios de fuerza', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Rack de Pesas', TRUE, 'Rack con mancuernas', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Cuerda de Batalla', TRUE, 'Cuerda gruesa para entrenamiento funcional', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Kettlebells', TRUE, 'Juego de kettlebells de distintos pesos', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Balón Medicinal', TRUE, 'Balones de distintos pesos para core', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'TRX', TRUE, 'Sistema de entrenamiento en suspensión', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Máquina de Gemelos', TRUE, 'Elevación de talones sentado', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Máquina de Glúteos', TRUE, 'Patada de glúteo en máquina', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),

(uuid_generate_v4(), 'Stepper 1', TRUE, 'Escaladora vertical para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8'),
(uuid_generate_v4(), 'Stepper 2', TRUE, 'Escaladora vertical para cardio', 'dcd89404-24c0-4e05-9571-bc3c434035a8');

-- Máquinas en sucursal norte
INSERT INTO exercise_machine (machine_id, machine_name, machine_status, description, location_id) VALUES
(uuid_generate_v4(), 'Caminadora 1', TRUE, 'Caminadora eléctrica para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Caminadora 2', TRUE, 'Caminadora eléctrica para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Caminadora 3', TRUE, 'Caminadora eléctrica para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Caminadora 4', TRUE, 'Caminadora eléctrica para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Caminadora 5', TRUE, 'Caminadora eléctrica para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Bicicleta Estática 1', TRUE, 'Bicicleta fija de resistencia ajustable', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Bicicleta Estática 2', TRUE, 'Bicicleta fija de resistencia ajustable', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Bicicleta Estática 3', TRUE, 'Bicicleta fija de resistencia ajustable', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Bicicleta Estática 4', TRUE, 'Bicicleta fija de resistencia ajustable', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Bicicleta Estática 5', TRUE, 'Bicicleta fija de resistencia ajustable', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Elíptica 1', TRUE, 'Máquina elíptica con resistencia magnética', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Elíptica 2', TRUE, 'Máquina elíptica con resistencia magnética', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Elíptica 3', TRUE, 'Máquina elíptica con resistencia magnética', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Elíptica 4', TRUE, 'Máquina elíptica con resistencia magnética', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Elíptica 5', TRUE, 'Máquina elíptica con resistencia magnética', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Remadora 1', TRUE, 'Máquina de remo con resistencia hidráulica', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Remadora 2', TRUE, 'Máquina de remo con resistencia hidráulica', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Remadora 3', TRUE, 'Máquina de remo con resistencia hidráulica', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Pecho', TRUE, 'Pectoral fly para trabajar pecho', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Press de Pecho', TRUE, 'Press de pecho horizontal', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Press Inclinado', TRUE, 'Press inclinado para pecho superior', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Espalda', TRUE, 'Lat Pulldown para dorsales', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Remo Sentado', TRUE, 'Remo en polea baja', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Piernas', TRUE, 'Prensa de piernas', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Extensión de Pierna', TRUE, 'Para cuádriceps', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Curl de Pierna', TRUE, 'Para isquiotibiales', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Abductores', TRUE, 'Máquina para abductores de cadera', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Aductores', TRUE, 'Máquina para aductores de cadera', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Hombros', TRUE, 'Press de hombros', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Elevaciones Laterales', TRUE, 'Máquina para deltoides', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Bíceps', TRUE, 'Curl de bíceps en máquina', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Máquina de Tríceps', TRUE, 'Extensión de tríceps en máquina', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Abdominales', TRUE, 'Crunch abdominal en máquina', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Banco Abdominal', TRUE, 'Banco inclinado para abdominales', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Banco Plano', TRUE, 'Banco plano multipropósito', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Banco Inclinado', TRUE, 'Banco inclinado multipropósito', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Banco Declinado', TRUE, 'Banco declinado multipropósito', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Smith Machine', TRUE, 'Máquina multipower para press y sentadillas', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Rack de Sentadillas', TRUE, 'Rack para ejercicios de fuerza', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Rack de Pesas', TRUE, 'Rack con mancuernas', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Cuerda de Batalla', TRUE, 'Cuerda gruesa para entrenamiento funcional', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Kettlebells', TRUE, 'Juego de kettlebells de distintos pesos', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Balón Medicinal', TRUE, 'Balones de distintos pesos para core', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'TRX', TRUE, 'Sistema de entrenamiento en suspensión', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Máquina de Gemelos', TRUE, 'Elevación de talones sentado', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Máquina de Glúteos', TRUE, 'Patada de glúteo en máquina', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),

(uuid_generate_v4(), 'Stepper 1', TRUE, 'Escaladora vertical para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7'),
(uuid_generate_v4(), 'Stepper 2', TRUE, 'Escaladora vertical para cardio', 'dd1d8f25-a48b-4129-9433-290ecd87d6e7');

-- Máquinas en bodega
INSERT INTO exercise_machine (machine_id, machine_name, machine_status, description, location_id) VALUES
(uuid_generate_v4(), 'Caminadora 1', TRUE, 'Caminadora eléctrica para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Caminadora 2', TRUE, 'Caminadora eléctrica para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Caminadora 3', TRUE, 'Caminadora eléctrica para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Caminadora 4', TRUE, 'Caminadora eléctrica para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Caminadora 5', TRUE, 'Caminadora eléctrica para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Bicicleta Estática 1', TRUE, 'Bicicleta fija de resistencia ajustable', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Bicicleta Estática 2', TRUE, 'Bicicleta fija de resistencia ajustable', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Bicicleta Estática 3', TRUE, 'Bicicleta fija de resistencia ajustable', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Bicicleta Estática 4', TRUE, 'Bicicleta fija de resistencia ajustable', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Bicicleta Estática 5', TRUE, 'Bicicleta fija de resistencia ajustable', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Elíptica 1', TRUE, 'Máquina elíptica con resistencia magnética', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Elíptica 2', TRUE, 'Máquina elíptica con resistencia magnética', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Elíptica 3', TRUE, 'Máquina elíptica con resistencia magnética', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Elíptica 4', TRUE, 'Máquina elíptica con resistencia magnética', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Elíptica 5', TRUE, 'Máquina elíptica con resistencia magnética', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Remadora 1', TRUE, 'Máquina de remo con resistencia hidráulica', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Remadora 2', TRUE, 'Máquina de remo con resistencia hidráulica', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Remadora 3', TRUE, 'Máquina de remo con resistencia hidráulica', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Pecho', TRUE, 'Pectoral fly para trabajar pecho', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Press de Pecho', TRUE, 'Press de pecho horizontal', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Press Inclinado', TRUE, 'Press inclinado para pecho superior', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Espalda', TRUE, 'Lat Pulldown para dorsales', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Remo Sentado', TRUE, 'Remo en polea baja', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Piernas', TRUE, 'Prensa de piernas', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Extensión de Pierna', TRUE, 'Para cuádriceps', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Curl de Pierna', TRUE, 'Para isquiotibiales', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Abductores', TRUE, 'Máquina para abductores de cadera', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Aductores', TRUE, 'Máquina para aductores de cadera', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Hombros', TRUE, 'Press de hombros', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Elevaciones Laterales', TRUE, 'Máquina para deltoides', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Bíceps', TRUE, 'Curl de bíceps en máquina', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Máquina de Tríceps', TRUE, 'Extensión de tríceps en máquina', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Abdominales', TRUE, 'Crunch abdominal en máquina', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Banco Abdominal', TRUE, 'Banco inclinado para abdominales', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Banco Plano', TRUE, 'Banco plano multipropósito', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Banco Inclinado', TRUE, 'Banco inclinado multipropósito', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Banco Declinado', TRUE, 'Banco declinado multipropósito', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Smith Machine', TRUE, 'Máquina multipower para press y sentadillas', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Rack de Sentadillas', TRUE, 'Rack para ejercicios de fuerza', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Rack de Pesas', TRUE, 'Rack con mancuernas', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Cuerda de Batalla', TRUE, 'Cuerda gruesa para entrenamiento funcional', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Kettlebells', TRUE, 'Juego de kettlebells de distintos pesos', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Balón Medicinal', TRUE, 'Balones de distintos pesos para core', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'TRX', TRUE, 'Sistema de entrenamiento en suspensión', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Máquina de Gemelos', TRUE, 'Elevación de talones sentado', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Máquina de Glúteos', TRUE, 'Patada de glúteo en máquina', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),

(uuid_generate_v4(), 'Stepper 1', TRUE, 'Escaladora vertical para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20'),
(uuid_generate_v4(), 'Stepper 2', TRUE, 'Escaladora vertical para cardio', 'bc2597a0-32ca-4fda-be9f-5daad2854f20');

