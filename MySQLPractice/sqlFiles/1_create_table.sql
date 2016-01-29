create table LANGUAGE (
	Project_ID int(7) not null,
	Language enum('English','Spanish'),
	foreign key(Project_ID) references PROJECT(Project_ID)

	)ENGINE = InnoDB;

create table PROJECT (
	Project_ID int(7) not null,
	Title varchar(20), 
	Archived enum('yes','no'),
	Project_Status varchar(15),
	primary key(Project_ID),
	unique (Title)
	)ENGINE = InnoDB;

create table WORKS_ON (
	SSN	int(9) not null,
	Project_ID int(7) not null,
	Inv_Role varchar(20),
	foreign key(Project_ID) references PROJECT(Project_ID),
	foreign key(SSN) references INVESTIGATOR(SSN)
	)ENGINE = InnoDB;

create table INVESTIGATOR (
	SSN int(9) not null,
	First_Name varchar(20), 
	Last_Name varchar(20),
	Organization varchar(20),
	Address varchar(30),
	Phone int(10),
	primary key(SSN),
	unique key(Last_Name)
	)ENGINE = InnoDB;

create table REVIEWS (
	Reviewer_Role varchar(20),
	Project_ID int(7) not null,
	SSN int(9) not null,
	foreign key(SSN) references REVIEWER(SSN),
  	foreign key(Project_ID) references PROJECT(Project_ID)
	)ENGINE = InnoDB;

create table REVIEWER (
	SSN int(9) not null,
	First_Name varchar(20),
	Last_Name varchar(20),
	primary key(SSN),
	unique key(Last_Name)
	)ENGINE = InnoDB;
	
create table CONTACT_HISTORY (
	Contact_ID int(7) not null,
	Project_ID int(7) not null,
	CP_Name varchar(15),
	Contact_Type varchar(15),
	Contact_Details varchar(15),
	unique key(Contact_ID),
	foreign key(Project_ID) references PROJECT(Project_ID)
	)ENGINE = InnoDB;
	
create table CONTACT_REMINDER (
	Contact_ID int(7) not null,
	Project_ID int(7) not null,
	Contact_Reminders varchar(30) not null,
	foreign key(Project_ID) references CONTACT_HISTORY(Project_ID),
	foreign key(Contact_ID) references CONTACT_HISTORY(Contact_ID)
	)ENGINE = InnoDB;

	
	
	
	
	