#counts the number of players based on the team inputted
# Adapted from Lecture 7 slides, ISYS2014

DROP PROCEDURE IF EXISTS numPlayers;
CREATE PROCEDURE numPlayers(
	IN pTeam VARCHAR(32),
	OUT ecount INT
)
COMMENT 'count the num of players in team'
SELECT COUNT(*) FROM Player WHERE team = pTeam INTO ecount;


