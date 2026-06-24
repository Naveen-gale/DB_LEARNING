select upper(prodect_name) from flicart

select lower(categray) from flicart


select * from flicart

select length(prodect_name) from flicart


select substring(prodect_name,1,3) from flicart

select left(prodect_name,3) from flicart
select right(prodect_name,3) from flicart
 
select concat_ws('-',prodect_name,categray) from flicart

SELECT REPLACE(code::text, LEFT(code::text, 2), '11')
FROM flicart;
select * from flicart