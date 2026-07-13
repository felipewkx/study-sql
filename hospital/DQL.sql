-- ====================================================================
-- 1. CONSULTAS DE AGRUPAMENTO (VISÃO GERAL DO SISTEMA)
-- ====================================================================

-- Lista todos os cargos existentes concatenados em uma única linha
SELECT string_agg(DISTINCT name, ', ') AS todos_os_cargos FROM roles;

-- Lista todos os módulos do sistema concatenados em uma única linha
SELECT string_agg(DISTINCT module, ', ') AS todos_os_modulos FROM permissions;

-- Lista todas as ações do sistema concatenadas em uma única linha
SELECT string_agg(DISTINCT action, ', ') AS todos_os_actions FROM permissions;


-- ====================================================================
-- 2. MAPEAMENTO DE CARGOS E SUAS PERMISSÕES
-- ====================================================================

-- Retorna quais módulos e ações cada cargo específico tem acesso no sistema
SELECT
    r.name AS Cargo,
    p.module AS Modulo,
    p.action AS Acao
FROM role_permissions rp
INNER JOIN roles r ON r.id = rp.role_id
INNER JOIN permissions p ON p.id = rp.permission_id;


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
ORDER BY
    u.full_name,
    r.name,
    p.module,
    p.action;


-- ====================================================================
-- 4. FILTROS ESPECÍFICOS POR CARGO
-- ====================================================================

-- Filtra e retorna apenas os dados de acesso das pessoas com o cargo de 'secretaria'
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
WHERE r.name = 'secretaria' -- Substitua 'Medico' pelo nome exato como está salvo no seu banco (ex: 'Médico')
ORDER BY u.full_name, r.name, p.module, p.action;


-- ====================================================================
-- 5. MÉTRICAS E ESTATÍSTICAS
-- ====================================================================

-- Retorna a quantidade total de clínicas (ou o que você quiser) cadastradas no banco de dados
SELECT count(id) FROM clinics;
