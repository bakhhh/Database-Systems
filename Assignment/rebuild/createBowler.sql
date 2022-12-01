
#table for my Bowler entity

CREATE TABLE Bowler(
	playerID INT(3) NOT NULL,
	playerName varchar(36) NOT NULL,
	Team varchar(36) NOT NULL,
	matchesPlayed INT(2),
	innings INT(2),
	runs INT(3),
	Wickets INT(3),
	strikeRate decimal(8,2),
	FOREIGN KEY(team) REFERENCES Team(teamName) ON DELETE CASCADE,
	FOREIGN KEY(playerID) REFERENCES Player(playerID) ON DELETE CASCADE
);

