
-- =========================================================================
-- SCRIPT DML PARA POPULAR AS TABELAS
-- =========================================================================

-- 1. POPULANDO AS ROLES (4 solicitadas)
INSERT INTO roles (name, description) VALUES
('admin', 'Administrador geral do sistema com acesso total'),
('medico', 'Profissional de saúde que realiza consultas e prontuários'),
('gerente', 'Responsável pela gestão da clínica e relatórios'),
('secretaria', 'Responsável pelos agendamentos e recepção de pacientes');

INSERT INTO roles (name, description) VALUES 
('fisioterapeuta', 'Responsável pela reabilitação física e motora dos pacientes internados'),
('assistente_social', 'Presta suporte acolhedor e assistencial a pacientes e familiares'),
('nutricionista', 'Responsável pelo planejamento dietético e nutrição clínica hospitalar'),
('faturista', 'Realiza o faturamento hospitalar, envio de guias e auditoria de contas'),
('maqueiro', 'Responsável pelo transporte seguro de pacientes entre os setores do hospital'),
('auxiliar_limpeza', 'Garante a higienização rigorosa e o controle de infecção hospitalar');



-- 2. POPULANDO AS CLINICAS (40 solicitadas)
INSERT INTO clinics (name, address, phone) VALUES
('Clínica Alfa', 'Rua das Flores, 123', '(11) 91111-1111'), ('Clínica Beta', 'Av. Central, 456', '(11) 92222-2222'),
('Clínica Gama', 'Rua dos Pinheiros, 789', '(21) 93333-3333'), ('Clínica Delta', 'Av. Brasil, 1010', '(21) 94444-4444'),
('Clínica Épsilon', 'Alameda Santos, 202', '(11) 95555-5555'), ('Clínica Zeta', 'Rua Piauí, 303', '(31) 96666-6666'),
('Clínica Eta', 'Av. Afonso Pena, 404', '(31) 97777-7777'), ('Clínica Teta', 'Rua da Bahia, 505', '(31) 98888-8888'),
('Clínica Iota', 'Av. Paulista, 1000', '(11) 99999-9999'), ('Clínica Kapa', 'Rua Augusta, 1500', '(11) 91234-5678'),
('Clínica Lambda', 'Av. Copacabana, 500', '(21) 92345-6789'), ('Clínica Mu', 'Rua Ipanema, 600', '(21) 93456-7890'),
('Clínica Nu', 'Av. Sete de Setembro, 700', '(41) 94567-8901'), ('Clínica Xi', 'Rua XV de Novembro, 800', '(41) 95678-9012'),
('Clínica Ômicron', 'Av. das Américas, 900', '(21) 96789-0123'), ('Clínica Pi', 'Rua Chile, 111', '(71) 97890-1234'),
('Clínica Rô', 'Av. Tancredo Neves, 222', '(71) 98901-2345'), ('Clínica Sigma', 'Rua da Aurora, 333', '(81) 99012-3456'),
('Clínica Tau', 'Av. Agamenon Magalhães, 444', '(81) 90123-4567'), ('Clínica Úpsilon', 'Rua do Ouvidor, 555', '(21) 91122-3344'),
('Clínica Fi', 'Av. Rio Branco, 666', '(21) 92233-4455'), ('Clínica Qui', 'Rua da Praia, 777', '(51) 93344-5566'),
('Clínica Psi', 'Av. Borges de Medeiros, 888', '(51) 94455-6677'), ('Clínica Ômega', 'Rua dos Goitacazes, 999', '(31) 95566-7788'),
('Clínica Norte', 'Av. Norte, 12', '(81) 96677-8899'), ('Clínica Sul', 'Av. Sul, 34', '(51) 97788-9900'),
('Clínica Leste', 'Av. Leste, 56', '(11) 98899-0011'), ('Clínica Oeste', 'Av. Oeste, 78', '(62) 99900-1122'),
('Clínica Central', 'Praça da Matriz, 90', '(62) 91133-5577'), ('Clínica Nova', 'Rua Nova, 45', '(19) 92244-6688'),
('Clínica Antiga', 'Rua Velha, 76', '(19) 93355-7799'), ('Clínica Saúde', 'Av. Doutor Arnaldo, 80', '(11) 94466-8800'),
('Clínica Vida', 'Rua da Paz, 14', '(11) 95577-9911'), ('Clínica Bem Estar', 'Av. Rebouças, 95', '(11) 96688-0022'),
('Clínica Sorriso', 'Rua Alegre, 30', '(21) 97799-1133'), ('Clínica Premium', 'Alameda Lorena, 1200', '(11) 98800-2244'),
('Clínica Popular', 'Av. Celso Garcia, 2500', '(11) 99911-3355'), ('Clínica Express', 'Rua Estação, 10', '(11) 91133-4455'),
('Clínica 24h', 'Av. Circular, 50', '(62) 92244-5566'), ('Clínica Diagnósticos', 'Rua Lab, 88', '(11) 93355-6677');


-- 3. POPULANDO OS USUARIOS (10 solicitados)
INSERT INTO users (full_name, email, password_hash) VALUES
('Carlos Silva', 'carlos@email.com', 'hash_senha_1'),
('Mariana Souza', 'mariana@email.com', 'hash_senha_2'),
('Roberto Santos', 'roberto@email.com', 'hash_senha_3'),
('Ana Oliveira', 'ana@email.com', 'hash_senha_4'),
('Paulo Lima', 'paulo@email.com', 'hash_senha_5'),
('Juliana Costa', 'juliana@email.com', 'hash_senha_6'),
('Ricardo Pereira', 'ricardo@email.com', 'hash_senha_7'),
('Camila Rodrigues', 'camila@email.com', 'hash_senha_8'),
('Fernando Almeida', 'fernando@email.com', 'hash_senha_9'),
('Beatriz Ribeiro', 'beatriz@email.com', 'hash_senha_10');

INSERT INTO users (full_name, email, password_hash) VALUES 
('Gabriel Martins', 'gabriel@email.com', 'hash_senha_11'),
('Larissa Fernandes', 'larissa@email.com', 'hash_senha_12'),
('Lucas Carvalho', 'lucas@email.com', 'hash_senha_13'),
('Amanda Rocha', 'amanda@email.com', 'hash_senha_14'),
('Rodrigo Melo', 'rodrigo@email.com', 'hash_senha_15'),
('Camila Nunes', 'camila.nunes@email.com', 'hash_senha_16'),
('Bruno Teixeira', 'bruno@email.com', 'hash_senha_17'),
('Letícia Dias', 'leticia@email.com', 'hash_senha_18'),
('Felipe Marques', 'felipe@email.com', 'hash_senha_19'),
('Aline Cardoso', 'aline@email.com', 'hash_senha_20');


-- 4. VINCULANDO USUÁRIOS ÀS ROLES (Exemplo de junção simples)
INSERT INTO user_roles (user_id, role_id) VALUES
((SELECT id FROM users WHERE email = 'carlos@email.com'), (SELECT id FROM roles WHERE name = 'admin')),
((SELECT id FROM users WHERE email = 'mariana@email.com'), (SELECT id FROM roles WHERE name = 'medico')),
((SELECT id FROM users WHERE email = 'roberto@email.com'), (SELECT id FROM roles WHERE name = 'medico')),
((SELECT id FROM users WHERE email = 'ana@email.com'), (SELECT id FROM roles WHERE name = 'gerente')),
((SELECT id FROM users WHERE email = 'paulo@email.com'), (SELECT id FROM roles WHERE name = 'secretaria')),
((SELECT id FROM users WHERE email = 'juliana@email.com'), (SELECT id FROM roles WHERE name = 'secretaria')),
((SELECT id FROM users WHERE email = 'ricardo@email.com'), (SELECT id FROM roles WHERE name = 'medico')),
((SELECT id FROM users WHERE email = 'camila@email.com'), (SELECT id FROM roles WHERE name = 'medico')),
((SELECT id FROM users WHERE email = 'fernando@email.com'), (SELECT id FROM roles WHERE name = 'gerente')),
((SELECT id FROM users WHERE email = 'beatriz@email.com'), (SELECT id FROM roles WHERE name = 'secretaria'));


