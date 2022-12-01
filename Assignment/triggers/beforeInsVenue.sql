#trigger that prevents inserting the same venue
DELIMITER //
DROP TRIGGER IF EXISTS beforeInsVenue;
CREATE TRIGGER beforeInsVenue
	BEFORE INSERT ON Venue
	FOR EACH ROW
	BEGIN
	DECLARE error VARCHAR(100);
	SET error = 'Venue is already in the table';
	IF NEW.venueName IN (select venueName from Venue) and NEW.city IN (select city from Venue) and NEW.country IN (select country from Venue)  THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = error;
	END IF;

END// 
DELIMITER ; 

