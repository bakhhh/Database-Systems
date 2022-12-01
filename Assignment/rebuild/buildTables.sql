#file that sources all the tables

DROP Table IF EXISTS PlayerPlays;
DROP Table IF EXISTS TeamPlays;
DROP Table IF EXISTS Batsman;
DROP Table IF EXISTS BatsmanAverage;
DROP Table IF EXISTS Bowler;
DROP Table IF EXISTS BowlerAverage;
DROP Table IF EXISTS cricketMatch;
DROP Table IF EXISTS Venue;
DROP Table IF EXISTS Player;
DROP Table IF EXISTS Team;
DROP Table IF EXISTS Season;


source rebuild/createTeam.sql
source rebuild/createPlayer.sql
source rebuild/createBatsman.sql
source rebuild/createBatsmanAve.sql
source rebuild/createBowler.sql
source rebuild/createBowlerAve.sql
source rebuild/createSeason.sql
source rebuild/createVenue.sql
source rebuild/createMatch.sql
source rebuild/createPlayerPlays.sql
source rebuild/createTeamPlays.sql
