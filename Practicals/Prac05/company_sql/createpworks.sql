# creating Pworks table for Practical -05

DROP TABLE IF EXISTS Pworks;
CREATE TABLE Pworks(
empno 		CHAR(6),
projno 		CHAR(6),
hours 		SMALLINT,
PRIMARY KEY(empno,projno),
FOREIGN KEY(empno) REFERENCES Emp(empno) ON DELETE CASCADE,
FOREIGN KEY(projno) REFERENCES Proj(projno) ON DELETE CASCADE);
