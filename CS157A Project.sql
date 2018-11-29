CREATE DATABASE cs157aproject;

CREATE TABLE students
(
  ID int PRIMARY KEY,
  FirstName varchar(50),
  LastName varchar(50),
  email varchar(100),
  mayCheckOut boolean
);
CREATE TABLE faculty
(
 ID int PRIMARY KEY,
 FirstName varchar(50),
 LastName varchar(50),
 email varchar(50)
);
CREATE TABLE Bookings
(
 checkOutDateTime DATETIME,
 checkInDateTime DATETIME,
 TransactionID varchar(50) PRIMARY KEY
);
CREATE TABLE Classrooms
(
 ClassroomCode varchar(50) PRIMARY KEY,
 Type varchar(50),
 CableType varchar(50)
 
);
CREATE TABLE Equipment
(
 Barcode varchar(50) PRIMARY KEY,
 Type varchar(50)
);
CREATE TABLE Cables
(
Barcode varchar(50) PRIMARY KEY,
CableType varchar(50),
Operational boolean
);
CREATE TABLE Camera
(
Barcode varchar(50) PRIMARY KEY,
ModelNumber varchar(50),
ModelType varchar(50),
Operational boolean
);
CREATE TABLE PASystems
(
 Barcode varchar(50) PRIMARY KEY,
 ModelNumber varchar(50),
 ModelType varchar(50),
 Operational boolean
);
CREATE TABLE Occupies
(
 Day VARCHAR(20),
 StartTime TIME,
 EndTime TIME,
 FacultyID varchar(20),
 RoomCode varchar(20)
);
INSERT INTO Students VALUES
(010939149, 'Justin', 'Magadia', 'justin.magadia@sjsu.edu', TRUE),
(012345678, 'Billy', 'Herrington', 'gachimuchi@gmail.com', TRUE),
(012345679, 'Jack', 'Daniel', 'jack.daniel@gmail.com', TRUE),
(012345680, 'Don', 'Flamingo', 'uhuhuh@gmail.com', TRUE),
(012345681, 'Kono', 'Dioda', 'mudamuda@gmail.com', FALSE),
(012345682, 'Donkey', 'Kong', 'donkey.kong@gmail.com', TRUE),
(012345683, 'Rick', 'Astley', 'nevergonnagiveyouup@gmail.com', TRUE)
;
INSERT INTO Faculty VALUES
(000000123, 'Yoshi', 'Noya', 'yoshinoya@gmail.com'),
(000000124, 'Anna', 'Kaboom', 'annakaboom@gmail.com'),
(000000125, 'Farshid', 'Marbouti', 'farshid.marbouti@sjsu.edu'),
(000000126, 'Tom', 'Ato', 'Tom.ato@sjsu.edu'),
(000000127, 'Mai', 'Knee', 'Mai.knee@sjsu.edu'),
(000000128, 'Soo', 'Choi', 'Soo.choi@sjsu.edu'),
(000000129, 'Desmond', 'Amfoah', 'etika@gmail.com')
;
INSERT INTO Classrooms VALUES
('BBC 102', 'Podium', 'VGA, HDMI'),
('ENGR 343', 'Wallbox', 'VGA, HDMI'),
('BBC 225', 'Pixie', 'VGA'),
('HGH 225', 'Rack', 'VGA'),
('CL 234', 'Wallbox', 'HDMI'),
('MQH 424', 'Pixie', 'VGA, HDMI'),
('SH 120', 'Rack', 'VGA, HDMI');
INSERT INTO Bookings VALUES
('2018-12-24 16:00:00', '2018-12-26 16:00:00' , '000000001'),
('2017-12-12 10:30:00', '2017-12-12 11:30:00', '00000002'),
('2014-09-08 12:00:00 ', '2014-09-09 12:00:00', '000000003'),
('2013-08-23 15:30:00', '2013-08-23 21:00:00', '000002341'),
('2014-03-24 16:30:00', '2014-03-26 16:00:00', '000123456'),
('2018-09-11 10:00:00', '2018-09-11 20:00:00', '087654321'),
('2018-07-12 10:00:00', '2018-07-12 16:00:00', '124029342');
INSERT INTO Camera VALUES
('03080004213863', 'Canon T5i DSLR', '039218102', TRUE),
('03080004213864', 'Canon T5i DSLR', '039218103', TRUE),
('03080004213865', 'Canon 70D DSLR','039218104', FALSE),
('03080004213866',' Canon 70D DSLR' ,'039218105', FALSE),
('03080004213867',' Canon 70D DSLR',' 039218106', TRUE),
('03080004213868',' Canon 70D DSLR ','039218107', FALSE),
('03080004213869',' Canon 5D DSLR',' 039218108', TRUE);
INSERT INTO Cables VALUES
('030800042138756','HDMI', TRUE),
('030800042138757', 'VGA', TRUE),
('030800042138758', 'XLR to XLR', TRUE),
('030800042138759', 'RCA to RCA', FALSE),
('030800042138759', 'RCA to RCA', FALSE),
('03080004213860', 'Female to ¼', TRUE),
('03080004213861', 'XLR to 3.5mm',FALSE);
INSERT INTO PASystems VALUES
('03080004213870', 'Behringer 8000 Wired PA System', '039218109', TRUE),
('03080004213871', 'ION Job Rocker', '039218110', TRUE),
('03080004213872', 'Behringer 8000 Wireless PA System', '039218111', FALSE),
('03080004213873', 'Anchor PA System', '039218112', FALSE),
('03080004213874', 'Anchor Go Getter Wired System', '039218113', FALSE),
('03080004213875', 'Anchor Go Getter Wireless System', '0392181114', FALSE),
('03080004213876', 'Califone Small PA System', '039218110', TRUE);
INSERT INTO Occupies VALUES
('Monday', '7:15:00', '8:20:00', '000000123', '929292929'),
('Tuesday',  '9:00:00', '11:00:00', '000000252', '123123123'),
('Wednesday', '12:00:00',  '13:00:00', '000000324', '564645655');
