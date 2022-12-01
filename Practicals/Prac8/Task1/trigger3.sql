DELIMITER //
DROP TRIGGER after_emp_update_total2 IF EXISTS;
CREATE TRIGGER after_emp_update_total2
	AFTER UPDATE ON Emp1
	FOR EACH ROW
	BEGIN
	IF OLD.salary IS NOT NULL  
		AND NEW.salary is NOT NULL THEN
		UPDATE Dept1
			SET total_sal = total_sal + NEW.salary - OLD.salary
			WHERE dept_no = NEW.dept_no;
		END IF;
	END
	//

DELIMITER ; 
