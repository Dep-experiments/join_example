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
INSERT INTO programme (id, name)
VALUES ('P001', 'DEP'),
       ('P002', 'CMJD'),
       ('P003', 'DEP');