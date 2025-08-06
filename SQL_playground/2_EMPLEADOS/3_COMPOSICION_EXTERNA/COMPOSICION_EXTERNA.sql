-- 1_Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.

-- MY_QUERY
select * from empleado e
    join departamento d 
    where e.id_departamento = d.id

-- 2_Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, 
    --en primer lugar por el nombre del departamento (en orden alfabético)
    --y en segundo lugar por los apellidos y el nombre de los empleados.

-- MY_QUERY
select * from empleado e
    join departamento d 
    on e.id_departamento = d.id
    order by d.nombre,e.apellido1,e.apellido2,e.nombre

-- 3_Devuelve un listado con el identificador y el nombre del departamento,
    -- solamente de aquellos departamentos que tienen empleados.

-- IA...Utilizando EXISTS o NOT EXISTS.
select d.id, d.nombre 
    from departamento d
    where exists (select 1 from empleado e 
                  where e.id_departamento = d.id)

-- MY_QUERY
select d.id,d.nombre from departamento d 
    where d.id in(select e.id_departamento from empleado e)

-- 4_Devuelve un listado con el identificador, el nombre del departamento y el valor del presupuesto actual del que dispone, 
    --solamente de aquellos departamentos que tienen empleados. El valor del presupuesto actual lo puede calcular 
    --restando al valor del presupuesto inicial (columna presupuesto) el valor de los gastos que ha generado (columna gastos).

-- IA...Utilizando EXISTS o NOT EXISTS.
select d.id, d.nombre, (d.presupuesto - d.gastos) as PresupuestoActual
    from departamento d
    where exists (select 1 from empleado e 
                  where e.id_departamento = d.id)   

-- MY_QUERY
select d.id,d.nombre,( d.presupuesto-d.gastos) PRESUPUESTO_ACTUAL 
    from departamento d
    where d.id in(select  e.id_departamento from empleado e )

-- 5_Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.

-- IA ...utilizando ON
select d.nombre from departamento d
    join empleado e on e.id_departamento = d.id
    where e.nif = '38382980M'

-- MY_QUERY
select d.nombre,e.* from departamento d 
    join empleado e 
    where e.id_departamento = d.id
    and e.nif = '38382980M'

-- 6_Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.

--MY_QUERY
select d.nombre,e.* from departamento d 
    join empleado e on d.id = e.id_departamento
    where concat_ws(' ',e.nombre,e.apellido1,e.apellido2)='Pepe Ruiz Santana'

-- 7_Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.

-- MY_QUERY
select * from empleado e 
    join departamento d 
    on e.id_departamento = d.id 
    where d.nombre = 'I+D'
    order by e.nombre

-- 8_Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas,
    -- Contabilidad o I+D. Ordena el resultado alfabéticamente.
    
-- MY_QUERY
select * from departamento d
    join  empleado e
    on e.id_departamento = d.id 
    where d.nombre in ('Sistemas','Contabilidad','I+D')

-- 9_ Devuelve una lista con el nombre de los empleados que tienen los departamentos
    -- que no tienen un presupuesto entre 100000 y 200000 euros.

-- MY_QUERY
select e.nombre from empleado e
    join departamento d 
    on e.id_departamento = d.id
    where d.presupuesto not between 100000 and 200000

-- 10_ Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. 
    --Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.
    
-- MY_QUERY
select distinct d.nombre from departamento d
    join empleado e on e.id_departamento = d.id
    where e.apellido2 is null