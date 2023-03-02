CREATE TABLE lists (
    lID serial PRIMARY KEY,
    pID int REFERENCES people NOT NULL,
    lName varchar(50) NOT NULL
);