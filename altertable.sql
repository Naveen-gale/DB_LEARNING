CREATE TABLE student_alter(
    id serial NOT NULL PRIMARY KEY,
    name varchar(50) NOT NULL,
    age bigint
);


INSERT INTO student_alter(name, age)
VALUES ('Alice', 25),
       ('Bob', 30),
       ('Charlie', 35),
       ('David', 40),
       ('Eve', 45);

SELECT * from student_alter

Alter table student_alter
add column email varchar(100) unique;


INSERT INTO student_alter(name, age,email)
VALUES ('Fiona', 25,'z6H8H@example.com'),
       ('Gina', 30,'H4VnK@example.com'),
       ('Hina', 35,'YKfX5@example.com')

Alter table student_alter
drop column email ;


Alter table student_alter
rename column age to user_age;


Alter table student_alter
Alter column user_age type smallint;

Alter table student_alter
Alter column user_age set default 18;

Alter table student_alter
add constraint user_age_check check (user_age > 18);

