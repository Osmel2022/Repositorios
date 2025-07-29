-- 1_Lista el primer apellido de todos los empleados.

-- 2_Lista el primer apellido de los empleados eliminando los apellidos que estén repetidos.
select distinct apellido1 from empleado

-- 3_Lista todas las columnas de la tabla empleado.

-- 4_Lista el nombre y los apellidos de todos los empleados.

-- 5_Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado.

-- 6_Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleado, eliminando los identificadores que aparecen repetidos.
select distinct id_departamento from empleado

-- 7_Lista el nombre y apellidos de los empleados en una única columna.
select concat_ws(' ',nombre,apellido1,apellido2) from empleado

-- 8_Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.
select Upper(concat_ws(' ',nombre,apellido1,apellido2)) from empleado

-- 9_Lista el nombre y apellidos de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.
select lower(concat_ws(' ',nombre,apellido1,apellido2)) from empleado

-- 10_Lista el identificador de los empleados junto al nif, pero el nif deberá aparecer en dos columnas, 
-- una mostrará únicamente los dígitos del nif y la otra la letra.
select id ,substr(nif,1,8),substr(nif,9,9) from empleado

-- 11_Lista el nombre de cada departamento y el valor del presupuesto actual del que dispone. 
-- Para calcular este dato tendrá que restar al valor del presupuesto inicial (columna presupuesto) los gastos que se han generado (columna gastos).
-- Tenga en cuenta que en algunos casos pueden existir valores negativos. Utilice un alias apropiado para la nueva columna columna que está calculando.
select nombre,(presupuesto-gastos )as Presupuesto_Actual from departamento 

-- 12_Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
select nombre,(presupuesto-gastos )as Presupuesto_Actual from departamento 
order by Presupuesto_Actual

-- 13_Lista el nombre de todos los departamentos ordenados de forma ascendente.
select nombre from departamento 
order by nombre asc

-- 14_Lista el nombre de todos los departamentos ordenados de forma descendente.

-- 15_Lista los apellidos y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en 
-- cuenta en primer lugar sus apellidos y luego su nombre.
select apellido1,apellido2,nombre from empleado
order by apellido1 ,apellido2,nombre
