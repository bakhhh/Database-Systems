#procedure that allows you to get the number of matches a player has played based on the playerID inputted
# Adapted from Lecture 7 slides, ISYS2014

DROP PROCEDURE IF EXISTS matchesPlayed;
CREATE PROCEDURE matchesPlayed(
	IN ID INT(3),
	OUT ecount INT
)
COMMENT 'counts how many matches a player has played '
SELECT COUNT(playerID) from PlayerPlays where playerID=ID INTO ecount;


