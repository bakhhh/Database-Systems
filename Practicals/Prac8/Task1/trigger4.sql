DELIMITER //

CREATE TRIGGER after_emp_delete_total2
	AFTER DELETE ON Emp1
	FOR EACH ROW
	BEGIN
	IF OLD.dept_no IS NOT NULL  
		AND OLD.salary is NOT NULL THEN
		UPDATE Dept1
			SET total_sal = total_sal - OLD.salary
			WHERE dept_no = OLD.dept_no;
		END IF;
	END
	//

DELIMITER ; 
