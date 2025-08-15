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

-- 4_Devuelve un listado que muestre todos los clientes, 
    --con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
select * from cliente c
      join pedido p on c.id = p.id_cliente
      join comercial co on p.id_comercial = co.id

-- 5_Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017,    
    --cuya cantidad esté entre 300 € y 1000 €.
select distinct * from cliente c
    inner join pedido p on c.id = p.id_cliente
    where p.fecha >= '2017-01-01' and p.fecha < '2018-01-01'
    and p.total >= 300 and p.total <= 1000

-- 6_Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
select distinct  c.apellido1, c.apellido2,c.nombre
from comercial c
    inner join pedido p on c.id = p.id_comercial
    inner join cliente cl on p.id_cliente = cl.id
where   cl.nombre = 'María' and cl.apellido1 = 'Santana' and cl.apellido2 = 'Moreno' 

-- 7_Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
select distinct cl.apellido1,cl.apellido2,cl.nombre
from cliente cl
    inner join pedido p on cl.id = p.id_cliente
    inner join comercial c on p.id_comercial = c.id
where c.nombre = 'Daniel' and c.apellido1 = 'Sáez' and c.apellido2 = 'Vega' 