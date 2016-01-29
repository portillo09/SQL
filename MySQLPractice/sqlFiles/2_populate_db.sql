insert into CONTACT_HISTORY(Contact_ID, Project_ID, CP_Name, Contact_Type, Contact_details)
values ('1234567','2312321', 'Dunbar','Phone','Strong'),
	   ('7654321','4411441', 'Eliot','Phone','Weak'),
	   ('3124561','3331113', 'Albert','Email','Okay'),
	   ('5555555','5421212', 'Chan','Phone','Strong');



insert into CONTACT_REMINDER(Contact_ID, Project_ID, Contact_Reminders)
values ('1234567','2312321', 'Call to confirm approval'),
	   ('7654321','4411441', 'Review'),
	   ('3124561','3331113', 'Pay debt'),
	   ('5555555','5421212', 'Email');



insert into INVESTIGATOR(SSN,First_Name,Last_Name,Organization, Address, Phone)
values ('111223333','John','Smith','GotEM','22Wcourt','2093421234'),
	   ('222333111','Henry','Ford','FORD','21st&5th','7182243212'),
	   ('333111222','Damian','Lillard','Blazers','43 Broookdale ct','9182031234'),
       ('555666777','Larry','Bird','Celtics','1st Shot ct','3311728273');


insert into LANGUAGE(Project_ID,Language)
values ('2312321', 'English'),
	   ('4411441', 'English'),
	   ('3331113', 'Spanish'),
	   ('5421212', 'English');

insert into WORKS_ON(Project_ID, SSN, Inv_Role)
values ('2312321','111223333','Principle'),
	   ('4411441','111223333','Principle'),
	   ('4411441 ','222333111', 'Optional'),
	   ('3331113','333111222', 'Optional'),
	   ('5421212','555666777', 'Co_PI');


insert into PROJECT(Project_ID,Title, Archived, Project_Status)
values ('2312321', 'Air Quality Research','Yes','On progress'),
	   ('4411441','Temperature Quality','No','Good'),
	   ('3331113','MYSQL Research','No','Almost done'),
	   ('5421212','TCP Research','Yes','Done');



insert into REVIEWER(SSN,First_Name,Last_Name,)
values ('172093248', 'Cody', 'Smith'),
	   ('123432185', 'Cris', 'Oneal'),
	   ('772111222', 'Kathy', 'Red') ;



insert into REVIEWS(Project_ID,SSN,Reviewer_Role)
values ('2312321','172093248','Principle'),
	   ('5421212','123432185','Optional'),
	   ('4411441','123432185','Principle'),
	   ('3331113','772111222','Principle'),
	   ('4411441','772111222','Optional'),
	   ('5421212','772111222','Finance');

