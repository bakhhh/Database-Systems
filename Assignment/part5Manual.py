#Sohail Bakhshi 
#ID 20605126
#manual version #non interactive version
import mysql.connector
from mysql.connector import Error
#connecting to mysql database using python
conn = mysql.connector.connect(
  host="localhost",
  user="me",
  password="myUserPassword",
  database="IPLDatabase_20605126"
)
cursor = conn.cursor()

#inserting a player using my procedure
try:

    cursor.callproc('insPlayer',['Sohail bakhshi','2002/10/04','Afghanistan','Chennai Super Kings'])
    for result in cursor.stored_results():
        print(result.fetchall())

except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute stored procedure named insPlayer")


#using a select statement to select from player table
try:
   
    cursor.execute("SELECT playerID,playerName FROM Player")

    result = cursor.fetchall()
    print("\nDisplaying Players")
    for i in result:
        print(i)
except mysql.connector.Error as error:  #error handling
    print("Sorry failed to execute select statement")

#using a select state to display the venue and city from venue table
try:

    cursor.execute("SELECT venueName,city FROM Venue")

    result = cursor.fetchall()
    print("\nDisplaying Venues")
    for i in result:
        print(i)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute select statement")

#updating runs in bowler table
try:

    cursor.execute("UPDATE Bowler SET runs = 900 WHERE playerID =102 ")

    conn.commit()
    print(cursor.rowcount, "record(s) affected in Bowler")
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute update statement")

#checking if it updated by using a select statement
try:

    cursor.execute("SELECT playerID,runs FROM Bowler")

    result = cursor.fetchall()
    print("\nDisplaying Bowler")
    for i in result:
        print(i)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute select statement")




#check if the trigger works and updates bowler average after updating the bowler table
try:

    cursor.execute("SELECT p.playerName,a.Average FROM BowlerAverage a inner join Player p on p.playerID = a.playerID")

    result = cursor.fetchall()
    print("\nDisplayling BowlerAverage")
    for i in result:
        print(i)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute select statement")


#inserting values into cricketMatch table
try:
    statement = "INSERT INTO cricketMatch (matchID,season,venueID) VALUES (%s,%s,%s)"
    val = ('336046',1,4)
    cursor.execute(statement,val)
    conn.commit()
    print(cursor.rowcount, "record inserted.")
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute insert statement {}".format(error))


#checking if inserted via select statement
try:

    cursor.execute("SELECT * FROM cricketMatch WHERE matchID =336046")

    result = cursor.fetchall()
    print("\nDisplayling MATCH info")
    for i in result:
        print(i)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute select statement")

#deleting 
try:
    cursor.execute("DELETE FROM cricketMatch where matchID=336046")
    print('\nDeleted row')
    
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute query {}".format(error))




#dropping a table if exists
try:

    cursor.execute("DROP TABLE IF EXISTS newMatch ")
except mysql.connector.Error as error:  #error handling
    print("Sorry failed to execute query {}".format(error))

#creating a new table
try:

    cursor.execute("CREATE TABLE newMatch (matchID CHAR(6), Venue VARCHAR(36))")
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute query {}".format(error))

#inserting into the new table
try:
    statement = "INSERT INTO newMatch (matchID,Venue) VALUES (%s,%s)"
    val = ('123456','Wankhede Stadium ')
    cursor.execute(statement,val)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute query {}".format(error))

#checking if values got inserted
try:
    cursor.execute("SELECT * FROM newMatch")
    result = cursor.fetchall()
    print("\nDisplayling newMATCH ")
    for i in result:
        print(i)
except mysql.connector.Error as error: #error handling
    print("Sorry failed to execute query {}".format(error))












