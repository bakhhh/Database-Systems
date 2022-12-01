#Sohail Bakhshi 
#ID 20605126
#interactive menu that allows user to insert, select, delete, create, update my IPL database

import mysql.connector
from mysql.connector import Error

conn = mysql.connector.connect(
  host="localhost",
  user="me",
  password="myUserPassword",
  database="IPLDatabase_20605126"
)
cursor = conn.cursor()

#gets user input
def userInterface(): 
    getInput = str(input("\nInsert [1]\nSelect [2]\nDelete [3]\nCreate [4]\nUpdate [5]\nTable Structure [6]\nDisplay Tables [7]\nExit   [x]\n\nPlease Select an option: "))
    return getInput

#allows user to enter a select statement 
def select():
    getChoice = input("\nSelect all [1]\nChoose attributes [2]: ")
    if getChoice == '1':
        try:
            show() 
            inp = input("\nselect a table: ")
            select_stmnt = f'SELECT * FROM {inp}'
            cursor.execute(select_stmnt)		
            result = cursor.fetchall()
            for i in result:
                print(i)
        except mysql.connector.Error as error: #catches error
            print("Sorry failed to execute:  {}".format(error))

    if getChoice == '2':
        try:
            show()
            inp = input("\nEnter select statement: (SELECT attributes FROM TABLE): ")
            cursor.execute(inp)
            result = cursor.fetchall()
            for i in result:
                print(i)
        except mysql.connector.Error as error: #catches error
            print("Sorry failed to execute {}".format(error))

#allows for insertion into the database tables
def insert():
    try:
        inp = input("\nEnter insert statement (INSERT INTO 'Table' (attributes) VALUES (values)):\n ")
 
        cursor.execute(inp)

        conn.commit()

        print(cursor.rowcount, "record inserted.")

    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#allows user to delete a row from a table
def delete():
    try: 
        inp = input("\nEnter delete statement (DELETE FROM 'Table' WHERE 'condition'):\n ")
 
        cursor.execute(inp)

        conn.commit()

        print(cursor.rowcount, "record(s) deleted.")
    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#allows user to create a table in the database
def createTable():
    try:
        inp = input("\nEnter create statement (CREATE TABLE 'table name' (attribute DATATYPE(X)).. :\n")
        cursor.execute(inp)

        conn.commit()
    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#allows user to update a table in the database
def update(): 
    try:
        inp = input("\nUPDATE 'table' SET 'attribute' = '' WHERE 'condition':\n ")

        cursor.execute(inp)

        conn.commit()

        print(cursor.rowcount, "record(s) affected")
    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#shows the table structure
def desc():
    try:

        inp = input("\nselect a table: ")
        cursor.execute(f"Desc {inp}")
        for i in cursor:
            print(i)
    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#shows the tables in the database
def show():
    try:
        cursor.execute("SHOW TABLES")
        print("\n TABLES \n")
        for i in cursor:
            print(i)
    except mysql.connector.Error as error: #catches error
        print("Sorry failed to execute {}".format(error))

#interactive menu 
def menu():
    endLoop = False
    while endLoop == False:
        getInput = None
        if getInput != "x":    #while the input is not x return the menu
            getInput = userInterface()

        if getInput == "x":	#ends the loop
            endLoop = True

        if getInput == "1": 
            insert()

        elif getInput == "2":
            select()

        elif getInput == "3":
            delete()

        elif getInput == "4":	
            createTable()

        elif getInput == "5":
 
            update()

        elif getInput == "6":	
            desc()

        elif getInput == "7":	
            show()





menu()
