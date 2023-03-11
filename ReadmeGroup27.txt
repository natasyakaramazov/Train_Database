HOW TO USE OUR DATABASE:   
-sqlite3 train27.sqlite


TOOLS USED: 


Lucidcharts to create the ER diagram
VScode to edit some of the .csv files (remove spaces from the table headers)
Terminal to create and query the database itself
Github as a version control system to share the database among each other
Google Docs for the ReadMe file


METHODS TO LOAD DATA:


In order to create the tables, we wrote the create table statements for the four entities in a .sql file. After writing the four statements with their constraints, primary keys, and foreign references, we created our sqlite using "sqlite3 train27.sqlite". After that, we used the .read <filename>.sql method in the sqlite to read the create statements from the .sql file. To confirm, we used .schema to confirm the tables were successfully created. 


To load the raw data into the created tables, .import was used to accomplish this. To make sure that all of the raw data did not have extra spaces, we edited the csv files for passenger, booked, train and train_status. In the train27.sqlite, we used the “.mode” csv so that it could accept the csv files. After we imported the tables, initially, we used the DELETE command to delete the headers of the csv files. However, we found out about the command, .import --skip 1 <filename>.csv <table_name> was used to import the raw data into their correct tables, which we used later. We used skip 1 because without it, the headers in the csv files were included in our imports. The skip 1 command allowed us to ignore the first line and import only the raw data into the table. 


To load the output data of the queries into an output file, .output <filename>.csv was used. Before using that method, .mode csv has to be used because we are working on a csv type file. After both those commands are used, we run our queries in order from 2 to 9. Instead of putting the output in the terminal, it redirected the output to the file that was specified with “.output”. This loaded all the results of our queries into the output file. 
















QUERIES:


 Kierra:


   For query 3  I used no aliases in my queries just to make sure I had full comprehension of which tables I was referring to when I connected them for my queries. Also, I had to utilize parenthesis in my select statement when referring to the available_on attributes. I listed  all of the other requirements under the where operator, - booked.passanger_ssn = passenger.ssn -  and grouped the available_on operators by the OR operator   within the parenthesis.  Otherwise I was met with redundancies and extra passengers. 


	select first_name, last_name from passenger, train, booked  where   booked.train_number = train.train_number AND booked.passanger_ssn = passenger.ssn AND booked.staus = ‘Booked’ AND (available_on1 = 'Friday' or available_on2 = 'Friday' or available_on3 = 'Friday');
	

	 
For query 8 it was fairly straightforward, I just had to utilize the LIKE operator for the phone number and instead of % I used the underscore _ in anticipation of the subsequent numbers in a phone number, only inputting the dashes between. I only had to search within the passenger table and didn’t have to link attributes through foreign keys. I didn’t expect the order by keyword to require a column for the descending order, but I chose to do it by phone number because that made the most sense to me. 






	select first_name, last_name from passenger where phone LIKE '605-___-____' ORDER BY phone desc;
	

	





Josh:


   For query 4, BOOKED and TRAIN have the same variable name, Train_Number so I used their table names to specify which one I was referring to. I assumed that the input values were the imported raw data for passengers birthday. I also assumed that the age was found using the present day so I computed their age by their birthday and the present day's date. I checked the date that would determine if a person was 50 or 60 by using the present date. The dates that would determine that are 1963/3/9 for 60 and 1973/3/9 for 50. The date will change everyday as the days go on but that was computed using the day I did the query. I checked to see if their “bdate” was greater than and equal to 1963/3/9 and less than and equal to 1973/3/9. I compared the foreign variables to make sure I did not get duplicates.


select TRAIN.Train_Number, Train_name, Source_Station, Destination_Station, first_name, last_name, Ticket_type, Staus from TRAIN,PASSENGER, BOOKED where bdate >= '1963/3/9' and bdate <= '1973/3/9' and TRAIN.Train_Number = BOOKED.Train_Number and BOOKED.Passanger_ssn = PASSENGER.SSN;


   For query 7, the same processes was done. I compared the foreign key values to get a specific non duplicated value. I checked to see of the status was “waitL” and compared the passengers and booked ssn to get a non duplicated person. I did the same with the booked train number and trains train number. This way, the same train name would not be given twice.


