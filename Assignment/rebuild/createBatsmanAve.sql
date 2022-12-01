
#table for the batsman average entity

CREATE TABLE BatsmanAverage(
	playerID INT(3) NOT NULL,
	innings INT(2),
	outs INT(2),
	runs INT(3),
	Average decimal(8,2),
	FOREIGN KEY(playerID) REFERENCES Player(playerID) ON DELETE CASCADE
	

);

