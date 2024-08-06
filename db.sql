CREATE TABLE Program (
                         program_id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(50)
);


INSERT INTO Program (program_id, name) VALUES
                                           ('P001', 'CMJD'),
                                           ('P002', 'GDSE'),
                                           ('P003', 'DEP');

--Create Module table
CREATE TABLE Module (
                        id VARCHAR(10) INT PRIMARY KEY ,
                        name VARCHAR(255) NOT NULL,
                        credits  INT NOT NULL,
                        program_id VARCHAR(10) ,
                        FOREIGN KEY (program_id) REFERENCES Program(id)
                    );
CREATE TABLE student (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE batch
(
    number     VARCHAR(10) PRIMARY KEY,
    program_id VARCHAR(10) NOT NULL REFERENCES program (id)
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