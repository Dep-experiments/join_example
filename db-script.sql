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

CREATE TABLE exam(
    exam_code VARCHAR(10) PRIMARY KEY ,
    passing_score INT NOT NULL ,
    module_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module(id)
);



create table programme
(
    id   varchar(10) primary key,
    name varchar(50) not null
);

INSERT INTO module (id, name, credits) VALUES
                                           ('M001', 'Introduction to Programming', 3),
                                           ('M002', 'Data Structures and Algorithms', 4),
                                           ('M003', 'Database Systems', 3),
                                           ('M004', 'Operating Systems', 3),
                                           ('M005', 'Software Engineering', 4),
                                           ('M006', 'Computer Networks', 3),
                                           ('M007', 'Web Development', 3),
                                           ('M008', 'Artificial Intelligence', 4),
                                           ('M009', 'Machine Learning', 4),
                                           ('M010', 'Human-Computer Interaction', 3);