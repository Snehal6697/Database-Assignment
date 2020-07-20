create database exercise;
show databases;
use exercise;
create table SEMP (
EMPNO CHAR(4),
EMPNAME CHAR(20),
BASIC FLOAT(9,2),
DEPTNO CHAR(2),
DEPTHEAD CHAR(4) 
);

CREATE TABLE SDEPT(
DEPTNO CHAR(2),
DEPTNAME CHAR(15) 
);

insert into sdept 
values ('10',' Development '),
		('20', 'Training ');
        
        
insert into SEMP (EMPNO,EMPNAME,BASIC,DEPTNO)
values ('0001', 'Sunil', 6000.00, '10'),
        ('0002', 'Hiren', 8000.00, '20'); 

insert into SEMP (EMPNO,EMPNAME,BASIC,DEPTNO,depthead)
values ('0003', 'ALI', 4000.00, '10', '0001' );

insert into SEMP (EMPNO,EMPNAME,BASIC,depthead)
values ('0004', 'GEORGE', 6000.00, '0002' );


select * from sdept;
select * from semp;

create table s (
`s#` char (10),
sname varchar (15),
status int (4),
city varchar (15)
);


insert into s (`S#`,sname,Status,City) 
    values('S1','BOB',10,'London'),
      ('S2','OGGY',20,'paris'),
     ('S3','NOBITA',30,'Athens'),
    ('S4','DANI',40,'London');

create table p (
`p#` char (10),
pname varchar (15),
colour varchar (15),
weight int (4),
city varchar (15)
);

insert into P(`P#`,Pname,colour,Weight,City)
      values('P1','tony','red',12,'London'),
     ('P2','cap','yellow',14,'Paris'),
    ('P3','banner','blue',13,'London');





create table j (
`j#` char (4),
jname varchar (15),
city varchar(15)
);

insert into J(`J#`,Jname,City)
      values('J1','home','London'),
		('J2','office','Athens'),
		('J3','shop','paris');


create table spj (
qty int (10),
`s#` char (10),
`p#` char (10),
`j#` char (4)
);

select * from s;

select `s#`,sname from s;

select pname,colour from p where city='london';

select * from s where city='london';

select * from s where city in ('athens','paris');

select * from p where city ='athens';

select * from p where weight between 12 and 14;

select * from s where status >= 20;

select * from s where city!='london';

select city from s;

select weight , weight/1000 as 'Weight in Milligrams', weight*1000 as 'weight in kilograms'from p;





select * from s order by city desc;
select * from p order by city;
select * from s where status between 10 and 20;
select * from p;
select pname,weight from p where weight not between 10 and 15;
select pname from p where pname like 's%';
select * from s where city like 's%';
select * from j where jname like '__n%';



select concat(upper(substr(sname,1,1)),lower(substr(sname,2))) as name from s;
select upper(sname) from s;
select lower(sname) from s;
select lpad(sname,25,' ') from s;
select replace (sname,'bo','ns') from s;
select replace(replace(sname,'b','o'),'s','n') as "sname"  from s;
select sname,length(sname) as "lengths" from s;
select * from s
where soundex(sname) = soundex ('ogggy');