create database tec2;
use tec2;
create table Academics(student_id int,student_name char(30),location char(49),age int);
insert into Academics values(4260,'vyshu','yarraguntlapadu',19);
insert into Academics values(4207,'sravanthi','kandrika',20);
insert into Academics values(4236,'nagalakshmi','yarraguntlapadu',20);
insert into Academics values(4230,'srilakshmi','satulluru',20);
insert into Academics values(4217,'veena','jonalagadda',19);
insert into Academics values(4256,'shannu','cpt',20);
insert into Academics values(4240,'lavanya','cpt',20);
insert into Academics values(4218,'swathi','cpt',20);
insert into Academics values(4254,'sadiya','nrt',20);
insert into Academics values(4261,'aasritha','nrt',21);
select *from Academics;
select student_id from academics;
create table Accountss(id int,total_fees int,payment int,exam_fee int,balance int);
insert into Accountss values(4207,50000,20000,800,30000);
insert into Accountss values(4356,50000,5500,800,4400);
insert into Accountss values(4217,50000,40000,800,10000);
insert into Accountss values(8976,50000,10000,800,40000);
insert into Accountss values(4218,50000,25000,800,25000);
insert into Accountss values(4097,50000,26000,800,24000);
insert into Accountss values(6789,50000,35000,800,25000);
insert into Accountss values(4256,50000,50000,800,0);
insert into Accountss values(6789,50000,5645,800,40455);
insert into Accountss values(4261,50000,2000,800,40800);
select *from Accountss; 
create table examinations(no_of_sub int,exam_id int,exam_type char(10),semester int);
insert into examinations values(5,4260,'theory',2);
insert into examinations values(5,4298,'pracical',3);
insert into examinations values(5,4236,'computer',2);
insert into examinations values(5,4366,'theory',1);
insert into examinations values(5,4240,'practical',4);
insert into examinations values(5,800,'computer',3);
insert into examinations values(5,4254,'theory',1);
insert into examinations values(5,805,'computer',2);
insert into examinations values(5,900,'practical',3);
insert into examinations values(5,4207,'theory',4);
select * from examinations;
create table club(student_id int,club_id int,names char(50),club_name char(10));
insert into club values(4260,801,'vyshh','singer');
insert into club values(4207,802,'sra','dancer');
insert into club values(4236,803,'naga','drama');
insert into club values(4230,804,'alexa','player');
insert into club values(4217,805,'bob','actor');
insert into club values(234,806,'lavanya','communicr');
insert into club values(4567,807,'shannu','gardener');
insert into club values(8976,808,'swathi','speaker');

select *from club;
select a.student_name,c.names,c.club_name,a.location from Academics a inner join club c on a.student_id=c.student_id;
/*left join displays all  the rows in the left table here left table is academics and the right side displays common elements in the academics*/
select a.student_name,c.names,c.club_name,a.location from Academics a left outer join club c on a.student_id=c.student_id;
/*right outer join displays all rows in the right side table that is clubs table and left side displays only matched rows otherwise it displays null*/ 
select a.student_name,c.names,c.club_name,a.location from Academics a right outer join club c on a.student_id=c.student_id;
select a.student_id,a.student_name,e.no_of_sub,e.exam_type from academics a Full outer join  examinations e on  a.student_id=e.exam_id;

/*self join command*/
create table tcs(empid int,empname varchar(80),rid int,role char(10),location char(20));
insert into tcs values(1,'akhil',0,'ceo','BOPPUDI');
insert into tcs values(2,'rammam',1,'coo','NRT');
insert into tcs values(3,'charan',1,'mm','NRT');
insert into tcs values(4,'gowtham',1,'mm','NRT');
insert into tcs values(5,'ganesh',2,'manager','CPT');
insert into tcs values(6,'gopi',3,'a.manager','NRT');
insert into tcs values(7,'neelima',4,'sr.empl','GNT');
insert into tcs values(8,'subbu',6,'employee','NRT');
insert into tcs values(9,'yamuna',5,'intern','VJD');
insert into tcs values(10,'veena',5,'intern','VJD');
SELECT *FROM TCS;
SELECT t1.empid,t1.empname,t1.role from tcs T1 JOIN tcs T2 ON T1.EMPID=T2.RID;
select empname from tcs where rid=(select count(rid) from tcs); 
SELECT empname, (SELECT COUNT(rid) FROM tcs) AS TotalCount
FROM tcs;
















