#trigger that updates the batsman average if runs, innings or outs is changed/updated

DELIMITER //
DROP TRIGGER IF EXISTS afterUpdatingBatsman;
CREATE TRIGGER afterUpdatingBatsman
	AFTER UPDATE ON Batsman
	FOR EACH ROW
BEGIN
	UPDATE BatsmanAverage SET Average =  NEW.runs/(NEW.innings-NEW.NumOuts) where playerID = NEW.playerID; 
	UPDATE BatsmanAverage SET runs =  NEW.runs where playerID = NEW.playerID;
	UPDATE BatsmanAverage SET innings =  NEW.innings where playerID = NEW.playerID;
	UPDATE BatsmanAverage SET outs =  NEW.NumOuts where playerID = NEW.playerID;
END//





DELIMITER ; 

