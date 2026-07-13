-- =========================================================================
-- SCRIPT DQL PARA SELECIONAR TABELAS
-- =========================================================================

-----------------------------------
select string_agg(DISTINCT name, ', ') AS todos_os_cargos FROM roles;

select string_agg(DISTINCT module, ', ') AS todos_os_modulos FROM permissions;

select string_agg(DISTINCT action, ', ') AS todos_os_actions FROM permissions;

-----------------------

  select
   r.name AS Cargo,
   p.module AS Modulo,
   p.action AS Acao
  FROM role_permissions rp
  INNER JOIN roles r ON r.id = rp.role_id
  INNER JOIN permissions p ON p.id = rp. permission_id;

------------------------

select
  u.full_name as usuario,
  r.name as cargo,
  p.module as modulo,
  p.action as acao
from
  users u
  join user_roles ur on u.id = ur.user_id
  join roles r on ur.role_id = r.id
  join role_permissions rp on r.id = rp.role_id
  join permissions p on rp.permission_id = p.id
order by
  u.full_name,
  r.name,
  p.module,
  p.action;

  