-- 1_select apellido1 from empleado
select apellido1 from empleado

-- 2_Devuelve el nombre del departamento con mayor presupuesto y la cantidad que tiene asignada.
select nombre,presupuesto from departamento
    where presupuesto in(select max(presupuesto) from departamento)

-- 3_ Devuelve el nombre del departamento con menor presupuesto y la cantidad que tiene asignada.
select nombre,presupuesto from departamento
    where presupuesto in(select min(presupuesto) from departamento)

-- 4_ Devuelve el nombre del departamento con mayor presupuesto y la cantidad que tiene asignada.
    -- Sin hacer uso de MAX, ORDER BY ni LIMIT.
select nombre,presupuesto from departamento
    where presupuesto = (select presupuesto from departamento
                         where presupuesto >= all(select presupuesto from departamento))

-- 5_Devuelve el nombre del departamento con menor presupuesto y la cantidad que tiene asignada.
    -- Sin hacer uso de MIN, ORDER BY ni LIMIT. si hay varios, devuelve todos.
select nombre,presupuesto from departamento
    where presupuesto = (select distinct presupuesto from departamento
                         where presupuesto <= all(select presupuesto from departamento))   

-- 6_Devuelve los nombres de los departamentos que tienen empleados asociados. (Utilizando ALL o ANY).
-- IA
select nombre from departamento
    where id_departamento = any(select id_departamento from empleado)   

--My_QUERY
select nombre from departamento
    where id in (select id_departamento from empleado)

-- 7_ Devuelve los nombres de los departamentos que no tienen empleados asociados. (Utilizando ALL o ANY).
select d.nombre from departamento d
    where d.id <> all (select id_departamento from empleado)

-- 8_Devuelve los nombres de los departamentos que tienen empleados asociados. (Utilizando IN o NOT IN).
select nombre from departamento
    where id in (select id_departamento from empleado)