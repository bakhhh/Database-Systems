CREATE PROCEDURE resetEmpNewBonus()
COMMENT 'Sets bonus to 0'
UPDATE Emp
SET newBonus =0;
