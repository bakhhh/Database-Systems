DROP procedure if exists empProj2;
DELIMITER //
CREATE procedure empProj2(
	employeeno CHAR(6),
	projectno CHAR(6),
	hours smallint
)


BEGIN
	SET @Error ='unable to find employee number or project number';
	if hours < 0 THEN SIGNAL SQLSTATE '42927' SET MESSAGE_TEXT = 'hours cannot be negative';
end if;
		set hours = NULL;
	if employeeno NOT IN (select empno from Emp) OR
	projectno NOT IN ( select projno from Proj) THEN select @Error;

ELSE
		INSERT INTO Pworks(empno,projno,hours) VALUES(employeeno, projectno,hours);
	end if;



END
//
DELIMITER ; 

