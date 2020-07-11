CREATE TABLE workHours (
dateTime datetime NOT NULL,
wh int NOT NULL,
status char(3) NOT NULL,
id int IDENTITY(1,1)

)


CREATE TABLE fuelConsumption(
date date NOT NULL,
counter int NOT NULL,
SFOC float NOT NULL,
dailyCons int NOT NULL
)


SELECT date, time FROM workHours Where id= (SELECT MAX(id) AS LastId FROM workHours)

INSERT INTO workhours VALUES('20200522 18:12' ,12, 'sta')
INSERT INTO workHours VALUES ('20200522 18:32',0,'sta')
INSERT INTO workHours VALUES ('20200522 18:33',0,'sta')
TRUNCATE TABLE workHours
SELECT MAX(id) as LastId FROM workHours

SELECT wh FROM workHours Where id= (SELECT MAX(id) AS LastID FROM workHours)

SELECT status FROM workHours Where id= (SELECT MAX(id) AS LastID FROM workHours)

SELECT status FROM workHours Where dateTime= (SELECT MAX(dateTime)  FROM workHours)

INSERT INTO fuelConsumption VALUES('20-05-2020', 45236)

SELECT counter FROM fuelConsumption WHERE date= (SELECT MAX(date) FROM fuelConsumption)