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