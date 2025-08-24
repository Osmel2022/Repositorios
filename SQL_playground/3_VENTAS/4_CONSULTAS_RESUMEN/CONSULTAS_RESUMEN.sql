-- 1_Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
select sum(total) from pedido

-- 2_Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
select avg(total) from pedido

-- 3_Calcula el número total de comerciales distintos que aparecen en la tabla pedido.
select  count( distinct id_comercial) from pedido

-- 4_Calcula el número total de clientes que aparecen en la tabla cliente.
select count(id) from cliente

-- 5_Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
select max(total) from pedido

-- 6_

-- 7_

-- 8_

-- 9_