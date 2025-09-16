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

-- 5_Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select  nombre_cliente,nombre,apellido1,apellido2,o.ciudad from cliente c
    join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado
    join oficina o on e.codigo_oficina = o.codigo_oficina
    where c.codigo_cliente not in (select codigo_cliente from pago) 

-- 6_Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.
select o.linea_direccion1,o.linea_direccion2,o.ciudad from oficina o
    join empleado e on o.codigo_oficina = e.codigo_oficina
    join cliente c on e.codigo_empleado = c.codigo_empleado_rep_ventas
    where c.ciudad ='Fuenlabrada'

-- 7_Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.
select  nombre_cliente,nombre,apellido1,apellido2,o.ciudad from cliente c
    join empleado e on c.codigo_empleado_rep_ventas = e.codigo_empleado
    join oficina o on e.codigo_oficina = o.codigo_oficina

-- 8_Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.
select e.nombre,e.apellido1,e.apellido2,ej.nombre as nombre_jefe,ej.apellido1,ej.apellido2 from empleado e
    join empleado ej where e.codigo_jefe = ej.codigo_empleado

-- 9_Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.

-- 10_Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.

-- 11_Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.