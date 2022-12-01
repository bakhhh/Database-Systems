
/* createtables.sql: MySQL fle for table creation in DbS 2022 Practical-2 */

-- create dept table
--
 CREATE TABLE Dept
               (deptno   CHAR(3),
                deptname VARCHAR(36)    NOT NULL,
                mgrno    CHAR(6),
                admrdept CHAR(3)        NOT NULL,
        	PRIMARY KEY(deptno)
);

-- create Emp table
--
 CREATE TABLE Emp
               (empno     CHAR(6)		 ,
                firstname VARCHAR(12)	NOT NULL ,
                midinit	  CHAR(1)                ,
                lastname  VARCHAR(15)	NOT NULL ,
                workdept  CHAR(3)	NOT NULL ,
                phoneno   CHAR(4)                ,
                hiredate  DATE                   ,
                job	  CHAR(10)      NOT NULL ,
                edlevel	  INT(2)              	 ,
                gender    CHAR(1)	NOT NULL ,
                birthdate DATE                   ,
                salary    DECIMAL(8,2)           ,
                bonus     DECIMAL(8,2)           ,
                comm      DECIMAL(8,2)		 ,
		PRIMARY KEY(empno)
		
);
