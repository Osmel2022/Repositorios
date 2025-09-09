-- 1_Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select codigo_oficina, ciudad from oficina;

-- 2_Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
select ciudad, telefono from oficina
    where pais = 'España';

-- 3_Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
select nombre, apellido1, apellido2, email,codigo_jefe from empleado
    where codigo_jefe = 7;

-- 4_Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
select puesto,nombre,apellido1,apellido2,email from empleado
    where puesto ='Director General'

-- 5_Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
select nombre, apellido1, apellido2, puesto from empleado
    where puesto <> 'Representante de ventas'

select nombre,apellido1,apellido2,puesto from empleado
    where not puesto = 'Representante Ventas'

-- 6_Devuelve un listado con el nombre de los todos los clientes españoles.
select nombre from cliente
    where pais = 'Spain' or pais = 'España';