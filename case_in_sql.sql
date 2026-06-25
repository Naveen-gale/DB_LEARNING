SELECT * from flicart


-- SELECT product_name , price,
-- case when (price>=1000) then 'Expensive'
--    when price BETWEEN 500 and 1000 then 'modern'
--    else 'cheap'

-- end as price_tag from flicart

Alter table flicart
rename column prodect_name to product_name



Alter table flicart
add column price_tag text;


update flicart
set price_tag=
case
    when(price >= 1000) then 'Expensive'
    when price between 500 and 1000 then 'modern'
    else 'cheap'
end;

SELECT
    product_name,
    available,
    CASE
        WHEN available = TRUE THEN 'Yes'
        ELSE 'No'
    END AS availability_status
FROM flicart;

SELECT product_name, stock,
case
    when stock >= 10 then 'in stock'
    when stock between 5 and 9 then 'low stock'
    else 'out of stock'
end as stock_status from flicart