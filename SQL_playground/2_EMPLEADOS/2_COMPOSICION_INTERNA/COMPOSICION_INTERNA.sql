-- 1_Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
select * from empleado e
    join  departamento d
    where e.id_departamento = d.id

-- 2_Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado,
    -- en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.
select * from empleado e
    join  departamento d
    on e.id_departamento = d.id
    order by d.nombre, e.apellido1, e.apellido2, e.nombre

-- 3_Devuelve un listado con el identificador y el nombre del departamento, 
    -- solamente de aquellos departamentos que tienen empleados.
select d.id, d.nombre from departamento d
    where exists (select 1 from empleado e where e.id_departamento = d.id)

select distinct e.id_departamento,d.nombre from empleado e
    join departamento d 
    where d.id = e.id_departamento

-- 4_Devuelve un listado con el identificador, el nombre del departamento y el valor del presupuesto actual del que dispone, 
    -- solamente de aquellos departamentos que tienen empleados. 
    -- El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial (columna presupuesto)
    -- el valor de los gastos que ha generado (columna gastos).
select d.id, d.nombre, (d.presupuesto - d.gastos) as presupuesto_actual from departamento d
    where exists (select 1 from empleado e where e.id_departamento = d.id)

-- 5_Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.
select d.nombre,e.* from empleado e
    join departamento d
    on e.id_departamento = d.id
    where e.nif = '38382980M'

select d.nombre,e.* from departamento d
    join empleado e 
    where d.id = e.id_departamento and e.nif = '38382980M'

-- 6_Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.
select d.nombre,e.* from empleado e
    join departamento d
    on e.id_departamento = d.id
    where concat_ws(' ',e.nombre,e.apellido1,e.apellido2) = 'Pepe Ruiz Santana'

select d.nombre,e.* from departamento d 
    join empleado e 
    on d.id = e.id_departamento
    where e.nombre ='Pepe' and e.apellido1='Ruiz' and e.apellido2 ='Santana'

-- 7_Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
select e.* from empleado e
    join departamento d
    on e.id_departamento = d.id
    where d.nombre = 'I+D'
    order by e.apellido1, e.apellido2, e.nombre

select * from empleado e
    join departamento d 
    on e.id_departamento = d.id
    where d.nombre = 'I+D'
    order by e.nombre

-- 8_Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, 
-- Contabilidad o I+D. Ordena el resultado alfabéticamente.
select * from departamento d 
    join empleado e     
    where  d.id = e.id_departamento
    and d.nombre in ('Sistemas','Contabilidad','I+D')
    order by d.nombre

-- 9_Devuelve una lista con el nombre de los empleados que tienen los departamentos 
--que no tienen un presupuesto entre 100000 y 200000 euros.
select e.nombre from empleado e
    join departamento d
    on e.id_departamento = d.id
    where not (d.presupuesto between 100000 and 200000)

select * from  departamento d
    join  empleado e     
    on  d.id = e.id_departamento
    where d.presupuesto >200000 or d.presupuesto<100000

-- 10_Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL.
-- Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.
select distinct d.nombre from departamento d
    join empleado e
    on e.id_departamento = d.id
    where e.apellido2 is null
