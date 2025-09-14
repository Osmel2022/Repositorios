-- 1_Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
select nombre_cliente,nombre ,apellido1 from cliente c
    join empleado e where c.codigo_empleado_rep_ventas = e.codigo_empleado 

-- 2_Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.
-- IA
select distinct nombre_cliente,nombre,apellido1 from cliente c
    join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado
    join pago p on c.codigo_cliente = p.codigo_cliente

-- 3_Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.
select  nombre_cliente,nombre,apellido1 from cliente c
    join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado
    where c.codigo_cliente not in(select codigo_cliente from pago)
    
-- 4_Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select  nombre_cliente,nombre,apellido1,apellido2,o.ciudad from cliente c
    join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado
    join oficina o on e.codigo_oficina = o.codigo_oficina
    join pago p on c.codigo_cliente = p.codigo_cliente

-- 5_

-- 6_