-- 5. VINCULANDO USUÁRIOS ÀS CLÍNICAS (Exemplo básico)
INSERT INTO user_clinics (user_id, clinic_id) VALUES
((SELECT id FROM users WHERE email = 'carlos@email.com'), (SELECT id FROM clinics WHERE name = 'Clínica Alfa')),
((SELECT id FROM users WHERE email = 'mariana@email.com'), (SELECT id FROM clinics WHERE name = 'Clínica Alfa')),
((SELECT id FROM users WHERE email = 'roberto@email.com'), (SELECT id FROM clinics WHERE name = 'Clínica Beta')),
((SELECT id FROM users WHERE email = 'ana@email.com'), (SELECT id FROM clinics WHERE name = 'Clínica Gama')),
((SELECT id FROM users WHERE email = 'paulo@email.com'), (SELECT id FROM clinics WHERE name = 'Clínica Alfa'));

-- 6. POPULANDO PACIENTES (Blocos Corrigidos)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 1', '100.000.000-01', '(11) 9000-0001', '1990-01-01'), ('Paciente 2', '100.000.000-02', '(11) 9000-0002', '1991-02-02'), ('Paciente 3', '100.000.000-03', '(11) 9000-0003', '1992-03-03'), ('Paciente 4', '100.000.000-04', '(11) 9000-0004', '1993-04-04'), ('Paciente 5', '100.000.000-05', '(11) 9000-0005', '1994-05-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 6', '100.000.000-06', '(11) 9000-0006', '1995-06-06'), ('Paciente 7', '100.000.000-07', '(11) 9000-0007', '1996-07-07'), ('Paciente 8', '100.000.000-08', '(11) 9000-0008', '1997-08-08'), ('Paciente 9', '100.000.000-09', '(11) 9000-0009', '1998-09-09'), ('Paciente 10', '100.000.000-10', '(11) 9000-0010', '1999-10-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 11', '100.000.000-11', '(11) 9000-0011', '1990-11-11'), ('Paciente 12', '100.000.000-12', '(11) 9000-0012', '1991-12-12'), ('Paciente 13', '100.000.000-13', '(11) 9000-0013', '1992-01-13'), ('Paciente 14', '100.000.000-14', '(11) 9000-0014', '1993-02-14'), ('Paciente 15', '100.000.000-15', '(11) 9000-0015', '1994-03-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 16', '100.000.000-16', '(11) 9000-0016', '1995-04-16'), ('Paciente 17', '100.000.000-17', '(11) 9000-0017', '1996-05-17'), ('Paciente 18', '100.000.000-18', '(11) 9000-0018', '1997-06-18'), ('Paciente 19', '100.000.000-19', '(11) 9000-0019', '1998-07-19'), ('Paciente 20', '100.000.000-20', '(11) 9000-0020', '1999-08-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 21', '100.000.000-21', '(11) 9000-0021', '1990-09-21'), ('Paciente 22', '100.000.000-22', '(11) 9000-0022', '1991-10-22'), ('Paciente 23', '100.000.000-23', '(11) 9000-0023', '1992-11-23'), ('Paciente 24', '100.000.000-24', '(11) 9000-0024', '1993-12-24'), ('Paciente 25', '100.000.000-25', '(11) 9000-0025', '1994-01-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 26', '100.000.000-26', '(11) 9000-0026', '1995-02-26'), ('Paciente 27', '100.000.000-27', '(11) 9000-0027', '1996-03-27'), ('Paciente 28', '100.000.000-28', '(11) 9000-0028', '1997-04-28'), ('Paciente 29', '100.000.000-29', '(11) 9000-0029', '1998-05-29'), ('Paciente 30', '100.000.000-30', '(11) 9000-0030', '1999-06-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 31', '100.000.000-31', '(11) 9000-0031', '1990-07-31'), ('Paciente 32', '100.000.000-32', '(11) 9000-0032', '1991-08-01'), ('Paciente 33', '100.000.000-33', '(11) 9000-0033', '1992-09-02'), ('Paciente 34', '100.000.000-34', '(11) 9000-0034', '1993-10-03'), ('Paciente 35', '100.000.000-35', '(11) 9000-0035', '1994-11-04');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 36', '100.000.000-36', '(11) 9000-0036', '1995-12-05'), ('Paciente 37', '100.000.000-37', '(11) 9000-0037', '1996-01-06'), ('Paciente 38', '100.000.000-38', '(11) 9000-0038', '1997-02-07'), ('Paciente 39', '100.000.000-39', '(11) 9000-0039', '1998-03-08'), ('Paciente 40', '100.000.000-40', '(11) 9000-0040', '1999-04-09');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 41', '100.000.000-41', '(11) 9000-0041', '1990-05-10'), ('Paciente 42', '100.000.000-42', '(11) 9000-0042', '1991-06-11'), ('Paciente 43', '100.000.000-43', '(11) 9000-0043', '1992-07-12'), ('Paciente 44', '100.000.000-44', '(11) 9000-0044', '1993-08-13'), ('Paciente 45', '100.000.000-45', '(11) 9000-0045', '1994-09-14');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 46', '100.000.000-46', '(11) 9000-0046', '1995-10-15'), ('Paciente 47', '100.000.000-47', '(11) 9000-0047', '1996-11-16'), ('Paciente 48', '100.000.000-48', '(11) 9000-0048', '1997-12-17'), ('Paciente 49', '100.000.000-49', '(11) 9000-0049', '1998-01-18'), ('Paciente 50', '100.000.000-50', '(11) 9000-0050', '1999-02-19');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 51', '100.000.000-51', '(11) 9000-0051', '1990-03-20'), ('Paciente 52', '100.000.000-52', '(11) 9000-0052', '1991-04-21'), ('Paciente 53', '100.000.000-53', '(11) 9000-0053', '1992-05-22'), ('Paciente 54', '100.000.000-54', '(11) 9000-0054', '1993-06-23'), ('Paciente 55', '100.000.000-55', '(11) 9000-0055', '1994-07-24');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 56', '100.000.000-56', '(11) 9000-0056', '1995-08-25'), ('Paciente 57', '100.000.000-57', '(11) 9000-0057', '1996-09-26'), ('Paciente 58', '100.000.000-58', '(11) 9000-0058', '1997-10-27'), ('Paciente 59', '100.000.000-59', '(11) 9000-0059', '1998-11-28'), ('Paciente 60', '100.000.000-60', '(11) 9000-0060', '1999-12-29');

