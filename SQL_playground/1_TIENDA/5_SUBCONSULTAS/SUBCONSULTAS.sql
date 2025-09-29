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

-- 9_Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
select nombre from  fabricante f
    where exists 
        (select 1 from producto p
            where p.id_fabricante = f.id)

SELECT nombre
    FROM fabricante f
        WHERE f.id = ANY (
            SELECT id_fabricante
                FROM producto

-- 10_Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).
select nombre from fabricante f
    where not exists
        (select 1 from producto p
            where f.id = p.id_fabricante )