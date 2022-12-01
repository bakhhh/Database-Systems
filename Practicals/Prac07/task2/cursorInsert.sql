DROP procedure if exists curdemo;
DELIMITER //
create procedure curdemo()
begin
	declare done INT DEFAULT False;
	declare a char(3);
	declare b,c INT;
	declare cur1 cursor for select id, dat from dswork.t1;
	declare cur2 cursor for select i from dswork.t2;
	declare continue handler for not found set done = true;

	open cur1;
	open cur2;

	read_loop: LOOP
		fetch cur1 into a,b;
		fetch cur2 into c;
		if done then 
			leave read_loop;
		end if;
		if b< c then 
			insert into dswork.t3 values(a,b);
		else
			insert into dswork.t3 values(a,c);
		end if;
end loop;
close cur1;
close cur2;
END;
// 
DELIMITER ;


