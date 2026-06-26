-- one to one relation 
CREATE TABLE s1 
(
    id serial NOT NULL PRIMARY KEY,
    name varchar(50)
);

INSERT INTO s1(name) VALUES('a'),('b'),('c');


CREATE TABLE s1_pro(
    id serial NOT NULL PRIMARY KEY,
    name varchar(50),
    marks int,
    grade varchar(10),
    s1_id int,

    FOREIGN KEY (s1_id) REFERENCES s1(id)
);

select * from s1_pro
INSERT into s1_pro(name,marks,grade,s1_id) VALUES ('a',99,'A',1),('b',98,'A',2),('c',97,'A',3);



-- one to many relation


CREATE TABLE s2 
(
    id serial NOT NULL PRIMARY KEY,
    name varchar(50)
);


CREATE TABLE marks(

    marks_id serial not null PRIMARY key,
    id int,
    sub varchar(20),
    marks int,
    FOREIGN key (id) REFERENCES s2(id)

);

insert into s2(
    name 
)
VALUES ('a'),('b'),('c');

insert into marks(
    id,
    sub,
    marks
)
INSERT INTO marks (id, sub, marks)
VALUES
    (1, 'Maths', 91),
    (1, 'Science', 85),
    (1, 'English', 78),

    (2, 'Maths', 88),
    (2, 'Science', 92),
    (2, 'English', 80),

    (3, 'Maths', 75),
    (3, 'Science', 83),
    (3, 'English', 89);


select s2.name , marks.sub, marks.marks from s2 JOIN marks ON s2.id = marks.id--