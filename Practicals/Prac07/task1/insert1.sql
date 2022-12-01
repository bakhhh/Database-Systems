CREATE PROCEDURE insEmpDetails(
e CHAR(6), 
f VARCHAR(12),
m CHAR(1), 
lastname VARCHAR(15), 
w CHAR(3), 
s DECIMAL (8,2) 
)
COMMENT 'insert into emp table'

INSERT INTO Emp(empno,firstname,midinit,lastname,workdept,salary,bonus)
VALUES(e,f,m,lastname,w,s,0);
