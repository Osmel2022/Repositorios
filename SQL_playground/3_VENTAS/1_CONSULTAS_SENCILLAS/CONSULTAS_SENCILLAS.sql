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