-- CONTINUAÇÃO: POPULANDO PACIENTES (61 AO 120)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 61', '100.000.000-61', '(11) 9000-0061', '1990-01-30'), ('Paciente 62', '100.000.000-62', '(11) 9000-0062', '1991-02-28'), ('Paciente 63', '100.000.000-63', '(11) 9000-0063', '1992-03-31'), ('Paciente 64', '100.000.000-64', '(11) 9000-0064', '1993-04-30'), ('Paciente 65', '100.000.000-65', '(11) 9000-0065', '1994-05-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 66', '100.000.000-66', '(11) 9000-0066', '1995-06-30'), ('Paciente 67', '100.000.000-67', '(11) 9000-0067', '1996-07-31'), ('Paciente 68', '100.000.000-68', '(11) 9000-0068', '1997-08-31'), ('Paciente 69', '100.000.000-69', '(11) 9000-0069', '1998-09-30'), ('Paciente 70', '100.000.000-70', '(11) 9000-0070', '1999-10-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 71', '100.000.000-71', '(11) 9000-0071', '1990-11-30'), ('Paciente 72', '100.000.000-72', '(11) 9000-0072', '1991-12-31'), ('Paciente 73', '100.000.000-73', '(11) 9000-0073', '1992-01-01'), ('Paciente 74', '100.000.000-74', '(11) 9000-0074', '1993-02-02'), ('Paciente 75', '100.000.000-75', '(11) 9000-0075', '1994-03-03');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 76', '100.000.000-76', '(11) 9000-0076', '1995-04-04'), ('Paciente 77', '100.000.000-77', '(11) 9000-0077', '1996-05-05'), ('Paciente 78', '100.000.000-78', '(11) 9000-0078', '1997-06-06'), ('Paciente 79', '100.000.000-79', '(11) 9000-0079', '1998-07-07'), ('Paciente 80', '100.000.000-80', '(11) 9000-0080', '1999-08-08');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 81', '100.000.000-81', '(11) 9000-0081', '1990-09-09'), ('Paciente 82', '100.000.000-82', '(11) 9000-0082', '1991-10-10'), ('Paciente 83', '100.000.000-83', '(11) 9000-0083', '1992-11-11'), ('Paciente 84', '100.000.000-84', '(11) 9000-0084', '1993-12-12'), ('Paciente 85', '100.000.000-85', '(11) 9000-0085', '1994-01-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 86', '100.000.000-86', '(11) 9000-0086', '1995-02-16'), ('Paciente 87', '100.000.000-87', '(11) 9000-0087', '1996-03-17'), ('Paciente 88', '100.000.000-88', '(11) 9000-0088', '1997-04-18'), ('Paciente 89', '100.000.000-89', '(11) 9000-0089', '1998-05-19'), ('Paciente 90', '100.000.000-90', '(11) 9000-0090', '1999-06-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 91', '100.000.000-91', '(11) 9000-0091', '1990-07-21'), ('Paciente 92', '100.000.000-92', '(11) 9000-0092', '1991-08-22'), ('Paciente 93', '100.000.000-93', '(11) 9000-0093', '1992-09-23'), ('Paciente 94', '100.000.000-94', '(11) 9000-0094', '1993-10-24'), ('Paciente 95', '100.000.000-95', '(11) 9000-0095', '1994-11-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 96', '100.000.000-96', '(11) 9000-0096', '1995-12-26'), ('Paciente 97', '100.000.000-97', '(11) 9000-0097', '1996-01-27'), ('Paciente 98', '100.000.000-98', '(11) 9000-0098', '1997-02-28'), ('Paciente 99', '100.000.000-99', '(11) 9000-0099', '1998-03-29'), ('Paciente 100', '100.000.00-100', '(11) 9000-0100', '1999-04-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 101', '100.000.00-101', '(11) 9000-0101', '1990-05-01'), ('Paciente 102', '100.000.00-102', '(11) 9000-0102', '1991-06-02'), ('Paciente 103', '100.000.00-103', '(11) 9000-0103', '1992-07-03'), ('Paciente 104', '100.000.00-104', '(11) 9000-0104', '1993-08-04'), ('Paciente 105', '100.000.00-105', '(11) 9000-0105', '1994-09-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 106', '100.000.00-106', '(11) 9000-0106', '1995-10-06'), ('Paciente 107', '100.000.00-107', '(11) 9000-0107', '1996-11-07'), ('Paciente 108', '100.000.00-108', '(11) 9000-0108', '1997-12-08'), ('Paciente 109', '100.000.00-109', '(11) 9000-0109', '1998-01-09'), ('Paciente 110', '100.000.00-110', '(11) 9000-0110', '1999-02-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 111', '100.000.00-111', '(11) 9000-0111', '1990-03-11'), ('Paciente 112', '100.000.00-112', '(11) 9000-0112', '1991-04-12'), ('Paciente 113', '100.000.00-113', '(11) 9000-0113', '1992-05-13'), ('Paciente 114', '100.000.00-114', '(11) 9000-0114', '1993-06-14'), ('Paciente 115', '100.000.00-115', '(11) 9000-0115', '1994-07-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 116', '100.000.00-116', '(11) 9000-0116', '1995-08-16'), ('Paciente 117', '100.000.00-117', '(11) 9000-0117', '1996-09-17'), ('Paciente 118', '100.000.00-118', '(11) 9000-0118', '1997-10-18'), ('Paciente 119', '100.000.00-119', '(11) 9000-0119', '1998-11-19'), ('Paciente 120', '100.000.00-120', '(11) 9000-0120', '1999-12-20');

-- CONTINUAÇÃO: POPULANDO PACIENTES (121 AO 180)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 121', '100.000.00-121', '(11) 9000-0121', '1990-01-21'), ('Paciente 122', '100.000.00-122', '(11) 9000-0122', '1991-02-22'), ('Paciente 123', '100.000.00-123', '(11) 9000-0123', '1992-03-23'), ('Paciente 124', '100.000.00-124', '(11) 9000-0124', '1993-04-24'), ('Paciente 125', '100.000.00-125', '(11) 9000-0125', '1994-05-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 126', '100.000.00-126', '(11) 9000-0126', '1995-06-26'), ('Paciente 127', '100.000.00-127', '(11) 9000-0127', '1996-07-27'), ('Paciente 128', '100.000.00-128', '(11) 9000-0128', '1997-08-28'), ('Paciente 129', '100.000.00-129', '(11) 9000-0129', '1998-09-29'), ('Paciente 130', '100.000.00-130', '(11) 9000-0130', '1999-10-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 131', '100.000.00-131', '(11) 9000-0131', '1990-11-01'), ('Paciente 132', '100.000.00-132', '(11) 9000-0132', '1991-12-02'), ('Paciente 133', '100.000.00-133', '(11) 9000-0133', '1992-01-03'), ('Paciente 134', '100.000.00-134', '(11) 9000-0134', '1993-02-04'), ('Paciente 135', '100.000.00-135', '(11) 9000-0135', '1994-03-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 136', '100.000.00-136', '(11) 9000-0136', '1995-04-06'), ('Paciente 137', '100.000.00-137', '(11) 9000-0137', '1996-05-07'), ('Paciente 138', '100.000.00-138', '(11) 9000-0138', '1997-06-08'), ('Paciente 139', '100.000.00-139', '(11) 9000-0139', '1998-07-09'), ('Paciente 140', '100.000.00-140', '(11) 9000-0140', '1999-08-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 141', '100.000.00-141', '(11) 9000-0141', '1990-09-11'), ('Paciente 142', '100.000.00-142', '(11) 9000-0142', '1991-10-12'), ('Paciente 143', '100.000.00-143', '(11) 9000-0143', '1992-11-13'), ('Paciente 144', '100.000.00-144', '(11) 9000-0144', '1993-12-14'), ('Paciente 145', '100.000.00-145', '(11) 9000-0145', '1994-01-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 146', '100.000.00-146', '(11) 9000-0146', '1995-02-16'), ('Paciente 147', '100.000.00-147', '(11) 9000-0147', '1996-03-17'), ('Paciente 148', '100.000.00-148', '(11) 9000-0148', '1997-04-18'), ('Paciente 149', '100.000.00-149', '(11) 9000-0149', '1998-05-19'), ('Paciente 150', '100.000.00-150', '(11) 9000-0150', '1999-06-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 151', '100.000.00-151', '(11) 9000-0151', '1990-07-21'), ('Paciente 152', '100.000.00-152', '(11) 9000-0152', '1991-08-22'), ('Paciente 153', '100.000.00-153', '(11) 9000-0153', '1992-09-23'), ('Paciente 154', '100.000.00-154', '(11) 9000-0154', '1993-10-24'), ('Paciente 155', '100.000.00-155', '(11) 9000-0155', '1994-11-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 156', '100.000.00-156', '(11) 9000-0156', '1995-12-26'), ('Paciente 157', '100.000.00-157', '(11) 9000-0157', '1996-01-27'), ('Paciente 158', '100.000.00-158', '(11) 9000-0158', '1997-02-28'), ('Paciente 159', '100.000.00-159', '(11) 9000-0159', '1998-03-29'), ('Paciente 160', '100.000.00-160', '(11) 9000-0160', '1999-04-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 161', '100.000.00-161', '(11) 9000-0161', '1990-05-01'), ('Paciente 162', '100.000.00-162', '(11) 9000-0162', '1991-06-02'), ('Paciente 163', '100.000.00-163', '(11) 9000-0163', '1992-07-03'), ('Paciente 164', '100.000.00-164', '(11) 9000-0164', '1993-08-04'), ('Paciente 165', '100.000.00-165', '(11) 9000-0165', '1994-09-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 166', '100.000.00-166', '(11) 9000-0166', '1995-10-06'), ('Paciente 167', '100.000.00-167', '(11) 9000-0167', '1996-11-07'), ('Paciente 168', '100.000.00-168', '(11) 9000-0168', '1997-12-08'), ('Paciente 169', '100.000.00-169', '(11) 9000-0169', '1998-01-09'), ('Paciente 170', '100.000.00-170', '(11) 9000-0170', '1999-02-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 171', '100.000.00-171', '(11) 9000-0171', '1990-03-11'), ('Paciente 172', '100.000.00-172', '(11) 9000-0172', '1991-04-12'), ('Paciente 173', '100.000.00-173', '(11) 9000-0173', '1992-05-13'), ('Paciente 174', '100.000.00-174', '(11) 9000-0174', '1993-06-14'), ('Paciente 175', '100.000.00-175', '(11) 9000-0175', '1994-07-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 176', '100.000.00-176', '(11) 9000-0176', '1995-08-16'), ('Paciente 177', '100.000.00-177', '(11) 9000-0177', '1996-09-17'), ('Paciente 178', '100.000.00-178', '(11) 9000-0178', '1997-10-18'), ('Paciente 179', '100.000.00-179', '(11) 9000-0179', '1998-11-19'), ('Paciente 180', '100.000.00-180', '(11) 9000-0180', '1999-12-20');

