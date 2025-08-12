-- 1_Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, 
    --mostrando en primer lugar los pedidos más recientes.
select * from pedido
    order by fecha desc

-- 2_Devuelve todos los datos de los dos pedidos de mayor valor.
select * from pedido 
    order by total desc 
    limit 2

-- 3_Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. 
    --Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
select distinct id_cliente from pedido

-- 4_Devuelve un listado de todos los pedidos que se realizaron durante el año 2017,
    -- cuya cantidad total sea superior a 500€.
select * from pedido 
    where total > 500 and fecha >= '2017-01-01' and fecha < '2018-01-01'

-- 5_Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.
select * from comercial 
    where comision between 0.05 and 0.11

-- 6_Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.
select max(comision) from comercial

-- 7_Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. 
    --El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
select id_cliente, nombre, apellido1 
from cliente
    where apellido2 is not null
    order by apellido1, nombre  

-- 8_Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P.
    -- El listado deberá estar ordenado alfabéticamente.
select nombre from cliente 
    where (nombre like 'A%n' or nombre like 'P%')

-- 9_Devuelve un listado de los nombres de los clientes que no empiezan por A. 
    --El listado deberá estar ordenado alfabéticamente.
select nombre from cliente 
    where nombre not like 'A%'
    order by nombre

-- 10_Devuelve un listado con los nombres de los comerciales que terminan por el o o.
    -- Tenga en cuenta que se deberán eliminar los nombres repetidos.
select distinct nombre from comercial 
    where nombre like '%o' or '%o'