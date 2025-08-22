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
select * from comercial c
    left join pedido p on c.id = p.id_comercial
    where c.id not in (select id_comercial from pedido)

-- 5_Devuelve un listado con los clientes que no han realizado ningún pedido 
    --y de los comerciales que no han participado en ningún pedido. 
    --Ordene el listado alfabéticamente por los apellidos y el nombre. 
    --En en listado deberá diferenciar de algún modo los clientes y los comerciales.
select apellido1,apellido2,nombre,'Cliente' as tipo from cliente c
    where c.id not in (select id_cliente from pedido)
union
select apellido1,apellido2,nombre,'Comercial' as tipo from comercial c
    where c.id not in (select id_comercial from pedido)
    order by apellido1,apellido2,nombre
    
