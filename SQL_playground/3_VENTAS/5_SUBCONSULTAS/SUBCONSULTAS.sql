-- 1_Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select * from pedido
    where id_cliente = (select id from cliente 
                        where nombre = 'Adela' 
                        and apellido1 = 'Salas' 
                        and apellido2 = 'Díaz')

-- 2_Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)
select count(*) from pedido
    where id_comercial = (select id from comercial 
                            where nombre = 'Daniel' 
                            and apellido1 = 'Sáez' 
                            and apellido2 = 'Vega')

-- 3_Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)
select * from cliente
    where id = (select id_cliente from pedido 
                    where total = (select max(total) from pedido 
                                    where fecha between '2019-01-01' and '2019-12-31'))

-- 4_Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.
select fecha, total from pedido
    where total = (select min(total) from pedido 
                    where id_cliente = (select id from cliente 
                                        where nombre = 'Pepe' 
                                        and apellido1 = 'Ruiz' 
                                        and apellido2 = 'Santana'))

-- 5_Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido durante el año 2017
    -- con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año.
select * from cliente c
    join pedido p on c.id = p.id_cliente
    where p.fecha between '2017-01-01' and '2017-12-31' 
    and p.total >= (select avg(total) from pedido 
                    where fecha between '2017-01-01' and '2017-12-31')

-- 6_Devuelve el pedido más caro que existe en la tabla pedido si hacer uso de MAX, ORDER BY ni LIMIT.
select * from pedido p1
    where not exists (select * from pedido p2 
                        where p2.total > p1.total)

-- 7_Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando ANY o ALL).
select * from cliente 
    where id <> all (select id_cliente from pedido )

-- 8_Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando ANY o ALL).
select * from comercial 
    where id <> all (select id_comercial from pedido )

-- 9_Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).
select * from cliente 
    where id not in (select id_cliente from pedido )

-- 10_Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN).

-- 11_Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).

-- 12_Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).