-- CONTINUAÇÃO: POPULANDO PACIENTES (181 AO 240)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 181', '100.000.00-181', '(11) 9000-0181', '1990-01-18'), ('Paciente 182', '100.000.00-182', '(11) 9000-0182', '1991-02-19'), ('Paciente 183', '100.000.00-183', '(11) 9000-0183', '1992-03-20'), ('Paciente 184', '100.000.00-184', '(11) 9000-0184', '1993-04-21'), ('Paciente 185', '100.000.00-185', '(11) 9000-0185', '1994-05-22');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 186', '100.000.00-186', '(11) 9000-0186', '1995-06-23'), ('Paciente 187', '100.000.00-187', '(11) 9000-0187', '1996-07-24'), ('Paciente 188', '100.000.00-188', '(11) 9000-0188', '1997-08-25'), ('Paciente 189', '100.000.00-189', '(11) 9000-0189', '1998-09-26'), ('Paciente 190', '100.000.00-190', '(11) 9000-0190', '1999-10-27');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 191', '100.000.00-191', '(11) 9000-0191', '1990-11-28'), ('Paciente 192', '100.000.00-192', '(11) 9000-0192', '1991-12-29'), ('Paciente 193', '100.000.00-193', '(11) 9000-0193', '1992-01-30'), ('Paciente 194', '100.000.00-194', '(11) 9000-0194', '1993-02-14'), ('Paciente 195', '100.000.00-195', '(11) 9000-0195', '1994-03-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 196', '100.000.00-196', '(11) 9000-0196', '1995-04-16'), ('Paciente 197', '100.000.00-197', '(11) 9000-0197', '1996-05-17'), ('Paciente 198', '100.000.00-198', '(11) 9000-0198', '1997-06-18'), ('Paciente 199', '100.000.00-199', '(11) 9000-0199', '1998-07-19'), ('Paciente 200', '100.000.00-200', '(11) 9000-0200', '1999-08-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 201', '100.000.00-201', '(11) 9000-0201', '1990-09-21'), ('Paciente 202', '100.000.00-202', '(11) 9000-0202', '1991-10-22'), ('Paciente 203', '100.000.00-203', '(11) 9000-0203', '1992-11-23'), ('Paciente 204', '100.000.00-204', '(11) 9000-0204', '1993-12-24'), ('Paciente 205', '100.000.00-205', '(11) 9000-0205', '1994-01-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 206', '100.000.00-206', '(11) 9000-0206', '1995-02-26'), ('Paciente 207', '100.000.00-207', '(11) 9000-0207', '1996-03-27'), ('Paciente 208', '100.000.00-208', '(11) 9000-0208', '1997-04-28'), ('Paciente 209', '100.000.00-209', '(11) 9000-0209', '1998-05-29'), ('Paciente 210', '100.000.00-210', '(11) 9000-0210', '1999-06-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 211', '100.000.00-211', '(11) 9000-0211', '1990-07-31'), ('Paciente 212', '100.000.00-212', '(11) 9000-0212', '1991-08-01'), ('Paciente 213', '100.000.00-213', '(11) 9000-0213', '1992-09-02'), ('Paciente 214', '100.000.00-214', '(11) 9000-0214', '1993-10-03'), ('Paciente 215', '100.000.00-215', '(11) 9000-0215', '1994-11-04');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 216', '100.000.00-216', '(11) 9000-0216', '1995-12-05'), ('Paciente 217', '100.000.00-217', '(11) 9000-0217', '1996-01-06'), ('Paciente 218', '100.000.00-218', '(11) 9000-0218', '1997-02-07'), ('Paciente 219', '100.000.00-219', '(11) 9000-0219', '1998-03-08'), ('Paciente 220', '100.000.00-220', '(11) 9000-0220', '1999-04-09');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 221', '100.000.00-221', '(11) 9000-0221', '1990-05-10'), ('Paciente 222', '100.000.00-222', '(11) 9000-0222', '1991-06-11'), ('Paciente 223', '100.000.00-223', '(11) 9000-0223', '1992-07-12'), ('Paciente 224', '100.000.00-224', '(11) 9000-0224', '1993-08-13'), ('Paciente 225', '100.000.00-225', '(11) 9000-0225', '1994-09-14');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 226', '100.000.00-226', '(11) 9000-0226', '1995-10-15'), ('Paciente 227', '100.000.00-227', '(11) 9000-0227', '1996-11-16'), ('Paciente 228', '100.000.00-228', '(11) 9000-0228', '1997-12-17'), ('Paciente 229', '100.000.00-229', '(11) 9000-0229', '1998-01-18'), ('Paciente 230', '100.000.00-230', '(11) 9000-0230', '1999-02-19');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 231', '100.000.00-231', '(11) 9000-0231', '1990-03-20'), ('Paciente 232', '100.000.00-232', '(11) 9000-0232', '1991-04-21'), ('Paciente 233', '100.000.00-233', '(11) 9000-0233', '1992-05-22'), ('Paciente 234', '100.000.00-234', '(11) 9000-0234', '1993-06-23'), ('Paciente 235', '100.000.00-235', '(11) 9000-0235', '1994-07-24');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 236', '100.000.00-236', '(11) 9000-0236', '1995-08-25'), ('Paciente 237', '100.000.00-237', '(11) 9000-0237', '1996-09-26'), ('Paciente 238', '100.000.00-238', '(11) 9000-0238', '1997-10-27'), ('Paciente 239', '100.000.00-239', '(11) 9000-0239', '1998-11-28'), ('Paciente 240', '100.000.00-240', '(11) 9000-0240', '1999-12-29');

