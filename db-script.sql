CREATE TABLE student(
  id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE module (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    credits INT NOT NULL
);

CREATE TABLE exam(
    exam_code VARCHAR(10) PRIMARY KEY ,
    passing_score INT NOT NULL ,
    module_id VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_module_id FOREIGN KEY (module_id) REFERENCES module(id)
);




create table programme(
    id varchar(10) primary key ,
    name varchar(50) not null
);