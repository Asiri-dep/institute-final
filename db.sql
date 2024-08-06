--Create Module table
CREATE TABLE Module (
                        id VARCHAR(10) INT PRIMARY KEY ,
                        name VARCHAR(255) NOT NULL,
                        credits  INT NOT NULL,
                        program_id VARCHAR(10) ,
                        FOREIGN KEY (program_id) REFERENCES Program(id)
                    );