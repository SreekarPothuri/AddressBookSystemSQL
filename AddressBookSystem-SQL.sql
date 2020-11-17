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

