create database eventos

use eventos

create table users(
userID INT AUTO_INCREMENT PRIMARY KEY,
name varchar (50),
email varchar (100),
password varchar(50)
);

create table eventss(
eventID  INT AUTO_INCREMENT PRIMARY KEY,
nameEvent varchar (50),
dateEvent varchar(50),
timeEvent int,
Location varchar(50),
descriptionEvent varchar (60),
userID int,
Foreign key (userID) references users(userID));

create table guests(
guestsID INT AUTO_INCREMENT PRIMARY KEY,
nameGuests varchar (50),
emailGuests varchar(100),
eventID int,
invitationStatus varchar(50),
Foreign key (eventID) references eventss(eventID));

create table logisticsDetails(
DetailID INT AUTO_INCREMENT PRIMARY KEY,
Things_to_do varchar (50),
Budget int,
eventID int,
specialNotes varchar(200),
Foreign key (eventID) references eventss(eventID));

insert into eventss (eventID,nameEvent,dateEvent,timeEvent,Location,descriptionEvent) VALUES(1,'cumple','20-02-2023',12,'Puriscal','Fiesta de cumple Javier')
