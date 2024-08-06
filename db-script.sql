CREATE TABLE student
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO student (id, name)
VALUES ('S001', 'Amal'),
       ('S002', 'Nimal'),
       ('S003', 'Kamal'),
       ('S004', 'Saman'),
       ('S005', 'Kumara'),
       ('S006', 'Indika'),
       ('S007', 'Dilanka'),
       ('S008', 'Yashodha'),
       ('S009', 'Priyanka'),
       ('S010', 'Sanduni');


CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(30) NOT NULL,
    credits INT         NOT NULL
);



create table programme
(
    id   varchar(10) primary key,
    name varchar(50) not null
);