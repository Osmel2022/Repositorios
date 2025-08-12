-- 1_Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. 
    --El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
select distinct id, nombre, apellido1, apellido2 
from cliente
    where id in (select distinct id_cliente from pedido)
    order by nombre, apellido1, apellido2
    
-- 2_

-- 3_

-- 4_

-- 5_

-- 6_

-- 7_