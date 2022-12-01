#trigger that displays an error if player is under 18
DELIMITER //
DROP TRIGGER IF EXISTS beforeInsPlayer;
CREATE TRIGGER beforeInsPlayer
	BEFORE INSERT ON Player
	FOR EACH ROW
	BEGIN
	DECLARE error VARCHAR(100);
	SET error = 'Player must at least 18';
	IF floor(DATEDIFF(CURDATE(), NEW.DOB)/ 365.25) <18 THEN
		SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = error;
	END IF;

END// 
DELIMITER ; 

