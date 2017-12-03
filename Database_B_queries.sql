Create table Track(
Track_ID number(6,0) not null,
Track_name varchar(50),
Track_description varchar(50),
Conf_ID number(6,0),
Constraint Track_PK Primary key(Track_ID));


/*Constraint Conference_Track_FK Foreign Key (Conf_ID) REFERENCES Conference@FIT5148A(Conf_ID)
on delete cascade);*/

CREATE SEQUENCE track_seq
  START WITH 1
  INCREMENT BY 1;

insert into Track values(track_seq.nextval,'Engineering','Describing various Engineering',1);
insert into Track values(track_seq.nextval,'Finance','Optimizing Finances',2);
insert into Track values(track_seq.nextval,'Marketing','Marketing Techniques',3);
insert into Track values(track_seq.nextval,'Sales','Sales Techniques',4);
insert into Track values(track_seq.nextval,'Operation','Operation Techniques',5);

Select * from Track;


Create table PCMember(
Member_ID number(6,0) not null,
First_name varchar(50),
Surname varchar(50),
Member_title varchar(50),
Member_position varchar(50),
Member_affiliation varchar(50),
Member_email varchar(50),
Track_ID number(6,0),
Constraint Check_Member_Title check (Member_title in ('DR','Prof','None')),
Constraint Check_Member_position check (Member_position in ('Lecturer','Researcher','Student')),
Constraint PCMember_PK Primary Key(Member_ID),
Constraint PCMember_Track_FK Foreign Key (Track_ID) REFERENCES Track(Track_ID)
on delete cascade);

CREATE SEQUENCE Member_seq
  START WITH 1
  INCREMENT BY 1;

insert into PCMember values(Member_seq.nextval,'Harry','Potter','DR','Lecturer','Mumbai University','Potter@gmail.com',1);
insert into PCMember values(Member_seq.nextval,'Ron','Wisley','Prof','Lecturer','Banglore University','Wisley@gmail.com',2);
insert into PCMember values(Member_seq.nextval,'Hermiane','Granger','DR','Researcher','Chennai University','Granger@gmail.com',3);
insert into PCMember values(Member_seq.nextval,'Albus','Dumbledore','None','Student','Kolkatta University','Dumbledore@gmail.com',4);
insert into PCMember values(Member_seq.nextval,'Severus','Snape','Prof','Researcher','Delhi University','Snape@gmail.com',5);

Select * from PCMember;

Create table Paper(
Title_ID number(6,0) not null,
Title varchar(50),
Abstract varchar(50),
Paper_type varchar(50),
Submission_date date,
Track_ID number(6,0),
Constraint Paper_PK Primary Key(Title_ID),
Constraint Check_Paper_Type check (Paper_type in ('Full Paper','Research_in_progress','Poster')),
Constraint Paper_Track_FK Foreign Key (Track_ID) REFERENCES ConferenceTrack(Track_ID)
on delete cascade);

CREATE SEQUENCE Paper_seq
  START WITH 1
  INCREMENT BY 1;



insert into Paper values(Paper_seq.nextval,'Electronics Engineering','Types of Motors','Full Paper',to_date('13-sep-2008','DD-MM-YYYY'),1);
insert into Paper values(Paper_seq.nextval,'Finance Analysis','Strategies in Finances','Poster',to_date('1-June-2008','DD-MM-YYYY'),2);
insert into Paper values(Paper_seq.nextval,'Marketing Analysis','Strategies in Marketing','Research_in_progress',to_date('08-July-2008','DD-MM-YYYY'),3);
insert into Paper values(Paper_seq.nextval,'Sales Analysis','Strategies in Sales','Full Paper',to_date('1-Jan-2012','DD-MM-YYYY'),4);
insert into Paper values(Paper_seq.nextval,'Operation Analysis','Strategies in Operations','Poster',to_date('06-July-2015','DD-MM-YYYY'),5);


Select * from Paper;


Create table Review(
Review_ID number(6,0) not null,
Due_Date date,
Reviewed_date date,
Recommendation varchar(50),
Paper_comment varchar(50),
Title_ID number(6,0),
Member_ID number(6,0),
Constraint Review_PK Primary Key(Review_ID),
Constraint Check_Recommendation check (Recommendation in ('Accept','Weakly Accept','Borderline','Weakly Reject','Reject')),
Constraint Review_Paper_FK Foreign Key (Title_ID) REFERENCES Paper(Title_ID) on delete cascade,
Constraint Review_Member_FK Foreign Key (Member_ID) REFERENCES PCMember(Member_ID)on delete cascade);

CREATE SEQUENCE Review_seq
  START WITH 1
  INCREMENT BY 1;


insert into Review values(Review_seq.nextval,to_date('15-sep-2008','DD-MM-YYYY'),to_date('19-sep-2008','DD-MM-YYYY'),'Accept','Good',1,1);
insert into Review values(Review_seq.nextval,to_date('3-June-2008','DD-MM-YYYY'),to_date('11-June-2008','DD-MM-YYYY'),'Weakly Accept','Ok',2,2);
insert into Review values(Review_seq.nextval,to_date('18-July-2008','DD-MM-YYYY'),to_date('20-July-2008','DD-MM-YYYY'),'Borderline','Needs Correction',3,3);
insert into Review values(Review_seq.nextval,to_date('11-Jan-2012','DD-MM-YYYY'),to_date('21-Jan-2012','DD-MM-YYYY'),'Weakly Reject','Needs Rework',4,4);
insert into Review values(Review_seq.nextval,to_date('26-July-2015','DD-MM-YYYY'),to_date('29-July-2015','DD-MM-YYYY'),'Reject','Bad',5,5);

