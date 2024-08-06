CREATE TABLE program
(
    program_id VARCHAR(10) PRIMARY KEY,
    name       VARCHAR(50) NOT NULL
);


CREATE TABLE student
(
    id   VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE batch
(
    batch_id   VARCHAR(10) PRIMARY KEY,
    number     INT         NOT NULL,
    program_id VARCHAR(10) NOT NULL REFERENCES program (program_id)
);
CREATE TABLE enrollment
(
    student_id      VARCHAR(10) NOT NULL,
    batch_id    VARCHAR(10) NOT NULL,
    registered_date DATE        NOT NULL,
    CONSTRAINT pk_enrollment PRIMARY KEY (student_id, batch_id),
    CONSTRAINT fk_enroll_student FOREIGN KEY (student_id) REFERENCES student (id),
    CONSTRAINT fk_enroll_batch FOREIGN KEY (batch_id) REFERENCES batch (batch_id)
);

CREATE TABLE module
(
    id         VARCHAR(10) PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    credits    INT          NOT NULL,
    program_id VARCHAR(10) NOT NULL ,
    FOREIGN KEY (program_id) REFERENCES program (program_id)
);

CREATE TABLE exam
(
    exam_code     VARCHAR(10) PRIMARY KEY,
    module_id     VARCHAR(10) NOT NULL ,
    passing_score INT NOT NULL,
    FOREIGN KEY (module_id) REFERENCES module (id)
);

CREATE TABLE student_exam
(
    student_id VARCHAR(10) REFERENCES student (id),
    batch_id   VARCHAR(10) REFERENCES batch (batch_id),
    exam_code  VARCHAR(10) REFERENCES exam (exam_code),
    marks      INT,
    CONSTRAINT pk_student_exam PRIMARY KEY (student_id, exam_code, batch_id)
);
INSERT INTO program (program_id, name)
VALUES ('P001', 'CMJD'),
       ('P002', 'GDSE'),
       ('P003', 'DEP');

INSERT INTO batch (batch_id, number, program_id)
VALUES ('B001', 1, 'P001'),
       ('B002', 2, 'P001'),
       ('B003', 3, 'P002'),
       ('B004', 4, 'P002'),
       ('B005', 5, 'P002'),
       ('B006', 6, 'P003');

INSERT INTO module (id, name, credits, program_id)
VALUES ('M001', 'Introduction to Programming', 3, 'P001'),
       ('M002', 'Data Structures', 3, 'P001'),
       ('M003', 'Web Development', 4, 'P002'),
       ('M004', 'Database Systems', 3, 'P002');



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

INSERT INTO student_exam (student_id, batch_id, exam_code, marks)
VALUES ('S001', 'B001', 'E001', 85),
       ('S002', 'B002', 'E002', 72),
       ('S003', 'B001', 'E003', 90),
       ('S004', 'B002', 'E001', 78),
       ('S005', 'B001', 'E002', 65),
       ('S006', 'B002', 'E003', 82),
       ('S007', 'B001', 'E001', 92),
       ('S008', 'B002', 'E002', 75),
       ('S009', 'B001', 'E003', 88),
       ('S010', 'B002', 'E001', 70),
       ('S001', 'B001', 'E002', 83),
       ('S002', 'B002', 'E003', 75),
       ('S003', 'B001', 'E001', 91),
       ('S004', 'B002', 'E002', 77),
       ('S005', 'B001', 'E003', 68),
       ('S006', 'B002', 'E001', 84),
       ('S007', 'B001', 'E002', 93),
       ('S008', 'B002', 'E003', 76),
       ('S009', 'B001', 'E001', 89),
       ('S010', 'B002', 'E002', 71)
;
INSERT INTO enrollment (student_id, batch_id, registered_date)
VALUES ('S001', 'B001', '2024-01-10'),
       ('S002', 'B001', '2024-01-11'),
       ('S003', 'B001', '2024-01-12'),
       ('S004', 'B001', '2024-01-13'),
       ('S005', 'B001', '2024-01-14'),
       ('S006', 'B002', '2024-01-10'),
       ('S007', 'B003', '2024-01-11'),
       ('S008', 'B002', '2024-01-12'),
       ('S009', 'B002', '2024-01-13'),
       ('S010', 'B001', '2024-01-14'),
       ('S001', 'B003', '2024-01-10'),
       ('S002', 'B003', '2024-01-11'),
       ('S003', 'B003', '2024-01-12'),
       ('S004', 'B003', '2024-01-13'),
       ('S005', 'B003', '2024-01-14'),
       ('S006', 'B001', '2024-01-15'),
       ('S007', 'B002', '2024-01-15'),
       ('S008', 'B003', '2024-01-15'),
       ('S009', 'B001', '2024-01-16'),
       ('S010', 'B002', '2024-01-16');

INSERT INTO exam (exam_code, module_id, passing_score)
VALUES ('E001', 'M001', 50),
       ('E002', 'M002', 55),
       ('E003', 'M003', 60),
       ('E004', 'M004', 50),
       ('E005', 'M001', 65),
       ('E006', 'M002', 70),
       ('E007', 'M003', 75),
       ('E008', 'M004', 80),
       ('E009', 'M001', 50),
       ('E010', 'M002', 60);