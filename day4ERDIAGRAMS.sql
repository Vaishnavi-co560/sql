create database ER_tec3;
use ER_tec3;
create table student1(stud_id int primary key,stud_firstname char(100),stud_last_name char(200),stud_street varchar(255),stud_city char(100),stud_zip varchar(255));

INSERT INTO student1 VALUES (1, 'John', 'Doe', '123 Main St', 'New York', '10001');
INSERT INTO student1 VALUES (2, 'Jane', 'Smith', '456 Elm Ave', 'Los Angeles', '90001');
INSERT INTO student1 VALUES (3, 'Michael', 'Johnson', '789 Oak Blvd', 'Chicago', '60601');
INSERT INTO student1 VALUES (4, 'Emily', 'Davis', '321 Pine St', 'Houston', '77001');
INSERT INTO student1 VALUES (5, 'William', 'Brown', '654 Cedar Rd', 'Phoenix', '85001')
INSERT INTO student1 VALUES (6, 'vyshu', 'thadavarthi', '320 Pine St', 'Hyd', '77001');
INSERT INTO student1 VALUES (7, 'sravs', 'chemitikati', '655 Cedar Rd', 'gnt', '85001');
INSERT INTO student1 VALUES (8, 'naga', 'lakkimsetty', '326 Pine St', 'nrt', '77001');
INSERT INTO student1 VALUES (9, 'veena', 'gude', '659 Cedar Rd', 'nrt2', '85001');
INSERT INTO student1 VALUES (10, 'sri', 'kondrati', '391 Pine St', 'Hp', '79001');

select * from student1;

create table professor(prof_id int primary key,prof_lname char(100),prof_fname char(100));
INSERT INTO professor VALUES (1, 'Smith', 'John');
INSERT INTO professor VALUES (2, 'Johnson', 'Emily');
INSERT INTO professor VALUES (3, 'Williams', 'Michael');
INSERT INTO professor VALUES (4, 'Brown', 'Sarah');
INSERT INTO professor VALUES (5, 'Jones', 'David');
INSERT INTO professor VALUES (6, 'Miller', 'Linda');
INSERT INTO professor VALUES (7, 'Davis', 'Robert');
INSERT INTO professor VALUES (8, 'Garcia', 'Laura');
INSERT INTO professor VALUES (9, 'Rodriguez', 'James');
INSERT INTO professor VALUES (10, 'Martinez', 'Patricia');
select *from professor;
create table course(course_id int primary key,course_name varchar(255));
INSERT INTO course VALUES (1, 'Introduction to Computer Science');
INSERT INTO course VALUES (2, 'Data Structures and Algorithms');
INSERT INTO course VALUES (3, 'Database Management Systems');
INSERT INTO course VALUES (4, 'Operating Systems');
INSERT INTO course VALUES (5, 'Software Engineering');
INSERT INTO course VALUES (6, 'Computer Networks');
INSERT INTO course VALUES (7, 'Artificial Intelligence');
INSERT INTO course VALUES (8, 'Web Development');
INSERT INTO course VALUES (9, 'Mobile Application Development');
INSERT INTO course VALUES (10, 'Cloud Computing');
select* from course;

create table room(room_id int primary key,room_loc char(50),room_cap char(40));


INSERT INTO room VALUES (1, 'block-1', '101');
INSERT INTO room VALUES (2, 'block-2', '50');
INSERT INTO room VALUES (3, 'block-3', '75');
INSERT INTO room VALUES (4, 'block-4', '60');
INSERT INTO room VALUES (5, 'block-5', '40');
INSERT INTO room VALUES (6, 'block-6', '80');
INSERT INTO room VALUES (7, 'block-7', '90');
INSERT INTO room VALUES (8, 'block-8', '35');
INSERT INTO room VALUES (9, 'block-9', '120');
INSERT INTO room VALUES (10, 'block-10', '55');
select * from room;

create table classs(class_id int primary key,class_name char(255),prof_id  int foreign key REFERENCES professor(prof_id),course_id int foreign key REFERENCES course(course_id),room_id  int foreign key REFERENCES room(room_id));
INSERT INTO classs VALUES (1, 'CS101', 1, 1, 1);
INSERT INTO classs VALUES (2, 'CS102', 2, 2, 2);
INSERT INTO classs VALUES (3, 'CS103', 3, 3, 3);
INSERT INTO classs VALUES (4, 'CS104', 4, 4, 4);
INSERT INTO classs VALUES (5, 'CS105', 5, 5, 5);
INSERT INTO classs VALUES (6, 'CS106', 6, 6, 6);
INSERT INTO classs VALUES (7, 'CS107', 7, 7, 7);
INSERT INTO classs VALUES (8, 'CS108', 8, 8, 8);
INSERT INTO classs VALUES (9, 'CS109', 9, 9, 9);
INSERT INTO classs VALUES (10, 'CS110', 10, 10, 10);
select *from classs

create table enroll(stud_id int foreign key REFERENCES student1(stud_id),class_id int foreign key REFERENCES classs(class_id));
INSERT INTO enroll VALUES (1, 1);
INSERT INTO enroll VALUES (2, 2);
INSERT INTO enroll VALUES (3, 3);
INSERT INTO enroll VALUES (4, 4);
INSERT INTO enroll VALUES (5, 5);
INSERT INTO enroll VALUES (6, 6);
INSERT INTO enroll VALUES (7, 7);
INSERT INTO enroll VALUES (8, 8);
INSERT INTO enroll VALUES (9, 9);
INSERT INTO enroll VALUES (10, 10);
select *from enroll;
select * from student1 inner join enroll ON student1.stud_id=enroll.stud_id;
select p.prof_lname,p.prof_id,c.class_name from professor p join classs c ON c.prof_id=p.prof_id;
SELECT stud_firstname from student1 AS s1 INNER JOIN enroll AS e ON s1.stud_id = e.stud_id;
select s1.stud_firstname,S1.stud_id,stud_zip from student1 s1 inner join enroll e  on s1.stud_id=e.stud_id join classs cl on cl.class_id=e.class_id join professor p on cl.prof_id=p.prof_id;