Select * from Review;

Create table BestPaper(
Best_Paper_ID number(6,0) not null,
Title_ID number(6,0),
Award_Price number(8,0),
Track_ID number(6,0),
Constraint BestPaper_PK Primary Key(Best_Paper_ID),
Constraint BestPaper_Paper_FK Foreign Key (Title_ID) REFERENCES Paper(Title_ID) on delete cascade,
Constraint BestPaper_Track_FK Foreign Key (Track_ID) REFERENCES ConferenceTrack(Track_ID)on delete cascade);

CREATE SEQUENCE Best_Paper_seq
  START WITH 1
  INCREMENT BY 1;

insert into BestPaper values(Best_Paper_seq.nextval,1,1000,1);
insert into BestPaper values(Best_Paper_seq.nextval,2,2000,2);
insert into BestPaper values(Best_Paper_seq.nextval,3,3000,3);
insert into BestPaper values(Best_Paper_seq.nextval,4,4000,4);
insert into BestPaper values(Best_Paper_seq.nextval,5,5000,5);

Select * from BestPaper;


Create table Author(
Author_ID number(6,0) not null,
Author_name varchar(50),
Author_Surname varchar(50),
Author_Affiliation varchar(50),
Author_Country varchar(50),
Author_email varchar(50),
Author_number number(10,0),
Constraint Author_PK Primary Key(Author_ID));


CREATE SEQUENCE Author_seq
  START WITH 1
  INCREMENT BY 1;

insert into Author values(Author_seq.nextval,'James','Bond','Harvard University','England','Bond@gmail.com',045869873);
insert into Author values(Author_seq.nextval,'Molly','Bliss','Dallas University','USA','Bliss@gmail.com',045845878);
insert into Author values(Author_seq.nextval,'Steve','Austin','Texas University','Russia','Austin@gmail.com',045833373);
insert into Author values(Author_seq.nextval,'Kurt','Angle','Berlin University','Germany','Angle@gmail.com',045869845);
insert into Author values(Author_seq.nextval,'Jorja','Iswaku','Venice University','Italy','Iswaku@gmail.com',045869555);


Create table Submission(
Submission_ID number(6,0),
Title_ID number(6,0),
Author_ID number(6,0),
Order_Of_Author number(1,0),
IS_Corresponding varchar(1),
Constraint Check_Corresponding check (IS_Corresponding in ('Y','N')),
Constraint Submission_PK Primary Key(Submission_ID),
Constraint Submission_Paper_FK Foreign Key (Title_ID) REFERENCES Paper(Title_ID) on delete cascade,
Constraint Submission_Author_FK Foreign Key (Author_ID) REFERENCES Author(Author_ID)on delete cascade);


CREATE SEQUENCE Submission_seq
  START WITH 1
  INCREMENT BY 1;


insert into Submission values(Submission_seq.nextval,1,1,1,'Y');
insert into Submission values(Submission_seq.nextval,2,2,2,'N');
insert into Submission values(Submission_seq.nextval,3,3,1,'Y');
insert into Submission values(Submission_seq.nextval,4,4,3,'N');
insert into Submission values(Submission_seq.nextval,5,5,2,'N');

Create index track_index
on ConferenceTrack(Track_name);

delimiter @@
Create or replace Procedure Demoproc(
new_track in Track.Track_ID%type
As
Select * from ConferenceTrack
where Track_ID = @Track_ID;
end;@@
delimiter;

drop procedure Demoproc;

delimiter@@
begin
Demoprac(1);
end;@@
delimiter;





Drop table Track cascade constraint purge;
Drop table PCMember cascade constraint purge;
Drop table Paper cascade constraint purge;
Drop table Review cascade constraint purge;
Drop table Author cascade constraint purge;
Drop table BestPaper cascade constraint purge;
Drop table Submission cascade constraint purge;
Drop sequence track_seq;
Drop sequence Member_seq;
Drop sequence Paper_seq;
Drop sequence Review_seq;
Drop sequence Best_Paper_seq;
Drop sequence Author_seq;
Drop sequence Submission_seq;


//Update trigger
DELIMITER //
CREATE OR REPLACE TRIGGER ReferenceConferenceUpdate
BEFORE INSERT OR UPDATE ON track
FOR EACH ROW

DECLARE
conf_count number(5);
BEGIN

IF UPDATING
THEN
SELECT COUNT(*) INTO conf_count FROM Conference@FIT5148A WHERE CONF_ID = :new.conf_ID;
IF (conf_count <=0)
THEN
 raise_application_error
(-20999, 'Invalid Conference');
END IF;
END IF;

END;/
DELIMITER;


//Insert trigger
DELIMITER //
CREATE OR REPLACE TRIGGER ReferenceConferenceinsert
BEFORE INSERT ON track
FOR EACH ROW

DECLARE
conf_count number(5);
PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN

IF INSERTING
THEN

SELECT COUNT(*) INTO conf_count FROM Conference@FIT5148A WHERE CONF_ID = :new.conf_ID;
IF (conf_count <=0)
THEN
 raise_application_error
(-20999, 'Invalid Conference');
END IF;
END IF;

END;/
DELIMITER;



//Delete Trigger

DELIMITER //
CREATE OR REPLACE TRIGGER S27148572.ReferenceConferenceDelete
BEFORE Delete ON Conference
FOR EACH ROW

DECLARE
BEGIN

IF Deleting
THEN

Delete FROM Track@FIT5148B WHERE CONF_ID = :old.conf_ID;
END IF;

END; /
DELIMITER ;
