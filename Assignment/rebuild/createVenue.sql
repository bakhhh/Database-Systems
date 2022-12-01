#table for venue entity
CREATE TABLE Venue(
	venueID INT(3) NOT NULL,
	venueName varchar(45) NOT NULL,
	city varchar(16) NOT NULL,
	country varchar(16) NOT NULL,
	PRIMARY KEY(venueID)
);
