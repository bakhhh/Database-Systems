DROP PROCEDURE insEmpDetails;

DELIMITER //

CREATE PROCEDURE insEmpDetails(
f VARCHAR(12),
m CHAR(1), 
l VARCHAR(15), 
w CHAR(3), 
s DECIMAL (8,2) 
)
COMMENT 'insert into emp table'
BEGIN 
DECLARE nextid CHAR(6);
SELECT MAX(empno)+1 From Emp INTO nextid;
INSERT INTO Emp(empno,firstname,midinit,lastname,workdept,salary,bonus)
VALUES(nextid,f,m,l,w,s,0);

END//

DELIMITER ;

