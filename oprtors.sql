select * FROM flicart WHERE categray = 'Electronics' OR price  <= 1000



select * from flicart WHERE price BETWEEN 1000 AND 5000

select * from flicart where price in (1000,2000,3000)


select * from flicart where code like '_3%'


-- agregation functions


select count(prodect_id) from flicart;

select sum(price) from flicart where categray = 'Electronics'

select round(avg(price),2) from flicart where categray = 'Electronics';

select max(price) from flicart where categray = 'Electronics';


select min(price) from flicart where categray = 'Electronics';

