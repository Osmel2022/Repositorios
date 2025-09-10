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

-- 7_ Devuelve un listado con los distintos estados por los que puede pasar un pedido.
select distinct estado from pedido;

-- 8_ Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. 
    -- Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos. Resuelva la consulta:
    -- Utilizando la función YEAR de MySQL.
    select distinct codigo_cliente from pago
        where year(fecha_pago) = 2008;
    -- Utilizando la función DATE_FORMAT de MySQL.
    select distinct codigo_cliente from pago
        where date_format(fecha_pago,'%Y') = 2008;
    -- Sin utilizar ninguna de las funciones anteriores.
    select distinct codigo_cliente from pago
        where fecha_pago between '2008-01-01' and '2008-12-31';

-- 9_Devuelve un listado con el código de pedido, código de cliente, 
    --fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
select codigo_pedido, codigo_cliente, fecha_esperada, fecha_entrega from pedido
    where fecha_entrega > fecha_esperada;