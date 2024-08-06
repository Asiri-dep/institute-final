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

INSERT INTO batch (number,program_id) VALUES
                                          ("B001","P001"),
                                          ("B002","P001"),
                                          ("B003","P002"),
                                          ("B004","P002"),
                                          ("B005","P002"),
                                          ("B006","P003");