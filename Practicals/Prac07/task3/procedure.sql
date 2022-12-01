DROP procedure if exists empProj;
DELIMITER //
CREATE procedure empProj(
	employeeno CHAR(6),
	projectno CHAR(6),
	hours smallint
)


BEGIN
	if hours < 0 THEN SIGNAL SQLSTATE '42927' SET MESSAGE_TEXT = 'hours cannot be negative input';
		set hours = NULL;
	ELSE
		INSERT INTO Pworks(empno,projno,hours) VALUES(employeeno, projectno,hours);
	end if;



END
//
DELIMITER ; 

