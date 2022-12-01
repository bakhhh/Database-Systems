CREATE PROCEDURE resetEmpNewBonus2(IN val DECIMAL(8,2))
COMMENT 'Sets bonus to value provided'
UPDATE Emp
SET newBonus =val;
