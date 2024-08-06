CREATE TABLE Program (
                         program_id VARCHAR(10) PRIMARY KEY,
                         name VARCHAR(50)
);


INSERT INTO Program (program_id, name) VALUES
                                           ('P001', 'CMJD'),
                                           ('P002', 'GDSE'),
                                           ('P003', 'DEP');

CREATE TABLE student (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
CREATE TABLE batch
(
    number     VARCHAR(10) PRIMARY KEY,
    program_id VARCHAR(10) NOT NULL REFERENCES program (id)
);