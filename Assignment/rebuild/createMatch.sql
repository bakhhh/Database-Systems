#table for my match entity

CREATE TABLE cricketMatch(
	matchID CHAR(6) NOT NULL,
	venueID INT(3),
	team1 varchar(32),
	team2 varchar(32),
	matchDate DATE,
	season INT(3),
	winner varchar(32),
	matchMVP int(4),
	PRIMARY KEY(matchID),
	FOREIGN KEY(season) REFERENCES Season(seasonNo),
	FOREIGN KEY(venueID) REFERENCES Venue(venueID) ON DELETE CASCADE


);
