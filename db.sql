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
-- Insert sample data into the Module table
INSERT INTO Module (id, name, credits, program_id) VALUES
                                                       ('M001', 'Introduction to Programming', 3, 'P001'),
                                                       ('M002', 'Data Structures', 3, 'P001'),
                                                       ('M003', 'Web Development', 4, 'P002'),
                                                       ('M004', 'Database Systems', 3, 'P002');