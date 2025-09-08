-- 1_Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
select codigo_oficina, ciudad from oficina;

-- 2_Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
select ciudad, telefono from oficina
    where pais = 'España';

-- 3_Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
select nombre, apellido1, apellido2, email,codigo_jefe from empleado
    where codigo_jefe = 7;

-- 4_

-- 5_

-- 6_