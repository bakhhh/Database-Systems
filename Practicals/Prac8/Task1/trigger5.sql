DELIMITER //

CREATE TRIGGER before_emp_update_salary
	BEFORE INSERT ON Emp1
	FOR EACH ROW
	BEGIN
	IF NEW.salary < 24000 THEN
	SIGNAL SQLSTATE '45000'

		SET MESSAGE_Text = 'salary cant be lower than 24000';
	END IF;
	END
	//

DELIMITER ; 
