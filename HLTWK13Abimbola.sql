-- TechTalent Trainee Home Leraning Week 13
-- 1. Create a relational database (2 tables) of your own choice

SHOW DATABASES;

CREATE DATABASE Hospital_bim2;

USE Hospital;

-- Creation of the First Table
CREATE TABLE London_hospital2(
Lhos_id int not null,
Lhos_name varchar(30) not null,
Lhos_add char(50) not null,
Lhos_pcode char(30) not null,
Lhos_Xcoord decimal(12,3),
Lhos_Ycoord decimal(12,3),
Lhos_Mdirector varchar(30) not null,
Lhos_NoDoctor int not null,
Lhos_NoNurses int not null,
Lhos_PhoneNo char(17) not null,
Lhos_PatienceID int not null,
primary key(Lhos_id),
unique(Lhos_Xcoord)
);

explain London_hospital2; 

INSERT INTO London_hospital2 (Lhos_id, Lhos_name, Lhos_add, Lhos_pcode, Lhos_Xcoord, Lhos_Xcoord, Lhos_Ycoord, Lhos_Mdirector, Lhos_NoDoctor, Lhos_NoNurses, Lhos_PhoneNo, Lhos_PatienceID)
VALUES
(1, "LHOS1", "Rodin", "Westwick Avenue", "NG1 3DU", "243567.111", "563217.243", "Fahd", "10", "50", "07071722569", "P1"),
(2, "LHOS2", "Radia", "Lonsdale Road", "NG7 3DU", "050217.321", "321017.205","Mary", "15", "57", "07873722569", "P2"),
(3, "LHOS3", "Radis", "Ranelagh Grove", "NG7 1HS", "541122.141", "512241.114","Temi", "12", "47","07381722589", "P3"),
(4, "LHOS4", "Wollaton", "Western Crescent", "NG8 4HB", "200502.136", "206003.512", "Deji", "11", "22","07671922577", "P4"),
(5, "LHOS5", "Radford", "Radford Boulevard", "NG9 3TU", "756071.011", "707116.501", "Bosun", "30","45","07471722569", "P5"),
(6, "LHOS6", "Basford", "Pixton Lane", "NG5 4TD","155422.239", "125945.223", "Onyinye", "25", "65","07591722579", "P6"),
(7, "LHOS7", "Ilkeston", "Church Road", "NG1 1ST", "321217.050", "310150.227", "Timme", "55", "75", "07872273569", "P7"),
(8, "LHOS8", "Hyson", "Toton Street", "NG7 1HS", "521412.411", "541112.241", "John", "21", "74","07381725829", "P8"),
(9, "LHOS9", "Beeston", "Eastern Road", "NG4 2BH", "213600.502", "020513.206", "Wood", "13", "28","07692271577", "P9"),
(10, "LHOS10", "Stapleford", "University Park", "NG10 3UT", "756071.011", "715016.071", "Brown", "33", "41", "07427172569", "P10"),
(11, "LHOS11", "Peters", "Braston Lane", "NG11 2DT","152392.542", "142255.293", "Green", "52", "56", "07517292579", "P11")
;

-- Creation of the Second Table

CREATE TABLE Patience_Detail(
PatienceID INT NOT NULL PRIMARY KEY,
PatienceName VARCHAR(80),
PatienceAdd varchar(30) NOT NULL,
PatiencePcode varchar(30) not null, 
PatienceAge INT NOT NULL
);

INSERT INTO Patience_Detail (PatienceID, PatiencePcode, PatienceAdd, PatienceName, PatienceAge)
VALUES
(1, "P1", "James", "Wickwest Avenue", "NG3 1DU", "70"),
(2, "P2", "David", "Fundale Road", "NG3 7DU", "67"),
(3, "P3", "Bukky", "ASDA Grove", "NG1 7HS", "27"),
(4, "P4", "Tim", "Pretty Crescent", "NG4 8HB", "28"),
(5, "P5", "Jade", "Pitfall Boulevard", "NG3 9TU", "77"),
(6, "P6", "George", "BouncyLane", "NG4 5TD", "56"),
(7, "P7", "Stacey", "Beounce Road", "NG3 5ST", "15"),
(8, "P8", "Reis", "Miami Street", "NG1 7HS", "18"),
(9, "P9", "Dammy", "Northern Road", "NG2 6BH", "45"),
(10, "P10", "Funky", "Jubilee Campus", "NG3 8UT", "21"),
(11, "P11", "Daniel", "Green Lane", "NG14 7XT","34")
;

explain Patience_Detail; 

SELECT * FROM Patience_Detail;

-- Updating a record from Patience_Detail 
UPDATE Patience_Detail
SET PatienceName = 'Smith', PatienceAge= '33'
WHERE PatienceID = 10;

-- Deleting a record from Patience_Detail 
DELETE FROM Patience_Detail WHERE CustomerName='Daniel';
EXPLAIN orders;


-- Joining tables
SELECT London_hospital2.Lhos_name, Patience_Detail.PatienceID
FROM London_hospital2
INNER JOIN Patience_Detail
ON London_hospital2.Lhos_id = Patience_Detail.PatienceID;

-- RunNING a simple query (one field/column) searching one table
SELECT 
	Lhos_name, 
    Lhos_add
FROM 
	London_hospital2
WHERE 
	Lhos_NoDoctor

-- Run a complex query (more than one field/column) to demonstrate the relations between the 2 tables
SELECT * 
FROM 
	London_hospital2, 
    Patience_Detail
WHERE 
    London_hospital2.Lhos_id = Patience_Detail.PatienceID
AND
	Patience_Detail.PatienceName = "George";

-- Retrieve all your data sorted in ascending order on an appropriate field (one table)
SELECT 
    Lhos_id,
    Lhos_name
    
FROM 
London_hospital2

order by Lhos_name asc;

-- Filter data using comparison operators (one table)
SELECT *
FROM 
Patience_Detail
WHERE
PatienceAge 
BETWEEN 25 AND 55;
