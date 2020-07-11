CREATE TABLE Temperatures2 (
	date date NOT NULL,
	t1 int NOT NULL,
	t2 int NOT NULL,
	t3 int NOT NULL,
	t4 int NOT NULL,
	t5 int NOT NULL,
	t6 int NOT NULL,
	load int NOT NULL,
	Id int IDENTITY (1,1) NOT NULL
	)

CREATE TABLE Pressures2(
date date NOT NULL,
 Pz float NOT NULL,
 Pc float NOT NULL,
Pz2 float NOT NULL,
Pc2 float NOT NULL,
Pz3 float NOT NULL,
Pc3 float NOT NULL,
Pz4 float NOT NULL,
Pc4 float NOT NULL,
Pz5 float NOT NULL,
Pc5 float NOT NULL,
Pz6 float NOT NULL,
Pc6 float NOT NULL,
Id int IDENTITY (1,1) NOT NULL
)

INSERT INTO Pressures2 (date, Pz , Pc ,Pz2 ,Pc2 ,Pz3 ,Pc3 ,Pz4 ,Pc4 ,Pz5 ,Pc5 ,Pz6 ,Pc6) 
	SELECT date, Pz , Pc ,Pz2 ,Pc2 ,Pz3 ,Pc3 ,Pz4 ,Pc4 ,Pz5 ,Pc5 ,Pz6 ,Pc6 FROM Pressures WHERE date>='01.02.2020' and date<='18.05.2020'



	INSERT INTO Temperatures2 (date, t1 ,t2 ,t3 ,t4 ,t5 ,t6, load)
	SELECT date, t1 ,t2 ,t3 ,t4 ,t5 ,t6, load FROM Temperatures WHERE date>='01.02.2020' and date<='18.05.2020'