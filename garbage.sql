-- Create Table Statements: refs Garbage_ERD.psd

CREATE TABLE Trucks (
	truck_id_PK INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    truck_name VARCHAR(255)
)

CREATE TABLE Streets (
	street_id_PK INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	truck_id_FK INTEGER NOT NULL,
	street_name VARCHAR(255),
	FOREIGN KEY (truck_id_FK) REFERENCES Trucks (truck_id_PK)
)

CREATE TABLE Houses (
	house_id_PK INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	street_id_FK INTEGER NOT NULL,
	house_number VARCHAR(255),
	owner_name VARCHAR(255),
	FOREIGN KEY (streed_id_FK) REFERENCES Streets (street_id_PK)
)

CREATE TABLE Drivers_Trucks (
	driver_truck_id_PK INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	driver_id_FK INTEGER NOT NULL
	truck_id_FK INTEGER NOT NULL
	FOREIGN KEY (driver_id_FK) REFERENCES Drivers (driver_id_PK),
	FOREIGN KEY (truck_id_FK) REFERENCES Trucks (truck_id_PK)
)

CREATE TABLE Drivers (
	driver_id_PK INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	driver_name VARCHAR(255)
)

-- Insert Table Statements: refs test_data.xlsx

INSERT INTO Trucks (truck_name)
	VALUES 	('Heavy'),
	        ('Light'),
	        ('Big-rig')

INSERT INTO Streets (street_name, truck_id_FK)
	VALUES	('Downing st', 3),
			('Redford ave',	2),
			('Manchester st', 1),
			('Rockford pl',	3),
			('Morris crt',	2),
			('Denizen st',	1),
			('Rocky rd',	3),
			('Emmerson st',	2)


INSERT INTO Drivers (driver_name)
	VALUES 	('Mac Stuffings'),
	        ('Ori Hadron'),
	        ('William Wallace'),
	        ('Guy Fawkes'),
	        ('Snoop Giraffe'),
	        ('Harry Plopper'),
	        ('Ferdinand Martinez'),
	        ('Moses Avinu'),
	        ('Jack Box'),
	        ('Megatron')