-- CONTINUAÇÃO: POPULANDO PACIENTES (241 AO 300)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 241', '100.000.00-241', '(11) 9000-0241', '1990-01-01'), ('Paciente 242', '100.000.00-242', '(11) 9000-0242', '1991-02-02'), ('Paciente 243', '100.000.00-243', '(11) 9000-0243', '1992-03-03'), ('Paciente 244', '100.000.00-244', '(11) 9000-0244', '1993-04-04'), ('Paciente 245', '100.000.00-245', '(11) 9000-0245', '1994-05-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 246', '100.000.00-246', '(11) 9000-0246', '1995-06-06'), ('Paciente 247', '100.000.00-247', '(11) 9000-0247', '1996-07-07'), ('Paciente 248', '100.000.00-248', '(11) 9000-0248', '1997-08-08'), ('Paciente 249', '100.000.00-249', '(11) 9000-0249', '1998-09-09'), ('Paciente 250', '100.000.00-250', '(11) 9000-0250', '1999-10-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 251', '100.000.00-251', '(11) 9000-0251', '1990-11-11'), ('Paciente 252', '100.000.00-252', '(11) 9000-0252', '1991-12-12'), ('Paciente 253', '100.000.00-253', '(11) 9000-0253', '1992-01-13'), ('Paciente 254', '100.000.00-254', '(11) 9000-0254', '1993-02-14'), ('Paciente 255', '100.000.00-255', '(11) 9000-0255', '1994-03-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 256', '100.000.00-256', '(11) 9000-0256', '1995-04-16'), ('Paciente 257', '100.000.00-257', '(11) 9000-0257', '1996-05-17'), ('Paciente 258', '100.000.00-258', '(11) 9000-0258', '1997-06-18'), ('Paciente 259', '100.000.00-259', '(11) 9000-0259', '1998-07-19'), ('Paciente 260', '100.000.00-260', '(11) 9000-0260', '1999-08-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 261', '100.000.00-261', '(11) 9000-0261', '1990-09-21'), ('Paciente 262', '100.000.00-262', '(11) 9000-0262', '1991-10-22'), ('Paciente 263', '100.000.00-263', '(11) 9000-0263', '1992-11-23'), ('Paciente 264', '100.000.00-264', '(11) 9000-0264', '1993-12-24'), ('Paciente 265', '100.000.00-265', '(11) 9000-0265', '1994-01-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 266', '100.000.00-266', '(11) 9000-0266', '1995-02-26'), ('Paciente 267', '100.000.00-267', '(11) 9000-0267', '1996-03-27'), ('Paciente 268', '100.000.00-268', '(11) 9000-0268', '1997-04-28'), ('Paciente 269', '100.000.00-269', '(11) 9000-0269', '1998-05-29'), ('Paciente 270', '100.000.00-270', '(11) 9000-0270', '1999-06-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 271', '100.000.00-271', '(11) 9000-0271', '1990-07-31'), ('Paciente 272', '100.000.00-272', '(11) 9000-0272', '1991-08-01'), ('Paciente 273', '100.000.00-273', '(11) 9000-0273', '1992-09-02'), ('Paciente 274', '100.000.00-274', '(11) 9000-0274', '1993-10-03'), ('Paciente 275', '100.000.00-275', '(11) 9000-0275', '1994-11-04');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 276', '100.000.00-276', '(11) 9000-0276', '1995-12-05'), ('Paciente 277', '100.000.00-277', '(11) 9000-0277', '1996-01-06'), ('Paciente 278', '100.000.00-278', '(11) 9000-0278', '1997-02-07'), ('Paciente 279', '100.000.00-279', '(11) 9000-0279', '1998-03-08'), ('Paciente 280', '100.000.00-280', '(11) 9000-0280', '1999-04-09');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 281', '100.000.00-281', '(11) 9000-0281', '1990-05-10'), ('Paciente 282', '100.000.00-282', '(11) 9000-0282', '1991-06-11'), ('Paciente 283', '100.000.00-283', '(11) 9000-0283', '1992-07-12'), ('Paciente 284', '100.000.00-284', '(11) 9000-0284', '1993-08-13'), ('Paciente 285', '100.000.00-285', '(11) 9000-0285', '1994-09-14');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 286', '100.000.00-286', '(11) 9000-0286', '1995-10-15'), ('Paciente 287', '100.000.00-287', '(11) 9000-0287', '1996-11-16'), ('Paciente 288', '100.000.00-288', '(11) 9000-0288', '1997-12-17'), ('Paciente 289', '100.000.00-289', '(11) 9000-0289', '1998-01-18'), ('Paciente 290', '100.000.00-290', '(11) 9000-0290', '1999-02-19');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 291', '100.000.00-291', '(11) 9000-0291', '1990-03-20'), ('Paciente 292', '100.000.00-292', '(11) 9000-0292', '1991-04-21'), ('Paciente 293', '100.000.00-293', '(11) 9000-0293', '1992-05-22'), ('Paciente 294', '100.000.00-294', '(11) 9000-0294', '1993-06-23'), ('Paciente 295', '100.000.00-295', '(11) 9000-0295', '1994-07-24');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 296', '100.000.00-296', '(11) 9000-0296', '1995-08-25'), ('Paciente 297', '100.000.00-297', '(11) 9000-0297', '1996-09-26'), ('Paciente 298', '100.000.00-298', '(11) 9000-0298', '1997-10-27'), ('Paciente 299', '100.000.00-299', '(11) 9000-0299', '1998-11-28'), ('Paciente 300', '100.000.00-300', '(11) 9000-0300', '1999-12-29');

-- CONTINUAÇÃO: POPULANDO PACIENTES (301 AO 360)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 301', '100.000.00-301', '(11) 9000-0301', '1990-01-30'), ('Paciente 302', '100.000.00-302', '(11) 9000-0302', '1991-02-28'), ('Paciente 303', '100.000.00-303', '(11) 9000-0303', '1992-03-31'), ('Paciente 304', '100.000.00-304', '(11) 9000-0304', '1993-04-30'), ('Paciente 305', '100.000.00-305', '(11) 9000-0305', '1994-05-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 306', '100.000.00-306', '(11) 9000-0306', '1995-06-30'), ('Paciente 307', '100.000.00-307', '(11) 9000-0307', '1996-07-31'), ('Paciente 308', '100.000.00-308', '(11) 9000-0308', '1997-08-31'), ('Paciente 309', '100.000.00-309', '(11) 9000-0309', '1998-09-30'), ('Paciente 310', '100.000.00-310', '(11) 9000-0310', '1999-10-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 311', '100.000.00-311', '(11) 9000-0311', '1990-11-30'), ('Paciente 312', '100.000.00-312', '(11) 9000-0312', '1991-12-31'), ('Paciente 313', '100.000.00-313', '(11) 9000-0313', '1992-01-01'), ('Paciente 314', '100.000.00-314', '(11) 9000-0314', '1993-02-02'), ('Paciente 315', '100.000.00-315', '(11) 9000-0315', '1994-03-03');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 316', '100.000.00-316', '(11) 9000-0316', '1995-04-04'), ('Paciente 317', '100.000.00-317', '(11) 9000-0317', '1996-05-05'), ('Paciente 318', '100.000.00-318', '(11) 9000-0318', '1997-06-06'), ('Paciente 319', '100.000.00-319', '(11) 9000-0319', '1998-07-07'), ('Paciente 320', '100.000.00-320', '(11) 9000-0320', '1999-08-08');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 321', '100.000.00-321', '(11) 9000-0321', '1990-09-09'), ('Paciente 322', '100.000.00-322', '(11) 9000-0322', '1991-10-10'), ('Paciente 323', '100.000.00-323', '(11) 9000-0323', '1992-11-11'), ('Paciente 324', '100.000.00-324', '(11) 9000-0324', '1993-12-12'), ('Paciente 325', '100.000.00-325', '(11) 9000-0325', '1994-01-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 326', '100.000.00-326', '(11) 9000-0326', '1995-02-16'), ('Paciente 327', '100.000.00-327', '(11) 9000-0327', '1996-03-17'), ('Paciente 328', '100.000.00-328', '(11) 9000-0328', '1997-04-18'), ('Paciente 329', '100.000.00-329', '(11) 9000-0329', '1998-05-19'), ('Paciente 330', '100.000.00-330', '(11) 9000-0330', '1999-06-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 331', '100.000.00-331', '(11) 9000-0331', '1990-07-21'), ('Paciente 332', '100.000.00-332', '(11) 9000-0332', '1991-08-22'), ('Paciente 333', '100.000.00-333', '(11) 9000-0333', '1992-09-23'), ('Paciente 334', '100.000.00-334', '(11) 9000-0334', '1993-10-24'), ('Paciente 335', '100.000.00-335', '(11) 9000-0335', '1994-11-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 336', '100.000.00-336', '(11) 9000-0336', '1995-12-26'), ('Paciente 337', '100.000.00-337', '(11) 9000-0337', '1996-01-27'), ('Paciente 338', '100.000.00-338', '(11) 9000-0338', '1997-02-28'), ('Paciente 339', '100.000.00-339', '(11) 9000-0339', '1998-03-29'), ('Paciente 340', '100.000.00-340', '(11) 9000-0340', '1999-04-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 341', '100.000.00-341', '(11) 9000-0341', '1990-05-01'), ('Paciente 342', '100.000.00-342', '(11) 9000-0342', '1991-06-02'), ('Paciente 343', '100.000.00-343', '(11) 9000-0343', '1992-07-03'), ('Paciente 344', '100.000.00-344', '(11) 9000-0344', '1993-08-04'), ('Paciente 345', '100.000.00-345', '(11) 9000-0345', '1994-09-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 346', '100.000.00-346', '(11) 9000-0346', '1995-10-06'), ('Paciente 347', '100.000.00-347', '(11) 9000-0347', '1996-11-07'), ('Paciente 348', '100.000.00-348', '(11) 9000-0348', '1997-12-08'), ('Paciente 349', '100.000.00-349', '(11) 9000-0349', '1998-01-09'), ('Paciente 350', '100.000.00-350', '(11) 9000-0350', '1999-02-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 351', '100.000.00-351', '(11) 9000-0351', '1990-03-11'), ('Paciente 352', '100.000.00-352', '(11) 9000-0352', '1991-04-12'), ('Paciente 353', '100.000.00-353', '(11) 9000-0353', '1992-05-13'), ('Paciente 354', '100.000.00-354', '(11) 9000-0354', '1993-06-14'), ('Paciente 355', '100.000.00-355', '(11) 9000-0355', '1994-07-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 356', '100.000.00-356', '(11) 9000-0356', '1995-08-16'), ('Paciente 357', '100.000.00-357', '(11) 9000-0357', '1996-09-17'), ('Paciente 358', '100.000.00-358', '(11) 9000-0358', '1997-10-18'), ('Paciente 359', '100.000.00-359', '(11) 9000-0359', '1998-11-19'), ('Paciente 360', '100.000.00-360', '(11) 9000-0360', '1999-12-20');

