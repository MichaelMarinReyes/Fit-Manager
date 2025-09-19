--CREATE DATABASE fit_manager;

--\c fit_manager;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Sucursales
CREATE TABLE gym_branch (
    branch_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    branch_name VARCHAR(50) NOT NULL,
    branch_address VARCHAR(100)
);

-- Bodega
CREATE TABLE storage_warehouse (
    warehouse_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    warehouse_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL
);

-- Máquinas (pueden estar en una sucursal O en una bodega)
CREATE TABLE exercise_machine (
    machine_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    machine_name VARCHAR(50) NOT NULL,
    machine_status BOOLEAN NOT NULL,
    description VARCHAR(200) NULL,
    branch_id UUID NULL,
    warehouse_id UUID NULL,
    CONSTRAINT fk_machine_branch FOREIGN KEY (branch_id)
        REFERENCES gym_branch (branch_id) ON DELETE SET NULL,
    CONSTRAINT fk_machine_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES storage_warehouse (warehouse_id) ON DELETE SET NULL,
    CONSTRAINT chk_machine_location CHECK (
        (branch_id IS NOT NULL AND warehouse_id IS NULL) OR
        (branch_id IS NULL AND warehouse_id IS NOT NULL)
    )
);

-- Roles
CREATE TABLE role (
    role_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    role_name VARCHAR(50) NOT NULL
);

-- Empleados
CREATE TABLE employee (
    employee_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    role_id UUID NOT NULL,
    branch_id UUID NOT NULL,
    employee_name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    contact_phone VARCHAR(15),
    CONSTRAINT fk_employee_role FOREIGN KEY (role_id)
        REFERENCES role (role_id) ON DELETE RESTRICT,
    CONSTRAINT fk_employee_branch FOREIGN KEY (branch_id)
        REFERENCES gym_branch (branch_id) ON DELETE CASCADE
);

-- Clientes
CREATE TABLE client (
    client_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    contact_emergency VARCHAR(15) NOT NULL,
    trainer_id UUID NOT NULL,
    CONSTRAINT fk_client_trainer FOREIGN KEY (trainer_id)
        REFERENCES employee (employee_id) ON DELETE RESTRICT
);


-- Membresías
CREATE TABLE membership_type (
    membership_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    membership_type_name VARCHAR(50) NOT NULL
);

CREATE TABLE membership (
    membership_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    client_id UUID NOT NULL,
    membership_type_id UUID NOT NULL,
    membership_name VARCHAR(50) NOT NULL,
    CONSTRAINT fk_membership_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_membership_type FOREIGN KEY (membership_type_id)
        REFERENCES membership_type (membership_type_id) ON DELETE RESTRICT
);

-- Servicios
CREATE TABLE service_type (
    service_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    service_type_name VARCHAR(50) NOT NULL
);

CREATE TABLE service (
    service_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    service_type_id UUID NOT NULL,
    service_name VARCHAR(50) NOT NULL,
    CONSTRAINT fk_service_type FOREIGN KEY (service_type_id)
        REFERENCES service_type (service_type_id) ON DELETE RESTRICT
);

-- Rutinas y Ejercicios
-- Tabla de Ejercicios
CREATE TABLE exercise (
    exercise_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    exercise_name VARCHAR(50) NOT NULL
);

-- Tabla de Rutinas
CREATE TABLE routine (
    routine_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    routine_name VARCHAR(50) NOT NULL,
    client_id UUID NOT NULL,
    trainer_id UUID NOT NULL,
    start_date DATE NOT NULL DEFAULT current_date,
    CONSTRAINT fk_routine_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_routine_trainer FOREIGN KEY (trainer_id)
        REFERENCES employee (employee_id) ON DELETE SET NULL
);

-- Tabla intermedia
CREATE TABLE routine_exercise (
    routine_id UUID NOT NULL,
    exercise_id UUID NOT NULL,
    series INT NOT NULL DEFAULT 3,
    repetitions INT NOT NULL DEFAULT 10,
    duration INTERVAL, -- si aplica
    PRIMARY KEY (routine_id, exercise_id),
    CONSTRAINT fk_re_routine FOREIGN KEY (routine_id) REFERENCES routine(routine_id) ON DELETE CASCADE,
    CONSTRAINT fk_re_exercise FOREIGN KEY (exercise_id) REFERENCES exercise(exercise_id) ON DELETE CASCADE
);