INSERT INTO Houses (house_number, owner_name, streed_id_FK)
	VALUES 	(1,	'Ethel Teneyck',	1),
			(2,	'Louisa Benge',	1),
			(3,	'Jacqueline Cessna',	1),
			(4,	'Margareta Biro',	1),
			(5,	'Lona Hanzlik',	1),
			(6,	'Raleigh Ching',	1),
			(7,	'Collin Hong',	1),
			(8,	'Shaquita Luckey',	1),
			(9,	'Jacalyn Zanders',	1),
			(10,	'Thresa Rufus',	1),
			(11,	'Gwyneth Galgano',	1),
			(12,	'Jerrica Hou',	1),
			(13,	'Roselyn Wortman',	1),
			(1,	'Lisha Mckellar',	2),
			(2,	'Frida Kalis',	2),
			(3,	'Earlene Mckinney',	2),
			(4,	'Juan Moloney',	2),
			(5,	'Jerlene Dudney',	2),
			(6,	'Roberto Biron',	2),
			(7,	'Tomoko Danis',	2),
			(8,	'Jami Overby',	2),
			(9,	'Shakira Cleaver',	2),
			(10,	'Amparo Yahn',	2),
			(11,	'Selena Roddy',	2),
			(12,	'Brenna Heenan',	2),
			(13,	'Serafina Glessner',	2),
			(14,	'Tamekia Whitesell',	2),
			(15,	'Hye Mawson',	2),
			(1,	'Dorcas Bowlin',	3),
			(2,	'Chieko Renz',	3),
			(3,	'Sage Steele',	3),
			(4,	'Megan Edsall',	3),
			(5,	'Josue Hafer',	3),
			(6,	'Lucretia Pou',	3),
			(7,	'Zulema Bonura',	3),
			(8,	'Seymour Dettman',	3),
			(9,	'Cole Fessler',	3),
			(1,	'Patrice Welcher',	4),
			(2,	'Hermila Groman',	4),
			(3,	'Nestor Gerace',	4),
			(4,	'Cristina Ganey',	4),
			(5,	'Jennette Xu',	4),
			(6,	'Burl Poche',	4),
			(7,	'Walton Halderman',	4),
			(8,	'Leif Camel',	4),
			(1,	'Mafalda Nestle',	5),
			(2,	'Harlan Yantis',	5),
			(3,	'Geraldine Keenan',	5),
			(4,	'Ludivina Steib',	5),
			(5,	'Jessenia Vanasse',	5),
			(1,	'Hung Tuggle',	6),
			(2,	'Artie Carnell',	6),
			(3,	'Kurtis Liebel',	6),
			(4,	'Karena Ryckman',	6),
			(5,	'Teofila Zimmermann',	6),
			(6,	'Leola Watley',	6),
			(7,	'Basil Hoadley',	6),
			(8,	'Susann Nilsson',	6),
			(9,	'Burl Mondragon',	6),
			(10,	'Francisco Oser',	6),
			(11,	'Debi Musselman',	6),
			(12,	'Rhiannon Lytle',	6),
			(13,	'Mckenzie Croswell',	6),
			(1,	'Renea Sigman',	7),
			(2,	'Hyman Malm',	7),
			(3,	'Oswaldo Jansen',	7),
			(4,	'Maryland Calder',	7),
			(5,	'Otis Thom',	7),
			(6,	'Earline Macbeth',	7),
			(7,	'Denyse Pina',	7),
			(8,	'Bruna Swartout',	7),
			(9,	'Laurine Shay',	7),
			(10,	'Florencio Hoos',	7),
			(11,	'Mee Berenbaum',	7),
			(12,	'Lizzie Dysart',	7),
			(1,	'Nan Kogut',	8),
			(2,	'Leah Degraw',	8),
			(3,	'Christina Ottesen',	8),
			(4,	'Gregory Poppell',	8),
			(5,	'Demetrius Venturini',	8)


-- Insert Table Statements: refs test_data.xlsx

-- 1. List ALL the STREETS that each TRUCK services

SELECT t.truck_id_PK AS Truck, s.street_name AS Street 
	FROM Trucks AS t
        INNER JOIN Streets AS s
	        ON t.truck_id_PK = s.truck_id_FK
        ORDER BY t.truck_id_PK
        
-- 2. List ALL the STREETS and HOUSES that each TRUCK services

SELECT t.truck_id_PK AS Truck, s.street_name AS Street, h.house_number AS 'House Number' 
	FROM Trucks AS t
        INNER JOIN Streets AS s
	        ON t.truck_id_PK = s.truck_id_FK
	    INNER JOIN Houses AS h
	    	ON s.street_id_PK = h.street_id_FK
        ORDER BY t.truck_id_PK

-- 3. List ALL the STREETS and HOUSES that a single TRUCK services

SELECT t.truck_id_PK AS Truck, s.street_name AS Street, h.house_number AS 'House Number' 
	FROM Trucks AS t
        INNER JOIN Streets AS s
	        ON t.truck_id_PK = s.truck_id_FK
	    INNER JOIN Houses AS h
	    	ON s.street_id_PK = h.street_id_FK
        WHERE t.truck_id_PK = 1
        ORDER BY t.truck_id_PK

-- 4. List ALL the DRIVERS that each TRUCK has

SELECT t.truck_id_PK AS 'Truck ID', t.truck_name AS 'Truck Name', d.driver_id_PK AS 'Driver ID', d.driver_name AS 'Driver Name'
	FROM Trucks as t
        INNER JOIN DriversTrucks AS dt
        	ON t.truck_id_PK = dt.truck_id_FK
        LEFT JOIN Drivers AS d
        	ON d.driver_id_PK = dt.driver_id_FK
        ORDER BY d.driver_id_PK
