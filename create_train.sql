-- Run this script directly in the MySQL server query window it will automatically create the database and all the database objects.


DROP TABLE IF EXISTS BOOKED;
CREATE TABLE BOOKED(Passenger_ssn CHAR(9) NOT NULL PRIMARY KEY, Train_Number INT  NOT NULL, Ticket_type VARCHAR(7) NOT NULL, Status VARCHAR(6) NOT NULL);


INSERT INTO TICKET VALUES (hi,7,general,booked);


-- Select Staements to validate all the tables were created properly
SELECT * FROM BOOKED;


