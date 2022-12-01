#Displays teams that have won at least 1 game in order based on how many wins (front would have the most wins of the season =Rajasthan Royals)
# Adapted from Lecture 7 slides, ISYS2014

DELIMITER $$
DROP PROCEDURE IF EXISTS createWinnersList;
CREATE PROCEDURE createWinnersList (OUT wList varchar(2000) )
BEGIN

	DECLARE done INTEGER DEFAULT 0;
	DECLARE Name varchar(40) DEFAULT '';



	DECLARE curWinners CURSOR FOR select winner from cricketMatch GROUP by winner ORDER BY COUNT(winner) DESC;



	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	SET wList ='';
	OPEN curWinners;
	getWinners: LOOP
	FETCH curWinners INTO Name;
		IF done = 1 THEN 
			LEAVE getWinners;
		END IF;
		SET wList = CONCAT(wList,Name,', ');
	END LOOP getWinners;
	CLOSE curWinners;

END 
$$
DELIMITER ;


