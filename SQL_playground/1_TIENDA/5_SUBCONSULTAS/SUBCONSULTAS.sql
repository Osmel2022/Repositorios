-- 1_

-- 2_

-- 3_

-- 4_

-- 5_

-- 6_

-- 7_Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.
select * from producto p1
    where not exists 
        (select 1 from producto p2 
            where p2.precio > p1.precio)         

-- 8_Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.
select * from producto p1
    where not exists
        (select 1 from producto p2 
            where p1.precio > p2.precio)   