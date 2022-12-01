#trigger that updates the bowler average if runs or wickets is changed/updated
DELIMITER //
DROP TRIGGER IF EXISTS afterUpdatingBowler;
CREATE TRIGGER afterUpdatingBowler
	AFTER UPDATE ON Bowler
	FOR EACH ROW
BEGIN
	UPDATE BowlerAverage SET Average =  NEW.runs/NEW.Wickets where playerID = NEW.playerID; 
	UPDATE BowlerAverage SET runs =  NEW.runs where playerID = NEW.playerID;
	UPDATE BowlerAverage SET wickets =  NEW.wickets where playerID = NEW.playerID;

END//





DELIMITER ; 

