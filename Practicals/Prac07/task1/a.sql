CREATE PROCEDURE numEmp(
	IN dep CHAR(3),
	OUT ecount INT
)
COMMENT 'count the num of employees'
SELECT COUNT(*) FROM Emp WHERE workdept = dep INTO ecount;

