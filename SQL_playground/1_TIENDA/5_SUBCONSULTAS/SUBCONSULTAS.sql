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

-- 11_Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).
select nombre from fabricante f 
    where f.id in 
        (select id_fabricante from producto)

-- 12_Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).
select nombre from fabricante f
    where f.id not in
        (select id_fabricante from producto)

-- 13_Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
select nombre from fabricante f
    where exists
        (select 1 from producto p
            where f.id= p.id_fabricante)

-- 14_Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).
select nombre from fabricante f
    where not exists
        (select 1 from producto p
            where f.id = p.id_fabricante)

-- 15_Lista el nombre de cada fabricante con el nombre y el precio de su producto más caro.
select  p.nombre as Producto, p.precio as Precio, f.nombre as Fabricante
    from fabricante f
    join producto p on f.id = p.id_fabricante 
        where Precio =  (select max(precio)
                            from producto where f.id = id_fabricante)

-- 16_Devuelve un listado de todos los productos que tienen un precio mayor o igual a la media de todos los productos de su mismo fabricante.
select * from producto p
    where precio >=(select avg(precio) from producto p1 
                    where p.id_fabricante = p1.id_fabricante)

-- 17_Lista el nombre del producto más caro del fabricante Lenovo.
select nombre from producto 
    where precio in (select max(precio) from producto  
                            where id_fabricante =(select id from fabricante 
                                                where nombre ='lenovo'))

SELECT nombre 
FROM producto
WHERE id_fabricante = (
    SELECT id
    FROM fabricante
    WHERE nombre = 'Lenovo'
)
ORDER BY precio DESC
LIMIT 1;