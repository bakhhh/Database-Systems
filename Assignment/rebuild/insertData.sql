#file that inserts all the data 

LOAD DATA LOCAL
	INFILE 'rebuild/Team.csv'
	INTO TABLE Team
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;


LOAD DATA LOCAL
	INFILE 'rebuild/Player.csv'
	INTO TABLE Player
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;


LOAD DATA LOCAL
	INFILE 'rebuild/batterScores.csv'
	INTO TABLE Batsman
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;

LOAD DATA LOCAL
	INFILE 'rebuild/batterAverage.csv'
	INTO TABLE BatsmanAverage
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;

LOAD DATA LOCAL
	INFILE 'rebuild/bowler.csv'
	INTO TABLE Bowler
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;

LOAD DATA LOCAL
	INFILE 'rebuild/bowlerAverage.csv'
	INTO TABLE BowlerAverage
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;



LOAD DATA LOCAL
	INFILE 'rebuild/Season.csv'
	INTO TABLE Season
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;



LOAD DATA LOCAL
	INFILE 'rebuild/Venue.csv'
	INTO TABLE Venue
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;



LOAD DATA LOCAL
	INFILE 'rebuild/Match.csv'
	INTO TABLE cricketMatch
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;



LOAD DATA LOCAL
	INFILE 'rebuild/playerPlays.csv'
	INTO TABLE PlayerPlays
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;

LOAD DATA LOCAL
	INFILE 'rebuild/teamPlays.csv'
	INTO TABLE TeamPlays
	FIELDS TERMINATED BY ',' ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;






