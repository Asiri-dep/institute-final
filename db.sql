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