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
program_id VARCHAR(10) NOT NULL,
PRIMARY KEY (module_id, program_id),
FOREIGN KEY (program_id) REFERENCES programme(id),
FOREIGN KEY (module_id) REFERENCES module(id)
);
create table enrollment(
    student_id varchar(10),
    batch_num varchar(10),
    reg_date date
);

CREATE TABLE student_batch(
                              student_id VARCHAR(10) NOT NULL,
                              batch_num VARCHAR(10) NULL,
                              reg_date date,
                                PRIMARY KEY (student_id, batch_num),
                                FOREIGN KEY (student_id) REFERENCES student(id),
                                FOREIGN KEY (batch_num) REFERENCES batch(id)
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
INSERT INTO student_batch (student_id, batch_num, reg_date) VALUES
                                                                ('S001', 'B001', '2023-01-15'),
                                                                ('S002', 'B002', '2023-01-16'),
                                                                ('S003', 'B001', '2023-01-17'),
                                                                ('S004', 'B003', '2023-01-18'),
                                                                ('S005', 'B002', '2023-01-19'),
                                                                ('S006', 'B001', '2023-01-20'),
                                                                ('S007', 'B003', '2023-01-21'),
                                                                ('S008', 'B002', '2023-01-22'),
                                                                ('S009', 'B001', '2023-01-23'),
                                                                ('S010', 'B003', '2023-01-24'),
                                                                ('S011', 'B002', '2023-01-25'),
                                                                ('S012', 'B001', '2023-01-26'),
                                                                ('S013', 'B003', '2023-01-27'),
                                                                ('S014', 'B002', '2023-01-28'),
                                                                ('S015', 'B001', '2023-01-29'),
                                                                ('S016', 'B003', '2023-01-30'),
                                                                ('S017', 'B002', '2023-01-31'),
                                                                ('S018', 'B001', '2023-02-01'),
                                                                ('S019', 'B003', '2023-02-02'),
                                                                ('S020', 'B002', '2023-02-03');

INSERT INTO student_exam (student_id, exam_code, batch_number, mark) VALUES ('S001', 'E001', '100', 55),
                                                                            ('S002', 'E002', '50', 64),
                                                                            ('S003', 'E005', '120', 85),
                                                                            ('S004', 'E004', '80', 84),
                                                                            ('S005', 'E008', '300', 94),
                                                                            ('S006', 'E004', '120', 75),
                                                                            ('S007', 'E003', '80', 44),
                                                                            ('S008', 'E002', '50', 22),
                                                                            ('S009', 'E002', '50', 36),
                                                                            ('S010', 'E009', '300', 66),
                                                                            ('S001', 'E007', '80', 95),
                                                                            ('S002', 'E006', '100', 99),
                                                                            ('S003', 'E001', '300', 75),
                                                                            ('S004', 'E009', '80', 41),
                                                                            ('S005', 'E008', '80', 64),
                                                                            ('S006', 'E002', '50', 85),
                                                                            ('S007', 'E004', '120', 75),
                                                                            ('S008', 'E005', '100', 22),
                                                                            ('S009', 'E004', '300', 33),
                                                                            ('S010', 'E003', '300', 77);