-- CONTINUAÇÃO: POPULANDO PACIENTES (361 AO 420)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 361', '100.000.00-361', '(11) 9000-0361', '1990-01-21'), ('Paciente 362', '100.000.00-362', '(11) 9000-0362', '1991-02-22'), ('Paciente 363', '100.000.00-363', '(11) 9000-0363', '1992-03-23'), ('Paciente 364', '100.000.00-364', '(11) 9000-0364', '1993-04-24'), ('Paciente 365', '100.000.00-365', '(11) 9000-0365', '1994-05-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 366', '100.000.00-366', '(11) 9000-0366', '1995-06-26'), ('Paciente 367', '100.000.00-367', '(11) 9000-0367', '1996-07-27'), ('Paciente 368', '100.000.00-368', '(11) 9000-0368', '1997-08-28'), ('Paciente 369', '100.000.00-369', '(11) 9000-0369', '1998-09-29'), ('Paciente 370', '100.000.00-370', '(11) 9000-0370', '1999-10-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 371', '100.000.00-371', '(11) 9000-0371', '1990-11-01'), ('Paciente 372', '100.000.00-372', '(11) 9000-0372', '1991-12-02'), ('Paciente 373', '100.000.00-373', '(11) 9000-0373', '1992-01-03'), ('Paciente 374', '100.000.00-374', '(11) 9000-0374', '1993-02-04'), ('Paciente 375', '100.000.00-375', '(11) 9000-0375', '1994-03-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 376', '100.000.00-376', '(11) 9000-0376', '1995-04-06'), ('Paciente 377', '100.000.00-377', '(11) 9000-0377', '1996-05-07'), ('Paciente 378', '100.000.00-378', '(11) 9000-0378', '1997-06-08'), ('Paciente 379', '100.000.00-379', '(11) 9000-0379', '1998-07-09'), ('Paciente 380', '100.000.00-380', '(11) 9000-0380', '1999-08-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 381', '100.000.00-381', '(11) 9000-0381', '1990-09-11'), ('Paciente 382', '100.000.00-382', '(11) 9000-0382', '1991-10-12'), ('Paciente 383', '100.000.00-383', '(11) 9000-0383', '1992-11-13'), ('Paciente 384', '100.000.00-384', '(11) 9000-0384', '1993-12-14'), ('Paciente 385', '100.000.00-385', '(11) 9000-0385', '1994-01-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 386', '100.000.00-386', '(11) 9000-0386', '1995-02-16'), ('Paciente 387', '100.000.00-387', '(11) 9000-0387', '1996-03-17'), ('Paciente 388', '100.000.00-388', '(11) 9000-0388', '1997-04-18'), ('Paciente 389', '100.000.00-389', '(11) 9000-0389', '1998-05-19'), ('Paciente 390', '100.000.00-390', '(11) 9000-0390', '1999-06-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 391', '100.000.00-391', '(11) 9000-0391', '1990-07-21'), ('Paciente 392', '100.000.00-392', '(11) 9000-0392', '1991-08-22'), ('Paciente 393', '100.000.00-393', '(11) 9000-0393', '1992-09-23'), ('Paciente 394', '100.000.00-394', '(11) 9000-0394', '1993-10-24'), ('Paciente 395', '100.000.00-395', '(11) 9000-0395', '1994-11-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 396', '100.000.00-396', '(11) 9000-0396', '1995-12-26'), ('Paciente 397', '100.000.00-397', '(11) 9000-0397', '1996-01-27'), ('Paciente 398', '100.000.00-398', '(11) 9000-0398', '1997-02-28'), ('Paciente 399', '100.000.00-399', '(11) 9000-0399', '1998-03-29'), ('Paciente 400', '100.000.00-400', '(11) 9000-0400', '1999-04-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 401', '100.000.00-401', '(11) 9000-0401', '1990-05-01'), ('Paciente 402', '100.000.00-402', '(11) 9000-0402', '1991-06-02'), ('Paciente 403', '100.000.00-403', '(11) 9000-0403', '1992-07-03'), ('Paciente 404', '100.000.00-404', '(11) 9000-0404', '1993-08-04'), ('Paciente 405', '100.000.00-405', '(11) 9000-0405', '1994-09-05');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 406', '100.000.00-406', '(11) 9000-0406', '1995-10-06'), ('Paciente 407', '100.000.00-407', '(11) 9000-0407', '1996-11-07'), ('Paciente 408', '100.000.00-408', '(11) 9000-0408', '1997-12-08'), ('Paciente 409', '100.000.00-409', '(11) 9000-0409', '1998-01-09'), ('Paciente 410', '100.000.00-410', '(11) 9000-0410', '1999-02-10');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 411', '100.000.00-411', '(11) 9000-0411', '1990-03-11'), ('Paciente 412', '100.000.00-412', '(11) 9000-0412', '1991-04-12'), ('Paciente 413', '100.000.00-413', '(11) 9000-0413', '1992-05-13'), ('Paciente 414', '100.000.00-414', '(11) 9000-0414', '1993-06-14'), ('Paciente 415', '100.000.00-415', '(11) 9000-0415', '1994-07-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 416', '100.000.00-416', '(11) 9000-0416', '1995-08-16'), ('Paciente 417', '100.000.00-417', '(11) 9000-0417', '1996-09-17'), ('Paciente 418', '100.000.00-418', '(11) 9000-0418', '1997-10-18'), ('Paciente 419', '100.000.00-419', '(11) 9000-0419', '1998-11-19'), ('Paciente 420', '100.000.00-420', '(11) 9000-0420', '1999-12-20');

