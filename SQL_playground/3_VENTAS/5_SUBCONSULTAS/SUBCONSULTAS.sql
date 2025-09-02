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

-- 4_

-- 5_

-- 6_

-- 7_

-- 8_

-- 9_