CREATE TABLE listItems (
    liID serial PRIMARY KEY,
    lID int REFERENCES lists NOT NULL,
    iID int REFERENCES items NOT NULL,
    liDesired int NOT NULL DEFAULT 1,
    liPurchased int NOT NULL DEFAULT 0
);