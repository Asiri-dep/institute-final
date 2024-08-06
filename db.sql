CREATE TABLE Program
(
    program_id VARCHAR(10) PRIMARY KEY,
    name       VARCHAR(50)
);


INSERT INTO Program (program_id, name)
VALUES ('P001', 'CMJD'),
       ('P002', 'GDSE'),
       ('P003', 'DEP');

CREATE TABLE Module
(
    id         VARCHAR(10) PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    credits    INT          NOT NULL,
    program_id VARCHAR(10),
    FOREIGN KEY (program_id) REFERENCES Program (id)
);
CREATE TABLE student
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE batch
(
    number     VARCHAR(10) PRIMARY KEY,
    program_id VARCHAR(10) NOT NULL REFERENCES program (id)
);
-- Insert sample data into the Module table
INSERT INTO Module (id, name, credits, program_id) VALUES
                                                       ('M001', 'Introduction to Programming', 3, 'P001'),
                                                       ('M002', 'Data Structures', 3, 'P001'),
                                                       ('M003', 'Web Development', 4, 'P002'),
                                                       ('M004', 'Database Systems', 3, 'P002');

INSERT INTO batch (number, program_id)
VALUES ("B001", "P001"),
       ("B002", "P001"),
       ("B003", "P002"),
       ("B004", "P002"),
       ("B005", "P002"),
       ("B006", "P003");

CREATE TABLE enrollment
(
    student_id      VARCHAR(10) NOT NULL,
    batch_number    VARCHAR(10) NOT NULL,
    registered_date DATE        NOT NULL,
    CONSTRAINT pk_enrollment PRIMARY KEY (student_id, batch_number),
    CONSTRAINT fk_enroll_student FOREIGN KEY (student_id) REFERENCES student (id),
    CONSTRAINT fk_enroll_batch FOREIGN KEY (batch_number) REFERENCES batch (number)
);
INSERT INTO student (id, name)
VALUES ('S001', 'Kasun Sampath'),
       ('S002', 'Namal Rajapaksha'),
       ('S003', 'Ranil Wikramasinghe'),
       ('S004', 'Anura Kumara'),
       ('S005', 'Sajith Premadasa'),
       ('S006', 'Sunil Shantha'),
       ('S007', 'Saman Lenin'),
       ('S008', 'Kiri Saman'),
       ('S009', 'Mia Kalifa'),
       ('S010', 'Johnny sins');
INSERT INTO student (id, name) VALUES ('S001', 'Kasun Sampath'),
                                      ('S002', 'Namal Rajapaksha'),
                                      ('S003', 'Ranil Wikramasinghe'),
                                      ('S004', 'Anura Kumara'),
                                      ('S005', 'Sajith Premadasa'),
                                      ('S006', 'Sunil Shantha'),
                                      ('S007', 'Saman Lenin'),
                                      ('S008', 'Kiri Saman'),
                                      ('S009', 'Mia Kalifa'),
                                      ('S010', 'Johnny sins');

INSERT INTO batch (number, program_id)
VALUES ("B001", "P001"),
       ("B002", "P001"),
       ("B003", "P002"),
       ("B004", "P002"),
       ("B005", "P002"),
       ("B006", "P003");

CREATE TABLE student_exam
(
    student_id VARCHAR(10) REFERENCES student (id),
    exam_code  VARCHAR(10) REFERENCES exam (exam_code),
    marks      INT,
    CONSTRAINT pk_student_exam PRIMARY KEY (student_id, exam_code)
);
INSERT INTO enrollment (student_id, batch_id, registered_date) VALUES
                                                                    ('S001', 'B001', '2024-01-10'),
                                                                    ('S002', 'B001', '2024-01-11'),
                                                                    ('S003', 'B001', '2024-01-12'),
                                                                    ('S004', 'B001', '2024-01-13'),
                                                                    ('S005', 'B001', '2024-01-14'),
                                                                    ('S006', 'B002', '2024-01-10'),
                                                                    ('S007', 'B002', '2024-01-11'),
                                                                    ('S008', 'B002', '2024-01-12'),
                                                                    ('S009', 'B002', '2024-01-13'),
                                                                    ('S010', 'B002', '2024-01-14'),
                                                                    ('S011', 'B003', '2024-01-10'),
                                                                    ('S012', 'B003', '2024-01-11'),
                                                                    ('S013', 'B003', '2024-01-12'),
                                                                    ('S014', 'B003', '2024-01-13'),
                                                                    ('S015', 'B003', '2024-01-14'),
                                                                    ('S016', 'B001', '2024-01-15'),
                                                                    ('S017', 'B002', '2024-01-15'),
                                                                    ('S018', 'B003', '2024-01-15'),
                                                                    ('S019', 'B001', '2024-01-16'),
                                                                    ('S020', 'B002', '2024-01-16');