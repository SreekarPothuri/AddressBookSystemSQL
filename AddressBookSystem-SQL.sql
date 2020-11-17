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