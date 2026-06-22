CREATE TABLE flicart(
    prodect_id BIGINT not null primary key,
    prodect_name varchar(200) not null,
    code char(8)  unique,
    price numeric(8,2) check (price >0),
    stock int check (stock >=0)  default 0,
    available boolean default true,
    categray varchar(200) not null,
    Add_on date  default current_date,
    last_update timestamp default now()

);





select * from flicart

INSERT INTO flicart(prodect_id, prodect_name, code, price, stock, available, categray)
values (1,'Laptop', '12345678', 10000.00, 10, true, 'Electronics'),
       (2,'Mobile', '23456789', 5000.00, 5, true, 'Electronics'),
       (3,'Tablet', '34567890', 3000.00, 3, true, 'Electronics'),
       (4,'Camera', '45678901', 8000.00, 8, true, 'Electronics'),
       (5,'Headphones', '56789012', 2000.00, 2, false, 'Electronics'),
       (8,'pen', '67890123', 1500.00, 4, true, 'stanary'),
       (9,'pencil', '78901234', 1000.00, 6, true, 'stanary');


