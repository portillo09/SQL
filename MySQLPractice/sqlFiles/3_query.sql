
/* All the queries for database*/
/*1---------------------------------------*/
/*   	Retrieve information about the 
		projects (title, status and whether archived or not) 
		that have an ‘Optional’ reviewer. */
		
select Title, Project_Status, Archived
from PROJECT as p ,REVIEWS as r 
where p.Project_ID=r.Project_ID and
	r.Reviewer_Role = 'Optional';


/*2---------------------------------------*/
/* 		Retrieve the information about the investigators (first name, 
		last name and organization) who have done more than one project.  */
select i.First_Name, i.Last_Name, i.Organization 
from INVESTIGATOR as i
where( select count(*) 
	   from WORKS_ON as w,PROJECT as p
	   where i.SSN=w.SSN and
	        w.Project_ID = p.Project_ID)>1 ;
 
/*3---------------------------------------*/
/* 		 Retrieve the information of reviewers (first name and
		 last name), investigators (first name and last name) 
		 for the project “Air Quality Research Project”.  */
  
select r.First_Name, r.Last_Name, i.First_Name, i.Last_Name
from REVIEWER as r, REVIEWS as re, PROJECT as p,
	 INVESTIGATOR as i, WORKS_ON as w
where re.Project_ID=p.Project_ID and
	  p.Title='Air Quality Research' and
	  re.SSN=r.SSN and
	  w.Project_ID=p.Project_ID and
	  w.SSN = i.SSN	 ;	
  
 
/*4---------------------------------------*/
/*  	Get the contact information (contact number, contact 
		person name, contact type and contact remainders) for 
		the projects which have a contact history. Also get the 
		Project_IDs for those projects.*/

select c.Contact_ID, CP_Name, Contact_Type, Contact_Reminders, c.Project_ID
from CONTACT_HISTORY as c, CONTACT_REMINDER as cr, PROJECT as p
where c.Project_ID=p.Project_ID and
	   cr.Project_ID=c.Project_ID ;
	   	   
/*5---------------------------------------*/
/* 		Get the project information (project id, title, status 
		and whether archived or not) which has a ‘Co_PI’. */
select p.* 
from PROJECT as p, WORKS_ON as w
where p.Project_ID = w.Project_ID and
	  w.Inv_Role='Co_PI';
	  
 
 
/*6---------------------------------------*/
/* 		 Retrieve all the projects (project id, title) in which 
		“John Smith” serves as a principle investigator.  */
select w.Project_ID, Title
from PROJECT as p, WORKS_ON as w, INVESTIGATOR as i 
where w.Project_ID = p.Project_ID and
	  w.SSN=i.SSN and
	  i.First_Name = 'John' and
	  i.Last_Name = 'Smith' ;

/*7---------------------------------------*/
/*  	Retrieve the reviewers who reviewed more than 2 projects. 
		Please list reviewer’s SSN and number of projects reviewed by the reviewer.*/
		
select SSN, count(*)
from REVIEWS
group by SSN
having count(*) > 2; 
/*---------------------------------------*/

