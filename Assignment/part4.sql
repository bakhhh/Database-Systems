#Sohail Bakhshi
#ID 20605126
#part 4 of assignment (using advanced concepts)
#file for testing advanced concepts

#procedures

#1 #testing insPlayer procedure
CALL insPlayer('Sohail Bakhshi', '2002/10/04','Afghanistan','Chennai Super Kings');
CALL insPlayer('Bob', '1980/1/14','Australia','Chennai Super Kings');

#2 testing numPlayers procedure
CALL numPlayers('Chennai Super Kings',@count);
select @count;
CALL numPlayers('Mumbai Indians',@count);
select @count;

#3 testing createPlayerList procedure
CALL createPlayerList(@playerList);
SELECT @playerList;

#4 testing createWinnersList procedure
CALL createWinnersList(@winnersList);
SELECT @winnersList;

#5 testing insVenue procedure
CALL insVenue('Optus Stadium','Perth','Australia');
CALL insVenue('Fake Stadium','FakeCity','FakeCountry');

#6 testing matchesPlayed procedure
CALL matchesPlayed(132,@matches);
select @matches;
CALL matchesPlayed(100,@matches);
select @matches;

#triggers

#1  #testing beforeInsPlayer trigger
CALL insPlayer('S Bakhshi', '2007/10/04','Afghanistan','Chennai Super Kings'); #wont insert as player is under 18

#2 #testing beforeInsVenue trigger

CALL insVenue('Optus Stadium','Perth','Australia'); #it should throw an error as it is already inserted previously

#3 #testing afterUpdateBatsman trigger

select * from BatsmanAverage; #check before
update Batsman set runs = 300 where playerID = 100;
select * from BatsmanAverage; #check after updating

#4 #testing afterUpdateBowler trigger
select * from BowlerAverage; #check before
update Bowler set runs = 200 where playerID = 102;
select * from BowlerAverage; #check after updating
 


#views


#1  #displaying the Top5Bowlers view
select * from Top5Bowlers;

#2 #displaying the Top5Batters view
select * from Top5Batters;

#3 #displaying the seasonWinner view
select * from seasonWinner;






