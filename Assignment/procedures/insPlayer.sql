#procedure to insert player into player table
# Adapted from Lecture 7 slides, ISYS2014

DROP PROCEDURE IF EXISTS insPlayer;

DELIMITER //

CREATE PROCEDURE insPlayer(
name varchar(36),
birthday DATE,
country varchar(24),
team varchar(36)
)

COMMENT 'insert into player table'
BEGIN
DECLARE nextid INT(3);
SELECT MAX(playerID)+1 From Player INTO nextid; #adds 1 to max playerID and thats the new playerID

INSERT INTO 
Player(playerID,playerName,DOB,country,team)
VALUES(nextid,name,birthday,country,team);

END//

DELIMITER ;


