CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(30) NOT NULL,
    credits INT         NOT NULL
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


CREATE TABLE batch
(
    number       VARCHAR(10) PRIMARY KEY,
    programme_id VARCHAR(10) NOT NULL,
    CONSTRAINT fk_programme_id FOREIGN KEY (programme_id) REFERENCES programme (id)
);

INSERT INTO batch (number, programme_id) VALUES (
        ('100','P001'),
        ('50','P002'),
        ('120','P003'),
        ('80','P004'),
        ('100','P005'),
        ('300','P006')
       );

CREATE TABLE module
(
    id      VARCHAR(10) PRIMARY KEY,
    name    VARCHAR(30) NOT NULL,
    credits INT         NOT NULL
);

CREATE TABLE exam
(
    exam_code     VARCHAR(10) PRIMARY KEY,
    passing_score INT         NOT NULL,
    module_id     VARCHAR(10) NOT NULL,
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module (id)
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


CREATE TABLE programe_module(
module_id VARCHAR(10) NOT NULL,
program_id VARCHAR(10) NULL,
PRIMARY KEY (module_id, program_id),
FOREIGN KEY (program_id) REFERENCES programme(id),
FOREIGN KEY (module_id) REFERENCES module(id)
);
INSERT INTO exam (exam_code, passing_score, module_id) VALUES ('E001', 75, 'M001'),
                                                              ('E002', 78, 'M005'),
                                                              ('E003', 45, 'M005'),
                                                              ('E004', 96, 'M007'),
                                                              ('E005', 12, 'M002'),
                                                              ('E006', 35, 'M007'),
                                                              ('E007', 81, 'M008'),
                                                              ('E008', 53, 'M001'),
                                                              ('E009', 73, 'M006'),
                                                              ('E010', 66, 'M005');

CREATE TABLE student_exam(
    student_id VARCHAR(10) NOT NULL ,
    exam_code VARCHAR(10) NOT NULL ,
    batch_number VARCHAR(10) NOT NULL ,
    mark INT NOT NULL ,
    CONSTRAINT pk_student_exam PRIMARY KEY (student_id, exam_code, batch_number),
    CONSTRAINT fk_student_id FOREIGN KEY (student_id) REFERENCES enrollment(student_id),
    CONSTRAINT fk_batch_number FOREIGN KEY (batch_number) REFERENCES enrollment(batch_number),
    CONSTRAINT fk_exam_code FOREIGN KEY (exam_code) REFERENCES exam(exam_code)
);

INSERT INTO programe_module (program_id, module_id) VALUES
                                                        ('P001', 'M001'),
                                                        ('P001', 'M002'),
                                                        ('P001', 'M003'),
                                                        ('P001', 'M004'),
                                                        ('P001', 'M005'),
                                                        ('P001', 'M006'),
                                                        ('P001', 'M007'),
                                                        ('P001', 'M008'),
                                                        ('P001', 'M009'),
                                                        ('P001', 'M010'),
                                                        ('P002', 'M001'),
                                                        ('P002', 'M002'),
                                                        ('P002', 'M003'),
                                                        ('P002', 'M004'),
                                                        ('P002', 'M005'),
                                                        ('P002', 'M006'),
                                                        ('P002', 'M007'),
                                                        ('P002', 'M008'),
                                                        ('P002', 'M009'),
                                                        ('P002', 'M010'),
                                                        ('P003', 'M001'),
                                                        ('P003', 'M002'),
                                                        ('P003', 'M003'),
                                                        ('P003', 'M004'),
                                                        ('P003', 'M005'),
                                                        ('P003', 'M006'),
                                                        ('P003', 'M007'),
                                                        ('P003', 'M008'),
                                                        ('P003', 'M009'),
                                                        ('P003', 'M010');