select first_name, last_name,Train_Name from PASSENGER,BOOKED,TRAIN where Staus = 'WaitL' and PASSENGER.SSN = BOOKED.Passanger_ssn and BOOKED.Train_Number = TRAIN.Train_Number;


Abhinav:


For Query 2, booked and train had the same attribute name, Train_Number, hence, I used aliases to refer to the certain table attribute. I used the SSN in the Passenger table and passenger_ssn in the Booked table and the train numbers from booked and train tables to establish the relationship between the tables. I assumed that we wanted to retrieve the train names for a random passenger using their first name and last name, hence, I chose to go with a passenger named Cammy Albares. The following is the query for question number 2 which gives all the train names for which the passenger is booked for:


 select Train_Name from Train as t, booked as b, Passenger as p where p.SSN = b.Passanger_ssn AND b.Train_Number=t.Train_Number AND first_name = 'Cammy' AND last_name='Albares' AND b.staus = ‘Booked’;




For Query 6, just as query 2, I used aliases to confirm which table  the query was referring to. Just like Query 2, I used the SSN in the Passenger table and Passenger_ssn from the booked table to establish a relationship between the two. Also, I used the Train_Numbers from the booked and train tables to connect them to display all the passengers first and last names AND having the status as Booked. I also assumed we had to choose a random train name for this question to display all the passengers with confirmed status traveling in that train. Since the train names had a whitespace in between, I had to use trim inorder to take care of that whitespace in the train name. The following is the query for question number 6:


select first_name,last_name from Train as t, Passenger as p, booked as b where p.SSN = b.Passanger_ssn AND b.Train_Number=t.Train_Number AND trim(t.Train_Name)= trim('Golden Chariot') AND Staus = 'Booked';


 All:


   For query 5, we assumed that the day in the query meant the traindate that it was set to depart. With that assumption, we only used one table to find out the trains name and number of people occupying the train. The number of people occupying the train was split into two groups, the general and premium seat. 


select trainname,traindate, genseatsoccupied,premiumseatsoccupied from train_status;
  
  For query 9, we used three tables; passenger, booked, and train. We checked to see that all the foreign keys were matching. We put their table names in front of their variables just to be safe in out query. The last case was finding out which train was on thursday. We used an OR logical operator to check for the three columns. If any of those were Thursday then it would print the people who booked that train. We used ORDER BY to list their first and last name in ascending order. No output was given because no one booked for train 5 and that was the only train that offered Thursday.


select first_name, last_name from passenger,booked, train where booked.passanger_ssn = passenger.ssn AND booked.train_number = train.train_number AND (available_on1 = 'Thursday' OR available_on2 = 'Thursday' OR available_on3 = 'Thursday') ORDER BY first_name, last_name asc;




Finalization:
Throughout the project, we updated our individual query files as we “finished” them and updated a txt file with the queries we did together.  However, after meeting again to look everything over, we noticed some flaws with our queries. Primarily with queries 2,3 and 5. In query 2 and 3 we realized in order to make sure only confirmed/booked trains and passengers would show up  that we had to add “staus = “Booked”” and “booked.staus  = “Booked”” respectively.  This resulted in one less result for both queries.  In query 5, we forgot to list the date, so we added traindate to the select statement resulting in the date appearing in the result. 




























HONOR CODE




HONOR CODE


I pledge, on my honor, to uphold UT Arlington's tradition of academic integrity, a tradition that values hard work and honest effort in the pursuit of academic excellence.


I promise that I will submit only work that I personally create or that I contribute to group collaborations, and I will appropriately reference any work from other sources. I will follow the highest standards of integrity and uphold the spirit of the Honor Code.










Kierra Ashford, Joshua Lian, Abhinav Lal Shrestha