-- Tabla intermedia para relacionar ejercicios con máquinas
CREATE TABLE exercise_machine_assignment (
    exercise_id UUID NOT NULL,
    machine_id UUID NOT NULL,
    PRIMARY KEY (exercise_id, machine_id),
    CONSTRAINT fk_ema_exercise FOREIGN KEY (exercise_id)
        REFERENCES exercise(exercise_id) ON DELETE CASCADE,
    CONSTRAINT fk_ema_machine FOREIGN KEY (machine_id)
        REFERENCES exercise_machine(machine_id) ON DELETE CASCADE
);

CREATE TABLE machine_location (
    location_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    location_type VARCHAR(20) NOT NULL CHECK (location_type IN ('BRANCH','WAREHOUSE')),
    branch_id UUID NULL,
    warehouse_id UUID NULL,
    CONSTRAINT fk_location_branch FOREIGN KEY (branch_id)
        REFERENCES gym_branch(branch_id) ON DELETE CASCADE,
    CONSTRAINT fk_location_warehouse FOREIGN KEY (warehouse_id)
        REFERENCES storage_warehouse(warehouse_id) ON DELETE CASCADE,
    CONSTRAINT chk_valid_location CHECK (
        (branch_id IS NOT NULL AND warehouse_id IS NULL) OR
        (branch_id IS NULL AND warehouse_id IS NOT NULL)
    )
);

-- Relación muchos a muchos: Cliente - Servicio
CREATE TABLE client_service (
    client_id UUID NOT NULL,
    service_id UUID NOT NULL,
    PRIMARY KEY (client_id, service_id),
    CONSTRAINT fk_client_service_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_client_service_service FOREIGN KEY (service_id)
        REFERENCES service (service_id) ON DELETE CASCADE
);

-- Relación muchos a muchos: Cliente - Rutina
CREATE TABLE client_routine (
    client_id UUID NOT NULL,
    routine_id UUID NOT NULL,
    PRIMARY KEY (client_id, routine_id),
    CONSTRAINT fk_client_routine_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_client_routine_routine FOREIGN KEY (routine_id)
        REFERENCES routine (routine_id) ON DELETE CASCADE
);

-- Entradas y salidas de los clientes
CREATE TABLE attendance (
    attendance_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    client_id UUID NOT NULL,
    branch_id UUID NOT NULL,
    check_in TIMESTAMP NOT NULL DEFAULT now(),
    CONSTRAINT fk_attendance_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_attendance_branch FOREIGN KEY (branch_id)
        REFERENCES gym_branch (branch_id) ON DELETE CASCADE
);

-- Pagos
CREATE TABLE payment (
    payment_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    client_id UUID NOT NULL,
    membership_id UUID NULL,
    service_id UUID NULL,
    amount NUMERIC(10,2) NOT NULL,
    payment_date TIMESTAMP NOT NULL DEFAULT now(),
    start_date DATE,
    end_date DATE,
    CONSTRAINT fk_payment_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_payment_membership FOREIGN KEY (membership_id)
        REFERENCES membership (membership_id) ON DELETE CASCADE,
    CONSTRAINT fk_payment_service FOREIGN KEY (service_id)
        REFERENCES service (service_id) ON DELETE CASCADE,
    CONSTRAINT chk_payment CHECK (
        (membership_id IS NOT NULL AND service_id IS NULL)
        OR (membership_id IS NULL AND service_id IS NOT NULL)
    )
);

-- Historial de cliente
CREATE TABLE client_trainer_history (
    client_id UUID NOT NULL,
    trainer_id UUID NOT NULL,
    start_date DATE NOT NULL DEFAULT current_date,
    end_date DATE,
    PRIMARY KEY (client_id, trainer_id, start_date),
    CONSTRAINT fk_cth_client FOREIGN KEY (client_id)
        REFERENCES client (client_id) ON DELETE CASCADE,
    CONSTRAINT fk_cth_trainer FOREIGN KEY (trainer_id)
        REFERENCES employee (employee_id) ON DELETE CASCADE
);

