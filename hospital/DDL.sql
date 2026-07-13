-- =========================================================================
-- SCRIPT DDL PARA CRIAR TABELAS
-- =========================================================================


CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE clinics (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(150) NOT NULL,
    address TEXT NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE patients (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name VARCHAR(150) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    phone VARCHAR(20),
    birth_date DATE,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT
);

CREATE TABLE permissions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    module VARCHAR(50) NOT NULL,
    action VARCHAR(50) NOT NULL,
    description TEXT,
    UNIQUE (module, action)
);

CREATE TABLE user_clinics (
    user_id UUID NOT NULL REFERENCES users(id),
    clinic_id UUID NOT NULL REFERENCES clinics(id),
    PRIMARY KEY (user_id, clinic_id) 
);

CREATE TABLE user_roles (
    user_id UUID NOT NULL REFERENCES users(id),
    role_id UUID NOT NULL REFERENCES roles(id),
    PRIMARY KEY (user_id, role_id)
);

CREATE TABLE role_permissions (
    role_id UUID NOT NULL REFERENCES roles(id),
    permission_id UUID NOT NULL REFERENCES permissions(id),
    PRIMARY KEY (role_id, permission_id)
);

CREATE TABLE user_permissions (
    user_id UUID NOT NULL REFERENCES users(id),
    permission_id UUID NOT NULL REFERENCES permissions(id),
    PRIMARY KEY (user_id, permission_id)
);

CREATE TABLE consultations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    patient_id UUID NOT NULL REFERENCES patients(id),
    doctor_id UUID NOT NULL REFERENCES users(id), 
    clinic_id UUID NOT NULL REFERENCES clinics(id),
    scheduled_at TIMESTAMPTZ NOT NULL,
    status VARCHAR(20) DEFAULT 'AGENDADA',
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE medical_records (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    consultation_id UUID UNIQUE NOT NULL REFERENCES consultations(id),
    clinical_notes TEXT NOT NULL,
    prescription TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE audit_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id), 
    action_type VARCHAR(50) NOT NULL,
    table_affected VARCHAR(50) NOT NULL,
    record_id UUID NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
