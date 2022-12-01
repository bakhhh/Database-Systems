source rebuild.sql
#1
CREATE view ManagingDept AS SELECT empno ,firstname, lastname, job, deptno AS ManagerDeptNo, deptname FROM Emp INNER JOIN Dept ON empno = mgrno AND job='Manager';

#2

CREATE view ManagingDept2 AS SELECT e.empno ,e.firstname,e.midinit,e.lastname, e.phoneno, m.deptname FROM Emp e INNER JOIN ManagingDept m ON e.empno = m.empno;

#3

UPDATE Emp SET firstname ='Sohail', lastname ='Bakhshi' WHERE phoneno ='3476';
SELECT * from ManagingDept;
SELECT * from ManagingDept2;

