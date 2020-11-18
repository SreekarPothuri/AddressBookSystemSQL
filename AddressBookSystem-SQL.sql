create schema addressBook;
use addressBook;

CREATE TABLE addressBook (
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    ZipCode BIGINT NOT NULL,
    PhoneNumber BIGINT NOT NULL,
    Email VARCHAR(50)
);

describe addressBook;

INSERT INTO addressBook(FirstName,LastName,Address,City,State,Zipcode,PhoneNumber,Email) 
				VALUES 
						('Sreekar','Pothuri','RingRoad','Ponnur','AndhraPradesh',522124,9876543210,'pothuri98@gmail.com'),
                        ('Abhi','Pulikonda','MainRoad','Ponnur','AndhraPradesh',522124,9876553200,'abhi98@gmail.com'),
						('Jagadeesh','Chilla','SPPRoad','Bandhar','AndhraPradesh',522121,9876775510,'jaggu95@gmail.com');

SELECT * FROM addressBook;

UPDATE addressBook SET State = 'Punjab' WHERE FirstName = 'Sreekar';
UPDATE addressBook SET ZipCode = 524101 WHERE FirstName = 'Abhi'; 
UPDATE addressBook SET Email = 'jagadessh123@yahoo.com' WHERE LastName = 'Chilla'; 

DELETE FROM addressBook WHERE FirstName = 'Abhi';

SELECT * FROM addressBook WHERE City = 'Ponnur';
SELECT * FROM addressBook WHERE State = 'AndhraPradesh';

SELECT City,count(FirstName) FROM addressbook GROUP BY City;
SELECT State,count(FirstName) FROM addressbook GROUP BY State;

SELECT FirstName,City FROM addressbook GROUP BY City ORDER BY FirstName ASC;

ALTER TABLE addressBook ADD Type varchar(20) after LastName;
UPDATE addressBook SET Type = 'Family' WHERE FirstName = 'Sreekar';
UPDATE addressBook SET Type = 'Friends' WHERE FirstName = 'Jagadeesh';

SELECT Type,count(FirstName) FROM addressbook GROUP BY Type;

INSERT INTO addressBook(FirstName,LastName,Address,City,State,Zipcode,PhoneNumber,Email) 
				VALUES ('Anudeep','Betha','NetajiNagar','Rajamundry','AndhraPradesh',524424,9855643210,'deepu78@gmail.com');
                
ALTER TABLE addressBook ADD ID int NOT NULL AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE addressBook DROP COLUMN Type;
CREATE TABLE RELATION(ID int NOT NULL AUTO_INCREMENT, Type varchar(20) NOT NULL,PRIMARY KEY(ID));
INSERT INTO RELATION(Type) VALUES('Family'),('Friends');
SELECT * FROM RELATION;

CREATE TABLE addressBookRelation (
    addressbookID int NOT NULL,
    relationID int NOT NULL,
    FOREIGN KEY (addressBookID) REFERENCES addressBook(ID),
    FOREIGN KEY (relationID) REFERENCES RELATION(ID)
);

INSERT INTO addressBookRelation VALUES (1,1),(2,1),(3,1),(3,2);

SELECT * FROM addressBook;
SELECT * FROM RELATION;
SELECT * FROM addressBookRelation;
