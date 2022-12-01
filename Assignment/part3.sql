#part 3 of assignment
#Sohail Bakhshi
#ID 20605126
#LEVEL1
#using basic select statements

#1 calculate the current age of players based off there birthdate and determine if there are any players younger than the general retirement age and display it next to their name and id

Select playerID, playerName, floor(DATEDIFF(CURDATE(), DOB)/ 365.25) AS Age From Player where floor(DATEDIFF(CURDATE(), DOB)/ 365.25) between 18 and 35 ;

#2 display players name, ID and country that are playing in the final. These teams are called Chennai Super Kings and Rajasthan Royals

Select playerID, playerName,country from Player where team ='Chennai Super Kings' or team = 'Rajasthan Royals';

#3 display the winners of each match

select matchID,team1,team2, winner from cricketMatch;


#4 show players with fast bowling skill

select playerName,bowlingSkill from Player where bowlingSkill is NOT NULL and bowlingSkill LIKE '%fast%';


#5 get how many days the season lasted 

select DATEDIFF(MAX(matchDate),MIN(matchDate)) AS 'Season Runtime (Days)'  from cricketMatch;






#LEVEL2 
#using joins and subqueries

#joins

#1 display the names of the players who are MVPs in the match tables 

select m.matchID,p.playerName AS 'Man Of The Match' from Player p inner join cricketMatch m on m.matchMVP = p.playerID;

#2 display first 5 matches and its venue name, city and country

select m.matchID,v.venueName as Venue, country as Country,city AS City from Venue v inner join cricketMatch m on m.venueID = v.venueID order by m.matchID LIMIT 5;

#3 display the players names of those whos role is a player

select playerName from Player p inner join PlayerPlays pp on p.playerID = pp.playerID where pp.role ='Player' group by playerName;

#4 display a list of players and the match ID of the match a player was mvp of. If they werent an MVP NULL should be displayed.

select p1.playerID,p1.playerName,c.matchID AS 'MVP of match' from Player p1 left outer join cricketMatch c on c.matchMVP = p1.playerID order by playerID;

#5 get the stats of the player that got orange cap and purple cap

select s.orangeCap,b.matchesPlayed,b.innings,b.runs,b.strikeRate,s.purpleCap,b2.matchesPlayed,b2.innings,b2.runs,b2.strikeRate from Batsman b inner join Season s on b.playerName =s.orangeCap inner join Bowler b2 on b2.playerName = s.purpleCap;
 


#sub-queries

#6 display players that did not get matchMVP 

select playerID,playerName from Player where playerID Not IN (select matchMVP from cricketMatch where playerID = matchMVP);

#7 get players over the age of 35

select p1.playerName, floor(DATEDIFF(CURDATE(), DOB)/ 365.25) AS AGE from Player p1 where floor(DATEDIFF(CURDATE(), DOB)/ 365.25) IN (select floor(DATEDIFF(CURDATE(), DOB)/ 365.25) from Player p2 where floor(DATEDIFF(CURDATE(), DOB)/ 365.25) > 35); 

#8 display the amount of players in each team

select team, count(team) as 'Number of players' from Player where team IN (select team from Player p2 where team = p2.team) group by team;


#9 display captains name of each team

select team AS Team,playerName AS Captain from Player p where playerID IN (select playerID from PlayerPlays pp where p.playerID = pp.playerID and pp.role ='Captain');

#10 display bowlers that have a strike rate greater than the max strike rate minus 10

select b.playerName, b.strikeRate from Bowler b where b.strikeRate > ALL(select MAX(b2.strikeRate) from Bowler b2 group by b.playerName having b.strikeRate< MAX(b2.strikeRate)-10);







