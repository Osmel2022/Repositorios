-- 1_Calcula la suma del presupuesto de todos los departamentos.
SELECT SUM(presupuesto) AS total_presupuesto
    FROM departamentos;

-- 2_Calcula la media del presupuesto de todos los departamentos.
SELECT AVG(presupuesto) AS media_presupuesto
    FROM departamentos;

-- 3_Calcula el valor mínimo del presupuesto de todos los departamentos.
SELECT MIN(presupuesto) AS minimo_presupuesto
    FROM departamentos;

-- 4_Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con menor presupuesto.
SELECT nombre, presupuesto
    FROM departamentos
    WHERE presupuesto = (SELECT MIN(presupuesto) FROM departamentos);

-- 5_Calcula el valor máximo del presupuesto de todos los departamentos.
SELECT MAX(presupuesto) AS maximo_presupuesto
    FROM departamentos;

-- 6_Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con mayor presupuesto.
SELECT nombre, presupuesto
    FROM departamentos
    WHERE presupuesto = (SELECT MAX(presupuesto) FROM departamentos);

-- 7_Calcula el número total de empleados que hay en la tabla empleado.
SELECT COUNT(*)  FROM empleados;

-- 8_Calcula el número de empleados que no tienen NULL en su segundo apellido.
select count(*) from    empleado
    where apellido2 is not null

-- 9_Calcula el número de empleados que hay en cada departamento. Tienes que devolver dos columnas, 
    --una con el nombre del departamento y otra con el número de empleados que tiene asignados.
--MY_QUERY
select id_departamento as id_d, count(*) from empleado
    where id_departamento is not null
    group by id_d

-- 10_Calcula el nombre de los departamentos que tienen más de 2 empleados. El resultado debe tener dos columnas, 
    --una con el nombre del departamento y otra con el número de empleados que tiene asignados.
--MY_QUERY
select d.nombre ,  count(e.id_departamento)  from empleado e
    join departamento d on e.id_departamento = d.id
    group by d.nombre
    having count(*)>2

-- 11_Calcula el número de empleados que trabajan en cada uno de los departamentos.
    -- El resultado de esta consulta también tiene que incluir aquellos departamentos que no tienen ningún empleado asociado.
SELECT d.nombre, COUNT(e.id) AS numero_empleados    
    FROM departamentos d
    LEFT JOIN empleados e ON d.id = e.id_departamento
    GROUP BY d.nombre;

-- 12_Calcula el número de empleados que trabajan en cada unos de los departamentos 
    --que tienen un presupuesto mayor a 200000 euros.
SELECT d.nombre, COUNT(e.id) AS numero_empleados    
    FROM departamentos d    
    LEFT JOIN empleados e ON d.id = e.id_departamento
    WHERE d.presupuesto > 200000
    GROUP BY d.nombre;