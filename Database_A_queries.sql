Create table Conference(
Conf_ID number(6,0) not null,
Conf_name varchar(50),
Conf_year number(4,0),
Conf_start_date date,
Conf_end_date date,
Conf_country varchar(50),
Conf_city varchar(50),
Conf_venue varchar(50),
Contact_email varchar(50),
constraint conference_pk Primary key(Conf_ID));

CREATE SEQUENCE Conference_seq
  START WITH 1
  INCREMENT BY 1;

insert into Conference values(Conference_seq.nextval,'Melbourne Conference',2008, to_date('23-sep-2008','DD-MM-YYYY'), to_date('24-sep-2008','DD-MM-YYYY'),'Australia','Melbourne','Federation Square','Melconf@gmail.com');
insert into Conference values(Conference_seq.nextval,'Sydney Conference',2009, to_date('25-jun-2008','DD-MM-YYYY'), to_date('26-june-2008','DD-MM-YYYY'),'Australia','Sydney','Morton Street','Sydconf@gmail.com');
insert into Conference values(Conference_seq.nextval,'Rome Conference',2009, to_date('13-july-2008','DD-MM-YYYY'), to_date('14-july-2008','DD-MM-YYYY'),'Italy','Rome','City Hall','Romconf@gmail.com');
insert into Conference values(Conference_seq.nextval,'Delhi Conference',2012, to_date('03-jan-2012','DD-MM-YYYY'), to_date('04-jan-2012','DD-MM-YYYY'),'India','Delhi','Agra Hall','Delconf@gmail.com');
insert into Conference values(Conference_seq.nextval,'New York Conference',2015, to_date('03-july-2015','DD-MM-YYYY'), to_date('04-july-2015','DD-MM-YYYY'),'USA','New York','Wall Street','Nyconf@gmail.com');

Select * from Conference;