
create procedure countNumEmp2(
    in dep CHAR(3)
)
SET @num = (select count(*) from Emp where workdept = dep);
