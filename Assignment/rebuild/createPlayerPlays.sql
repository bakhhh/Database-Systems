
CREATE TABLE PlayerPlays(
	matchID char(6) NOT NULL,
	playerID int(3) NOT NULL,
	role varchar(16),
	FOREIGN KEY(playerID) REFERENCES Player(playerID) ON DELETE CASCADE,
	FOREIGN KEY(matchID) REFERENCES cricketMatch(matchID) ON DELETE CASCADE

);


