-- 1_Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select * from pedido
    where id_cliente = (select id from cliente 
                        where nombre = 'Adela' 
                        and apellido1 = 'Salas' 
                        and apellido2 = 'Díaz')

-- 2_

-- 3_

-- 4_

-- 5_

-- 6_

-- 7_

-- 8_

-- 9_