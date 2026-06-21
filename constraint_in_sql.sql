-- Creating the table
CREATE TABLE student2 (
    id serial NOT NULL PRIMARY KEY,
    name varchar(50) NOT NULL,
    age smallint,
    email varchar(100) UNIQUE NOT NULL,
    created_at timestamp DEFAULT now()
);

-- Inserting the data (removed the trailing comma)
INSERT INTO student2 (name, age, email)
VALUES 
    ('Alice', 25, 'z6H8H@example.com'),
    ('Bob', 30, 'H4VnK@example.com'),
    ('Charlie', 35, 'YKfX5@example.com');


select * from student2


