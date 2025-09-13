-- 1_Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.
select nombre_cliente,nombre ,apellido1 from cliente c
    join empleado e where c.codigo_empleado_rep_ventas = e.codigo_empleado 

-- 2_Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.

-- 3_Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.

-- 4_

-- 5_

-- 6_