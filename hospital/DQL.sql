-- ====================================================================
-- 1. CONSULTAS DE AGRUPAMENTO (VISÃO GERAL DO SISTEMA)
-- ====================================================================

-- Lista todos os cargos existentes concatenados em uma única linha
SELECT string_agg(DISTINCT name, ', ') AS todos_os_cargos 
FROM roles;

-- Lista todos os módulos do sistema concatenados em uma única linha
SELECT string_agg(DISTINCT module, ', ') AS todos_os_modulos 
FROM permissions;

-- Lista todas as ações do sistema concatenadas em uma única linha
SELECT string_agg(DISTINCT action, ', ') AS todos_os_actions 
FROM permissions;


-- ====================================================================
-- 2. MAPEAMENTO DE CARGOS E ACESSOS DE CLÍNICAS
-- ====================================================================

-- Retorna quais módulos e ações cada cargo específico tem acesso no sistema
SELECT 
    r.name AS "Cargo", 
    c.name AS "Clínica", 
    u.full_name AS "Usuário" 
FROM user_clinics uc 
INNER JOIN clinics c ON c.id = uc.clinic_id 
INNER JOIN user_roles ur ON ur.user_id = uc.user_id 
INNER JOIN roles r ON r.id = ur.role_id 
INNER JOIN users u ON u.id = uc.user_id 
ORDER BY r.name, c.name;


-- ====================================================================
-- 3. RELATÓRIO GERAL DOS USUÁRIOS E SEUS ACESSOS
-- ====================================================================

-- Lista todos os usuários do sistema com seus respectivos cargos, módulos e ações permitidas
SELECT 
    u.full_name AS usuario, 
    r.name AS cargo, 
    p.module AS modulo, 
    p.action AS acao 
FROM users u 
JOIN user_roles ur ON u.id = ur.user_id 
JOIN roles r ON ur.role_id = r.id 
JOIN role_permissions rp ON r.id = rp.role_id 
JOIN permissions p ON rp.permission_id = p.id 
ORDER BY u.full_name, r.name, p.module, p.action;


-- ====================================================================
-- 4. FILTROS ESPECÍFICOS POR CARGO
-- ====================================================================

-- Filtra e retorna apenas os dados de acesso das pessoas com o cargo 'medico'
SELECT 
    u.full_name AS usuario, 
    r.name AS cargo, 
    p.module AS modulo, 
    p.action AS acao 
FROM users u 
JOIN user_roles ur ON u.id = ur.user_id 
JOIN roles r ON ur.role_id = r.id 
JOIN role_permissions rp ON r.id = rp.role_id 
JOIN permissions p ON rp.permission_id = p.id 
WHERE r.name = 'medico' -- Substitua 'medico' pelo nome exato como está salvo no seu banco (ex: 'Médico')
ORDER BY u.full_name, r.name, p.module, p.action;


-- ====================================================================
-- 5. MÉTRICAS E ESTATÍSTICAS
-- ====================================================================

-- Retorna a quantidade total de clínicas cadastradas no banco de dados
SELECT count(id) AS total_clinicas 
FROM clinics;


-- ====================================================================
-- 6. LISTAGEM DE PACIENTES
-- ====================================================================

-- Retorna todos os pacientes cadastrados no sistema em ordem alfabética
SELECT * 
FROM patients 
ORDER BY full_name;


-- ====================================================================
-- 7. CONSULTAS E ATENDIMENTOS
-- ====================================================================

-- Listar as consultas realizadas em uma data específica
SELECT * 
FROM consultations 
WHERE DATE(scheduled_at) = '2026-07-01' 
  AND status = 'REALIZADA';

-- Listar os médicos de uma determinada especialidade
SELECT 
    u.full_name AS medico, 
    r.name AS especialidade 
FROM users u 
JOIN user_roles ur ON ur.user_id = u.id 
JOIN roles r ON r.id = ur.role_id 
WHERE r.name = 'pediatra';

-- Liste os pacientes cujo nome começa com a letra 'A'
SELECT * 
FROM patients 
WHERE full_name LIKE 'A%';

-- Listar o nome do paciente e a data da consulta
SELECT 
    p.full_name AS paciente, 
    DATE(c.scheduled_at) AS data_consulta 
FROM patients p 
JOIN consultations c ON p.id = c.patient_id;

-- Listar o nome do paciente, o nome do médico e a data da consulta
SELECT 
    p.full_name AS paciente, 
    u.full_name AS medico, 
    DATE(c.scheduled_at) AS data_consulta 
FROM consultations c 
JOIN patients p ON p.id = c.patient_id 
JOIN users u ON u.id = c.doctor_id;

-- Liste os pacientes atendidos por um médico específico
SELECT p.full_name AS paciente
FROM consultations c 
JOIN patients p ON p.id = c.patient_id 
JOIN users u ON u.id = c.doctor_id 
WHERE u.full_name = 'Mariana Souza';

-- Liste consultas realizadas após uma data específica e de uma determinada especialidade
SELECT * 
FROM consultations c 
JOIN users u ON u.id = c.doctor_id 
JOIN user_roles ur ON ur.user_id = u.id 
JOIN roles r ON r.id = ur.role_id 
WHERE c.scheduled_at > '2026-07-03' 
  AND r.name = 'cardiologista' 
  AND c.status = 'REALIZADA';

-- Liste o nome do paciente, médico, especialidade e data da consulta (filtro e ordenação)
SELECT 
    p.full_name AS paciente, 
    u.full_name AS medico, 
    r.name AS especialidade, 
    DATE(c.scheduled_at) AS data_consulta 
FROM consultations c 
JOIN patients p ON p.id = c.patient_id 
JOIN users u ON u.id = c.doctor_id 
JOIN user_roles ur ON ur.user_id = u.id 
JOIN roles r ON r.id = ur.role_id 
WHERE p.full_name LIKE 'M%' 
  AND r.name IN ('cardiologista', 'pediatra', 'ortopedista', 'dermatologista') 
ORDER BY c.scheduled_at DESC; -- Ajustado para retornar a data mais recente primeiro

