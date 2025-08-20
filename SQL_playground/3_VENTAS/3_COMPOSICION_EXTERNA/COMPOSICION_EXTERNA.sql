-- 1_Devuelve un listado con todos los clientes junto con los datos de los pedidos que han realizado. 
    --Este listado también debe incluir los clientes que no han realizado ningún pedido.
    -- El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los clientes.
select apellido1,apellido2,nombre,p.* from cliente c
    left join pedido p on c.id = p.id_cliente
    order by apellido1,apellido2,nombre

-- 2_Devuelve un listado con todos los comerciales junto con los datos de los pedidos que han realizado.
    -- Este listado también debe incluir los comerciales que no han realizado ningún pedido. 
    -- El listado debe estar ordenado alfabéticamente por el primer apellido, segundo apellido y nombre de los comerciales.
select * from comercial c
    left join pedido p on c.id =p.id_comercial
    order by apellido1,apellido2,nombre

-- 3_Devuelve un listado que solamente muestre los clientes que no han realizado ningún pedido.
select * from cliente c
    left join pedido p on c.id = p.id_cliente
    where c.id not in (select id_cliente from pedido)

-- 4_Devuelve un listado que solamente muestre los comerciales que no han realizado ningún pedido.

-- 5_
