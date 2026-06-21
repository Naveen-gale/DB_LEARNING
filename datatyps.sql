CREATE TABLE emp(
    id serial,
    name varchar(10),
    age smallint,
    salary real

)


insert into emp(name,age,salary)
values('Alice',25,50000.00),
      ('Bob',30,60000.00),
      ('Charlie',35,70000.00),
      ('David',40,80000.00),
      ('Eve',45,90000.00);


select * from emp

