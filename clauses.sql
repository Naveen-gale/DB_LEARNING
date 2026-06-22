SELECT prodect_name, price from flicart

SELECT * from flicart

SELECT * from flicart WHERE categray = 'Electronics'

SELECT categray from flicart GROUP BY categray


SELECT categray ,count(*) from flicart group by categray 
having count(*) > 1


SELECT * from flicart order by  price desc;


select * from flicart LIMIT 2;


select prodect_name as name , price as product_price from flicart