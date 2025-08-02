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
