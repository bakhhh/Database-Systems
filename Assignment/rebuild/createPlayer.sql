
#table for my player entity

CREATE TABLE Player(
	playerID INT(4) NOT NULL,
	playerName varchar(36) NOT NULL,
	DOB DATE,
	battingHand varchar(24),
	bowlingSkill varchar(36),
	country varchar(16) NOT NULL,
	team varchar(36) NOT NULL,
	PRIMARY KEY(playerID),
	FOREIGN KEY(team) REFERENCES Team(teamName) ON DELETE CASCADE

);

