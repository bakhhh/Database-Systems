#Displays a list of the mvp players of each match
# Adapted from Lecture 7 slides, ISYS2014

DELIMITER $$
DROP PROCEDURE IF EXISTS createPlayerList;
CREATE PROCEDURE createPlayerList (OUT pList varchar(2000) )
BEGIN

	DECLARE done INTEGER DEFAULT 0;
	DECLARE Name varchar(40) DEFAULT '';



	DECLARE curPlayerNames CURSOR FOR select p.playerName from Player p inner join cricketMatch m on m.matchMVP = p.playerID;


	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	SET pList ='';
	OPEN curPlayerNames;
	getPlayerNames: LOOP
	FETCH curPlayerNames INTO Name;
		IF done = 1 THEN 
			LEAVE getPlayerNames;
		END IF;
		SET pList = CONCAT(pList,Name,', ');
	END LOOP getPlayerNames;
	CLOSE curPlayerNames;

END 
$$
DELIMITER ;


