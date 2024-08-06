CREATE TABLE module (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    credits INT NOT NULL
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
