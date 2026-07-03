-- 0. Instala a extensão pgcrypto, que disponibiliza a função gen_random_uuid()
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- 1. Remoção de tabelas existentes
DROP TABLE IF EXISTS audit_logs;
DROP TABLE IF EXISTS medical_records;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS user_clinics;
DROP TABLE IF EXISTS temporary_permissions;
DROP TABLE IF EXISTS user_roles;
DROP TABLE IF EXISTS role_permissions;
DROP TABLE IF EXISTS permissions;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS clinics;

-- RF01: Unidades Físicas (Clínicas)
CREATE TABLE clinics (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- RF02: Usuários/Colaboradores do sistema
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    last_login TIMESTAMPTZ
);

-- RF03: Cadastro de Pacientes
CREATE TABLE patients (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NULL,
    phone VARCHAR(20) NOT NULL,
    contact_history TEXT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Tabela de Cargos (Roles)
CREATE TABLE roles (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    role_name VARCHAR(50) UNIQUE NOT NULL
);

-- Tabela de Permissões Isoladas
CREATE TABLE permissions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    permission_name VARCHAR(50) UNIQUE NOT NULL
);

-- Vinculo de Permissões ao Cargo (N:M)
CREATE TABLE role_permissions (
    role_id UUID,
    permission_id UUID,
    PRIMARY KEY (role_id, permission_id),
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
    FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE,
    UNIQUE (role_id, permission_id)
);

-- Vínculo de Usuários aos Cargos (N:M)
CREATE TABLE user_roles (
    user_id UUID,
    role_id UUID,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
    UNIQUE (user_id, role_id)
);

-- RN06: Exceções Temporárias de Permissão
CREATE TABLE temporary_permissions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    permission_id UUID REFERENCES permissions(id) ON DELETE CASCADE,
    start_date TIMESTAMPTZ NOT NULL,
    end_date TIMESTAMPTZ NOT NULL
);

-- RN01: Vínculo de Usuários/Médicos às Clínicas (N:M)
CREATE TABLE user_clinics (
    user_id UUID,
    clinic_id UUID,
    PRIMARY KEY (user_id, clinic_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (clinic_id) REFERENCES clinics(id) ON DELETE CASCADE,
    UNIQUE (user_id, clinic_id)
);

-- RF04: Agenda Centralizada de Consultas
CREATE TABLE appointments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    patient_id UUID REFERENCES patients(id),
    doctor_id UUID REFERENCES users(id),
    clinic_id UUID REFERENCES clinics(id),
    appointment_date TIMESTAMPTZ NOT NULL,
    status VARCHAR(50) DEFAULT 'Scheduled' NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- RF05: Prontuário Eletrônico (1:1 com a Consulta)
CREATE TABLE medical_records (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    appointment_id UUID REFERENCES appointments(id) UNIQUE NOT NULL,
    clinical_notes TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Passo 5: Logs para Auditoria do Sistema
CREATE TABLE audit_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id) ON DELETE SET NULL,
    action_performed VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Justificativas
-- Passo 1 (Entidades Base): Identifiquei os substantivos físicos e centrais: unidades, colaboradores, pacientes e consultas. Elas guardam os dados primários pedidos nos requisitos funcionais.
-- Passo 2 (Mapeamento N:M): O Dr. Roberto atende em várias clínicas, e uma clínica tem vários médicos. Isso é um relacionamento Muitos para Muitos (N:M). Na prática do banco de dados, criei a tabela intermediária colaborador_unidades que guarda apenas o par de chaves (colaborador_id + unidade_id).
-- Passo 3 (Anatomia do Acesso): Adicionar colunas do tipo "sim/não" direto no usuário quebra quando a clínica cresce. Por isso, usei o padrão RBAC (Controle de Acesso Baseado em Papéis). Separei em 4 tabelas (cargos, permissoes, cargo_permissoes e colaborador_cargos). Assim, se contratarmos 50 médicos, apenas associamos o novo colaborador ao cargo 'Médico', e ele herda todas as permissões automaticamente.
-- Passo 4 (O Dilema da Exceção): Para resolver o caso da recepcionista sênior sem mudar o cargo dela, criei a tabela permissoes_temporarias. Ela funciona como uma "ponte extra" direta entre o colaborador e a permissão isolada, contendo campos de data (data_inicio e data_fim) para expirar automaticamente sem alterar as regras do cargo principal.
-- Passo 5 (Rastreabilidade): Criei a tabela logs_auditoria. Sempre que uma ação crítica (como deletar ou alterar dados) acontecer no sistema, o sistema salva um registro nessa tabela com o ID de quem operou, o texto da ação e o carimbo de data/hora exato.