-- CONTINUAÇÃO: POPULANDO PACIENTES (421 AO 480)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 421', '100.000.00-421', '(11) 9000-0421', '1990-01-18'), ('Paciente 422', '100.000.00-422', '(11) 9000-0422', '1991-02-19'), ('Paciente 423', '100.000.00-423', '(11) 9000-0423', '1992-03-20'), ('Paciente 424', '100.000.00-424', '(11) 9000-0424', '1993-04-21'), ('Paciente 425', '100.000.00-425', '(11) 9000-0425', '1994-05-22');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 426', '100.000.00-426', '(11) 9000-0426', '1995-06-23'), ('Paciente 427', '100.000.00-427', '(11) 9000-0427', '1996-07-24'), ('Paciente 428', '100.000.00-428', '(11) 9000-0428', '1997-08-25'), ('Paciente 429', '100.000.00-429', '(11) 9000-0429', '1998-09-26'), ('Paciente 430', '100.000.00-430', '(11) 9000-0430', '1999-10-27');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 431', '100.000.00-431', '(11) 9000-0431', '1990-11-28'), ('Paciente 432', '100.000.00-432', '(11) 9000-0432', '1991-12-29'), ('Paciente 433', '100.000.00-433', '(11) 9000-0433', '1992-01-30'), ('Paciente 434', '100.000.00-434', '(11) 9000-0434', '1993-02-14'), ('Paciente 435', '100.000.00-435', '(11) 9000-0435', '1994-03-15');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 436', '100.000.00-436', '(11) 9000-0436', '1995-04-16'), ('Paciente 437', '100.000.00-437', '(11) 9000-0437', '1996-05-17'), ('Paciente 438', '100.000.00-438', '(11) 9000-0438', '1997-06-18'), ('Paciente 439', '100.000.00-439', '(11) 9000-0439', '1998-07-19'), ('Paciente 440', '100.000.00-440', '(11) 9000-0440', '1999-08-20');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 441', '100.000.00-441', '(11) 9000-0441', '1990-09-21'), ('Paciente 442', '100.000.00-442', '(11) 9000-0442', '1991-10-22'), ('Paciente 443', '100.000.00-443', '(11) 9000-0443', '1992-11-23'), ('Paciente 444', '100.000.00-444', '(11) 9000-0444', '1993-12-24'), ('Paciente 445', '100.000.00-445', '(11) 9000-0445', '1994-01-25');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 446', '100.000.00-446', '(11) 9000-0446', '1995-02-26'), ('Paciente 447', '100.000.00-447', '(11) 9000-0447', '1996-03-27'), ('Paciente 448', '100.000.00-448', '(11) 9000-0448', '1997-04-28'), ('Paciente 449', '100.000.00-449', '(11) 9000-0449', '1998-05-29'), ('Paciente 450', '100.000.00-450', '(11) 9000-0450', '1999-06-30');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 451', '100.000.00-451', '(11) 9000-0451', '1990-07-31'), ('Paciente 452', '100.000.00-452', '(11) 9000-0452', '1991-08-01'), ('Paciente 453', '100.000.00-453', '(11) 9000-0453', '1992-09-02'), ('Paciente 454', '100.000.00-454', '(11) 9000-0454', '1993-10-03'), ('Paciente 455', '100.000.00-455', '(11) 9000-0455', '1994-11-04');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 456', '100.000.00-456', '(11) 9000-0456', '1995-12-05'), ('Paciente 457', '100.000.00-457', '(11) 9000-0457', '1996-01-06'), ('Paciente 458', '100.000.00-458', '(11) 9000-0458', '1997-02-07'), ('Paciente 459', '100.000.00-459', '(11) 9000-0459', '1998-03-08'), ('Paciente 460', '100.000.00-460', '(11) 9000-0460', '1999-04-09');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 461', '100.000.00-461', '(11) 9000-0461', '1990-05-10'), ('Paciente 462', '100.000.00-462', '(11) 9000-0462', '1991-06-11'), ('Paciente 463', '100.000.00-463', '(11) 9000-0463', '1992-07-12'), ('Paciente 464', '100.000.00-464', '(11) 9000-0464', '1993-08-13'), ('Paciente 465', '100.000.00-465', '(11) 9000-0465', '1994-09-14');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 466', '100.000.00-466', '(11) 9000-0466', '1995-10-15'), ('Paciente 467', '100.000.00-467', '(11) 9000-0467', '1996-11-16'), ('Paciente 468', '100.000.00-468', '(11) 9000-0468', '1997-12-17'), ('Paciente 469', '100.000.00-469', '(11) 9000-0469', '1998-01-18'), ('Paciente 470', '100.000.00-470', '(11) 9000-0470', '1999-02-19');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 471', '100.000.00-471', '(11) 9000-0471', '1990-03-20'), ('Paciente 472', '100.000.00-472', '(11) 9000-0472', '1991-04-21'), ('Paciente 473', '100.000.00-473', '(11) 9000-0473', '1992-05-22'), ('Paciente 474', '100.000.00-474', '(11) 9000-0474', '1993-06-23'), ('Paciente 475', '100.000.00-475', '(11) 9000-0475', '1994-07-24');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 476', '100.000.00-476', '(11) 9000-0476', '1995-08-25'), ('Paciente 477', '100.000.00-477', '(11) 9000-0477', '1996-09-26'), ('Paciente 478', '100.000.00-478', '(11) 9000-0478', '1997-10-27'), ('Paciente 479', '100.000.00-479', '(11) 9000-0479', '1998-11-28'), ('Paciente 480', '100.000.00-480', '(11) 9000-0480', '1999-12-29');

-- BLOCO FINAL: POPULANDO PACIENTES (481 AO 500)
INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 481', '100.000.00-481', '(11) 9000-0481', '1990-01-30'), ('Paciente 482', '100.000.00-482', '(11) 9000-0482', '1991-02-28'), ('Paciente 483', '100.000.00-483', '(11) 9000-0483', '1992-03-31'), ('Paciente 484', '100.000.00-484', '(11) 9000-0484', '1993-04-30'), ('Paciente 485', '100.000.00-485', '(11) 9000-0485', '1994-05-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 486', '100.000.00-486', '(11) 9000-0486', '1995-06-30'), ('Paciente 487', '100.000.00-487', '(11) 9000-0487', '1996-07-31'), ('Paciente 488', '100.000.00-488', '(11) 9000-0488', '1997-08-31'), ('Paciente 489', '100.000.00-489', '(11) 9000-0489', '1998-09-30'), ('Paciente 490', '100.000.00-490', '(11) 9000-0490', '1999-10-31');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 491', '100.000.00-491', '(11) 9000-0491', '1990-11-30'), ('Paciente 492', '100.000.00-492', '(11) 9000-0492', '1991-12-31'), ('Paciente 493', '100.000.00-493', '(11) 9000-0493', '1992-01-01'), ('Paciente 494', '100.000.00-494', '(11) 9000-0494', '1993-02-02'), ('Paciente 495', '100.000.00-495', '(11) 9000-0495', '1994-03-03');

INSERT INTO patients (full_name, cpf, phone, birth_date) VALUES
('Paciente 496', '100.000.00-496', '(11) 9000-0496', '1995-04-04'), ('Paciente 497', '100.000.00-497', '(11) 9000-0497', '1996-05-05'), ('Paciente 498', '100.000.00-498', '(11) 9000-0498', '1997-06-06'), ('Paciente 499', '100.000.00-499', '(11) 9000-0499', '1998-07-07'), ('Paciente 500', '100.000.00-500', '(11) 9000-0500', '1999-08-08');

-- Permissões

INSERT INTO permissions (module, action, description) VALUES 
-- Módulo de Usuários e Sistema
('usuarios', 'gerenciar', 'Criar, editar e desativar usuários do sistema'),
('configuracoes', 'escalas_configurar', 'Definir plantões e horários de atendimento da equipe'),
('auditoria', 'acessar', 'Visualizar logs de alterações e acessos dos usuários'),
('relatorios', 'exportar', 'Gerar e baixar relatórios estatísticos e gerenciais'),

-- Módulo de Atendimento e Recepção
('consultas', 'agendar', 'Agendar, remarcar e cancelar consultas médicas'),
('pacientes', 'cadastrar', 'Criar e atualizar o cadastro básico de pacientes'),
('painel', 'chamar', 'Controlar o painel eletrônico de chamadas da recepção'),

-- Módulo Assistencial e Clínico
('prontuario', 'visualizar', 'Apenas visualizar o histórico clínico do paciente'),
('prontuario', 'escrever', 'Inserir evoluções, diagnósticos e receitas no prontuário'),
('triagem', 'realizar', 'Registrar sinais vitais e classificação de risco (Manchester)'),
('exames', 'solicitar', 'Emitir pedidos de exames laboratoriais ou de imagem'),
('exames', 'laudar', 'Inserir resultados e laudos de exames no sistema'),

-- Módulo de Internação e Leitos
('leitos', 'gerenciar', 'Controlar a ocupação, reserva e higienização de leitos'),
('internacao', 'dar_alta', 'Registrar a saída oficial e desinternação do paciente'),

