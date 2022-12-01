
CREATE TABLE TeamPlays(
	matchID char(6) NOT NULL,
	teamName varchar(36) NOT NULL,
	FOREIGN KEY(teamName) REFERENCES Team(teamName) ON DELETE CASCADE,
	FOREIGN KEY(matchID) REFERENCES cricketMatch(matchID) ON DELETE CASCADE

);


