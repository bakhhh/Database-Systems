#procedure that allows you to insert into venue
#error catching in trigger
# Adapted from Lecture 7 slides, ISYS2014

DROP PROCEDURE IF EXISTS insVenue;
DELIMITER //
CREATE PROCEDURE insVenue(
venue varchar(36),
city  varchar(36),
country varchar(36)

)

COMMENT 'insert into venue table'
BEGIN

DECLARE nextid INT(3);
SELECT MAX(venueID)+1 From Venue INTO nextid; 

INSERT INTO 
Venue Values(nextid,venue,city,country);




END // 
DELIMITER ; 

