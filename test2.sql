SELECT prodect_name, price
FROM flicart
WHERE price = (
    SELECT MIN(price)
    FROM flicart
);


select avg(price) from  flicart WHERE prodect_name in ('Laptop','Mobile','Tablet')


SELECT * from flicart


select prodect_name, stock from flicart where stock >= 10 and available = true and price = 1000
SELECT prodect_name, price
FROM flicart
WHERE categray = 'Electronics'
AND price = (
    SELECT MAX(price)
    FROM flicart
    WHERE categray = 'Electronics'
);

SELECT prodect_name
FROM flicart
WHERE categray = 'Electronics'

UNION ALL

SELECT prodect_name
FROM flicart
WHERE categray = 'Stationery';