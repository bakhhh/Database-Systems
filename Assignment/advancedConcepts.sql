#Sohail Bakhshi
#ID 20605126
#part 4 of assignment (using advanced concepts)
#file for sourcing advanced concepts

#procedures

#1 allows for player insertion
source procedures/insPlayer.sql

#2 allows user to count the number of players within a team of choice
source procedures/countPlayers.sql

#3 displays a list of all mvp players
source procedures/playerList.sql

#4 displays a list of teams that have won at least 1 match
source procedures/winnersList.sql

#5 allows for venue insertion
source procedures/insVenue.sql

#6 allows users to count the number of matches a player played
source procedures/countMatchesPlayed.sql


#triggers

#1 before inserting player it checks if player is over 18
source triggers/beforeInsPlayer.sql

#2 before inserting player it checks if venue already exists
source triggers/beforeInsVenue.sql

#3 if there is an update to runs or innings or numouts it will update the average  
source triggers/afterUpdatingBatsman.sql

#4 if there is an update to runs or wickets it will update the average  
source triggers/afterUpdatingBowler.sql

 

#views


#1 view that displays the top 5 bowlers
DROP view if exists Top5Bowlers;

CREATE VIEW Top5Bowlers AS SELECT playerID,playerName,Team from Bowler ORDER BY Wickets DESC LIMIT 5;


#2 view that displays the top 5 batters
DROP view if exists Top5Batters;

CREATE VIEW Top5Batters AS SELECT playerID,playerName,team from Batsman ORDER BY runs DESC LIMIT 5;


#3 gets the winner of the season
DROP view if exists seasonWinner;

CREATE VIEW seasonWinner AS SELECT winner AS 'Season 1 Winner',COUNT(winner) AS 'Number of wins' from cricketMatch GROUP by winner ORDER BY COUNT(winner) DESC LIMIT 1;






