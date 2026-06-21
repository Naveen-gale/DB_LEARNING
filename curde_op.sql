CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL
);

insert into student 
values (1, 'Alice', 20, 'A'),
       (2, 'Bob', 22, 'B'),
       (3, 'Charlie', 21, 'A'),
       (4, 'David', 23, 'C'),
       (5, 'Eve', 20, 'B');


-- Update the grade of a student

update student
set age = 50
where name = 'Alice';


delete from student
where name = 'Alice';
select * from student;





