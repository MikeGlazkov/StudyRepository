use Reviews

CREATE TABLE Streets (
StreetID INT PRIMARY KEY IDENTITY(1,1),
StreetName VARCHAR(255) NOT NULL,
TownID INT NOT NULL,
FOREIGN KEY (TownID) REFERENCES Towns (TownID),
);
