-- 1_Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. 
    --El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
select distinct id, nombre, apellido1, apellido2 
from cliente
    where id in (select distinct id_cliente from pedido)
    order by nombre, apellido1, apellido2
    
-- 2_Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente.
    -- El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
select * from pedido p   
    inner join cliente c on p.id_cliente = c.id
    order by c.nombre, c.apellido1, c.apellido2

-- 3_Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales.
    -- El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
select * from pedido p
    inner join comercial c on p.id_comercial = c.id 
    order by c.nombre, c.apellido1, c.apellido2

-- 4_

-- 5_

-- 6_

-- 7_