
#table for my batsman entity

CREATE TABLE Batsman(
	playerID INT(3) NOT NULL,
	playerName varchar(36) NOT NULL,
	team varchar(36) NOT NULL,
	matchesPlayed INT(2),
	innings INT(2),
	NumOuts INT(2),
	runs INT(3),
	strikeRate decimal(8,2),
	FOREIGN KEY(team) REFERENCES Team(teamName) ON DELETE CASCADE,
	FOREIGN KEY(playerID) REFERENCES Player(playerID) ON DELETE CASCADE
	

);

