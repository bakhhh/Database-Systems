DELIMITER $$
DROP PROCEDURE IF EXISTS createProgList;
CREATE PROCEDURE createProgList (OUT pList varchar(2000) )
BEGIN

	DECLARE done INTEGER DEFAULT 0;
	DECLARE fullName varchar(40) DEFAULT '';



	DECLARE curProgNames CURSOR FOR SELECT CONCAT(firstname,' ',lastname)
			FROM Emp WHERE job = 'Programmer';


	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	SET pList ='';
	OPEN curProgNames;
	getProgNames: LOOP
	FETCH curPRogNames INTO fullName;
		IF done = 1 THEN 
			LEAVE getProgNames;
		END IF;
		SET pList = CONCAT(pList,',',fullName);
	END LOOP getProgNames;
	CLOSE curProgNames;

END 
$$
DELIMITER ;

