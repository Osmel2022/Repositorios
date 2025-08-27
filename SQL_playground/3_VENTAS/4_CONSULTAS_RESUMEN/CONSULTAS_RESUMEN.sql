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

-- 6_Calcula cuál es la menor cantidad que aparece en la tabla pedido.
select min(total) from pedido

-- 7_Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
select ciudad, max(categoria) from cliente
    group by ciudad

-- 8_Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes.
    -- Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día.
    -- Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. 
    -- Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.
select c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, max(p.total) as max_total from cliente c
    join pedido p on c.id = p.id_cliente
    group by c.id, c.nombre, c.apellido1, c.apellido2, p.fecha
    order by c.id, p.fecha

-- 9_Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes,
    -- teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.

select c.id, c.nombre, c.apellido1, c.apellido2, p.fecha, max(p.total) as max_total from cliente c
    join pedido p on c.id = p.id_cliente
    where p.total > 2000    
    group by c.id, c.nombre, c.apellido1, c.apellido2, p.fecha
    order by c.id, p.fecha


-- 10_Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. 
    -- Muestra el identificador del comercial, nombre, apellidos y total.
select c.id, c.nombre,c.apellido1,max(total) from comercial c
join pedido p on c.id = p.id_comercial
where fecha = '2016-08-17'
group by c.id, c.nombre,c.apellido1
                        
-- 11_

-- 12_

-- 13_

-- 14_

-- 15_