
#table for  Bowler average 

CREATE TABLE BowlerAverage(
	playerID INT(3) NOT NULL,
	runs INT(3),
	wickets INT(3),
	Average decimal(8,2),
	FOREIGN KEY(playerID) REFERENCES Player(playerID) ON DELETE CASCADE

);

