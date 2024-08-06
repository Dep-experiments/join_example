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