-- Módulo de Farmácia e Suprimentos
('medicamentos', 'dispensar', 'Dar baixa e entregar medicamentos prescritos aos setores'),
('medicamentos', 'aprovar_prescricao', 'Validar e liberar receitas e dosagens na farmácia'),
('estoque', 'controlar', 'Registrar entrada de insumos e atualizar inventário hospitalar'),

-- Módulo Financeiro e Faturamento
('faturamento', 'enviar_guias', 'Emitir e enviar lotes de guias de convênio (TISS/TUSS)'),
('financeiro', 'visualizar', 'Acessar relatórios de fluxo de caixa e contas a pagar/receber'),
('financeiro', 'editar', 'Dar baixa em pagamentos e emitir notas fiscais hospitalares');

------

-- =========================================================================
-- SCRIPT DE INSERÇÃO - TABELA ROLE_PERMISSIONS (CENÁRIO HOSPITALAR)
-- =========================================================================

insert into
  role_permissions (role_id, permission_id)
select
  r.id as role_id,
  p.id as permission_id
from
  roles r,
  permissions p
where
  r.name in ('secretaria')
  and p.module in ('pacientes', 'consultas')

==============

INSERT INTO user_roles (user_id, role_id)
SELECT u.id, r.id 
FROM users u, roles r 
WHERE u.email = 'carlos@email.com' 
  AND r.name = 'gerente'
  AND NOT EXISTS (
    SELECT 1 FROM user_roles ur 
    JOIN roles r2 ON ur.role_id = r2.id
    WHERE ur.user_id = u.id AND r2.name = 'gerente'
  );

=====================

-- =========================================================================
-- 1. PERMISSIONS (faltando completamente)
-- =========================================================================

INSERT INTO permissions (module, action, description) VALUES
('usuarios', 'criar', 'Criar usuários'),
('usuarios', 'listar', 'Listar usuários'),
('usuarios', 'editar', 'Editar usuários'),
('usuarios', 'excluir', 'Excluir usuários'),

('pacientes', 'criar', 'Criar pacientes'),
('pacientes', 'listar', 'Listar pacientes'),
('pacientes', 'editar', 'Editar pacientes'),
('pacientes', 'excluir', 'Excluir pacientes'),

('clinicas', 'criar', 'Criar clínicas'),
('clinicas', 'listar', 'Listar clínicas'),
('clinicas', 'editar', 'Editar clínicas'),
('clinicas', 'excluir', 'Excluir clínicas'),

('consultas', 'criar', 'Criar consultas'),
('consultas', 'listar', 'Listar consultas'),
('consultas', 'editar', 'Editar consultas'),
('consultas', 'cancelar', 'Cancelar consultas'),

('prontuarios', 'criar', 'Criar prontuários'),
('prontuarios', 'listar', 'Listar prontuários'),
('prontuarios', 'editar', 'Editar prontuários'),

('relatorios', 'visualizar', 'Visualizar relatórios'),
('financeiro', 'visualizar', 'Visualizar financeiro'),
('configuracoes', 'editar', 'Editar configurações');

-- =========================================================================
-- 2. ASSOCIANDO PERMISSÕES ÀS FUNÇÕES
-- =========================================================================
-- ADMIN recebe tudo
INSERT INTO role_permissions (role_id, permission_id) 
SELECT (SELECT id FROM roles WHERE name = 'admin'), id FROM permissions
ON CONFLICT (role_id, permission_id) DO NOTHING;

-- MÉDICO
INSERT INTO role_permissions (role_id, permission_id) 
SELECT (SELECT id FROM roles WHERE name = 'medico'), id FROM permissions 
WHERE module IN ('pacientes', 'consultas', 'prontuarios')
ON CONFLICT (role_id, permission_id) DO NOTHING;

-- SECRETÁRIA
INSERT INTO role_permissions (role_id, permission_id) 
SELECT (SELECT id FROM roles WHERE name = 'secretaria'), id FROM permissions 
WHERE module IN ('pacientes', 'consultas')
ON CONFLICT (role_id, permission_id) DO NOTHING;

-- GERENTE
INSERT INTO role_permissions (role_id, permission_id) 
SELECT (SELECT id FROM roles WHERE name = 'gerente'), id FROM permissions 
WHERE module IN ('pacientes', 'consultas', 'relatorios', 'financeiro', 'clinicas')
ON CONFLICT (role_id, permission_id) DO NOTHING;

-- =========================================================================
-- 3. FALTAM MAIS VÍNCULOS DE USUÁRIOS COM FUNÇÕES
-- (pelo menos 4 médicos, 4 secretárias e 4 gerentes)
-- =========================================================================

INSERT INTO user_roles (user_id, role_id) VALUES
((SELECT id FROM users WHERE email='gabriel@email.com'),
 (SELECT id FROM roles WHERE name='medico')),

((SELECT id FROM users WHERE email='larissa@email.com'),
 (SELECT id FROM roles WHERE name='medico')),

((SELECT id FROM users WHERE email='lucas@email.com'),
 (SELECT id FROM roles WHERE name='secretaria')),

((SELECT id FROM users WHERE email='amanda@email.com'),
 (SELECT id FROM roles WHERE name='secretaria')),

((SELECT id FROM users WHERE email='rodrigo@email.com'),
 (SELECT id FROM roles WHERE name='gerente')),

((SELECT id FROM users WHERE email='camila.nunes@email.com'),
 (SELECT id FROM roles WHERE name='gerente')),

((SELECT id FROM users WHERE email='bruno@email.com'),
 (SELECT id FROM roles WHERE name='medico')),

((SELECT id FROM users WHERE email='leticia@email.com'),
 (SELECT id FROM roles WHERE name='secretaria'));

-- =========================================================================
-- 4. FALTAM MAIS ASSOCIAÇÕES DE USUÁRIOS COM CLÍNICAS
-- (4 médicos em clínicas diferentes,
-- 4 secretárias em clínicas diferentes,
-- 4 gerentes em clínicas diferentes)
-- =========================================================================

INSERT INTO user_clinics (user_id, clinic_id) 
VALUES 
-- MÉDICOS 
((SELECT id FROM users WHERE email='mariana@email.com'), (SELECT id FROM clinics WHERE name='Clínica Alfa')), 
((SELECT id FROM users WHERE email='roberto@email.com'), (SELECT id FROM clinics WHERE name='Clínica Beta')), 
((SELECT id FROM users WHERE email='ricardo@email.com'), (SELECT id FROM clinics WHERE name='Clínica Gama')), 
((SELECT id FROM users WHERE email='camila@email.com'), (SELECT id FROM clinics WHERE name='Clínica Delta')), 
-- SECRETÁRIAS 
((SELECT id FROM users WHERE email='paulo@email.com'), (SELECT id FROM clinics WHERE name='Clínica Épsilon')), 
((SELECT id FROM users WHERE email='juliana@email.com'), (SELECT id FROM clinics WHERE name='Clínica Zeta')), 
((SELECT id FROM users WHERE email='beatriz@email.com'), (SELECT id FROM clinics WHERE name='Clínica Eta')), 
((SELECT id FROM users WHERE email='lucas@email.com'), (SELECT id FROM clinics WHERE name='Clínica Teta')), 
-- GERENTES 
((SELECT id FROM users WHERE email='ana@email.com'), (SELECT id FROM clinics WHERE name='Clínica Iota')), 
((SELECT id FROM users WHERE email='fernando@email.com'), (SELECT id FROM clinics WHERE name='Clínica Kapa')), 
((SELECT id FROM users WHERE email='rodrigo@email.com'), (SELECT id FROM clinics WHERE name='Clínica Lambda')), 
((SELECT id FROM users WHERE email='camila.nunes@email.com'), (SELECT id FROM clinics WHERE name='Clínica Mu'))
ON CONFLICT (user_id, clinic_id) DO NOTHING;

-- =========================================================================
-- 5. FALTAM PACIENTES
-- Atualmente existem apenas 360 pacientes.
-- Gerando mais 140 registros.
-- =========================================================================

INSERT INTO patients (full_name, cpf, phone, birth_date)
SELECT
    'Paciente ' || i,
    '200.000.00-' || i,
    '(11) 9999-' || LPAD(i::text,4,'0'),
    DATE '1990-01-01' + (i || ' days')::interval
FROM generate_series(361,500) AS i;
