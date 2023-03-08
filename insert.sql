--insert train
INSERT INTO TRAIN VALUES('1','Orient Express','800','600','Paris','Istanbul','Weekdays'NULL,NULL);
INSERT INTO TRAIN VALUES('2','Flying Scotsman','4000','3500','Edinburgh','London','Friday', 'Saturday','Sunday');
INSERT INTO TRAIN VALUES('3','Golden Arrow','980','860','Victoria','Dover',	'Monday','Tuesday','Wednesday');
INSERT INTO TRAIN VALUES('4','Golden Chariot','4300','3800','Bangalore','Goa','Saturday','Sunday',NULL);
INSERT INTO TRAIN VALUES('5','Maharaja Express','5980','4510','Delhi','Mumbai','Wednesday','Thursday','Friday');

--insert train_status
INSERT INTO TRAIN_STATUS VALUES('2022/02/19','Orient Express','10','10','0','0');
INSERT INTO TRAIN_STATUS VALUES('2022/02/20','Flying Scottsman','8','5','2','5');
INSERT INTO TRAIN_STATUS VALUES('2022/02/21','Guwahati Express','7','6','3','4');
INSERT INTO TRAIN_STATUS VALUES('2022/02/21','Golden Chariot','6','3','4','7');

--insert booked
INSERT INTO BOOKED VALUES ('264816896','3','Premium','Booked');
INSERT INTO BOOKED VALUES ('240471168','2','General','Booked');
INSERT INTO BOOKED VALUES ('285200976','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('285200976','2','Premium','Booked');
INSERT INTO BOOKED VALUES ('317434088','2','Premium','Booked');
INSERT INTO BOOKED VALUES ('310908858','2','General','Booked');
INSERT INTO BOOKED VALUES ('322273872','2','General','Booked');
INSERT INTO BOOKED VALUES ('256558303','3','Premium','WaitL');
INSERT INTO BOOKED VALUES ('302548590','2','General','WaitL');
INSERT INTO BOOKED VALUES ('284965676','3','Premium','WaitL');
INSERT INTO BOOKED VALUES ('277292710','3','General','WaitL');
INSERT INTO BOOKED VALUES ('331160133','3','General','WaitL');
INSERT INTO BOOKED VALUES ('331293204','3','General','WaitL');
INSERT INTO BOOKED VALUES ('290123298','3','General','WaitL');
INSERT INTO BOOKED VALUES ('286411536','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('294860856','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('317434088','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('310908858','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('322273872','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('256558303','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('302548590','4','Premium','Booked');
INSERT INTO BOOKED VALUES ('284965676','4','General','Booked');
INSERT INTO BOOKED VALUES ('277292710','4','General','Booked');
INSERT INTO BOOKED VALUES ('331160133','4','General','Booked');
INSERT INTO BOOKED VALUES ('331293204','4','General','Booked');

--insert passenger
INSERT INTO PASSENGER VALUES ('James','Butt','6649 N Blue Gum St','New Orleans','Orleans','504-845-1427','264816896','1968/10/10');
INSERT INTO PASSENGER VALUES ('Josephine','Darakjy','4 B Blue Ridge Blvd','Brighton','Livingston','810-374-9840','240471168','1975/11,1');
INSERT INTO PASSENGER VALUES ('Art','Venere','8 W Cerritos Ave #54','Bridgeport','Gloucester','605-264-4130','285200976','1982/11/13');
INSERT INTO PASSENGER VALUES ('Lenna','Paprocki','639 Main St','Anchorage','Anchorage','907-921-2010','309323096','1978/8/9');
INSERT INTO PASSENGER VALUES ('Donette','Foller','34 Center St','Hamilton','Butler','513-549-4561','272610795','1990/6/11');
INSERT INTO PASSENGER VALUES ('Simona','Morasca','3 Mcauley Dr','Ashland','Ashland','419-800-6759','250951162','1994/8/15');
INSERT INTO PASSENGER VALUES ('Mitsue','Tollner','7 Eads St','Chicago','Cook','773-924-8565','272913578','1984/7/4');
INSERT INTO PASSENGER VALUES ('Leota','Dilliard','7 W Jackson Blvd','San Jose','Santa Clara','408-813-1105','268682534','1991/5/9');
INSERT INTO PASSENGER VALUES ('Sage','Wieser','5 Boston Ave #88','Sioux Falls','Minnehaha','605-794-4895','310908858','1982/2/25');
INSERT INTO PASSENGER VALUES ('Kris','Marrier','228 Runamuck Pl #2808','Baltimore','Baltimore City','410-804-4694','322273872','1956/4/4');
INSERT INTO PASSENGER VALUES ('Minna','Amigon','2371 Jerrold Ave','Kulpsville','Montgomery','215-422-8694','256558303','1995/9/9');
INSERT INTO PASSENGER VALUES ('Abel','Maclead','37275 St  Rt 17m M','Middle Island','Suffolk','631-677-3675','302548590','1960/11/5');
INSERT INTO PASSENGER VALUES ('Kiley','Caldarera','25 E 75th St #69','Los Angeles','Los Angeles','310-254-3084','284965676','1981/5/9');
INSERT INTO PASSENGER VALUES ('Graciela','Ruta','98 Connecticut Ave Nw','Chagrin Falls','Geauga','440-579-7763','277292710','1982/2/25');
INSERT INTO PASSENGER VALUES ('Cammy','Albares','56 E Morehead St','Laredo','Webb','956-841-7216','331160133','1956/4/4');
INSERT INTO PASSENGER VALUES ('Mattie','Poquette','73 State Road 434 E','Phoenix','Maricopa','605-953-6360','331293204','1995/9/9');
INSERT INTO PASSENGER VALUES ('Meaghan','Garufi','69734 E Carrillo St','Mc Minnville','Warren','931-235-7959','290123298','1960/11/2');
INSERT INTO PASSENGER VALUES ('Gladys','Rim','322 New Horizon Blvd','Milwaukee','Milwaukee','414-377-2880','286411536','1991/5/9');
INSERT INTO PASSENGER VALUES ('Yuki','Whobrey','1 State Route 27','Taylor','Wayne','313-341-4470','294860856','1985/2/25');
INSERT INTO PASSENGER VALUES ('Fletcher','Flosi','394 Manchester Blvd','Rockford','Winnebago','815-426-5657','317434088','1961/4/4');