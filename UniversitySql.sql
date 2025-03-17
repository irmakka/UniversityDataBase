/*Create database University; */
Use University;
/*
create table department(
dept_name varchar(30) primary key,
building varchar(10),
budget INT
);
Create Table student(
ID INT PRIMARY KEY,
name varchar(30),
tot_cred INT,
dept_name varchar(30),
FOREIGN KEY (dept_name) REFERENCES department (dept_name)
);
create table instructor(
ID INT PRIMARY KEY,
name varchar(30),
dept_name varchar(30),
salary INT,
FOREIGN KEY(dept_name) references department (dept_name)
);
create table  advisor(
s_id INT,
i_id  INT ,
FOREIGN KEY(s_id) references student (ID),
FOREIGN KEY(i_id) references instructor (ID)
);
create table course(
course_id INT primary key,
title varchar(20),
dept_name varchar(30),
credits INT,
foreign key  (dept_name) references department (dept_name)
);
create table pereq(
course_id INT,
pereq_id INT,
foreign key (course_id) references  course (course_id),
foreign key(pereq_id) references course (course_id)
);
Create table classroom(
building varchar(10),
room_number INT,
capacity INT,
primary key(building,room_number)
);
create table time_slot(    
time_slot_id INT PRIMARY KEY ,
day INT,
start_time INT,
end_time INT
);*/
/*
Create table section(
 course_id INT ,
 sec_id INT ,
 semester varchar(5),
 year INT,
 building varchar(20),
 room_number INT,
 time_slot_id INT,
 primary key (course_id,sec_id, semester, year),
 foreign key (course_id) references course(course_id),
 foreign key (building, room_number) references classroom(building,room_number),
 foreign key (time_slot_id) references time_slot(time_slot_id)
);
create table takes (
ID  INT  ,
course_id INT,
sec_id INT,
semester varchar(5),
year INT,
grade varchar(2),
FOREIGN KEY (ID) references student (ID),
FOREIGN KEY (course_id,sec_id,semester,year) references section (course_id,sec_id,semester,year)
);
create table teaches (
ID INT,
course_id INT,
sec_id INT,
semester varchar(5),
year INT,
foreign key(ID) references instructor(ID),
foreign key(course_id,sec_id,semester,year) references section (course_id,sec_id,semester,year)
);

INSERT INTO department(dept_name,building,budget) values("Engineering","D-block",300);
INSERT INTO department(dept_name,building,budget) values("English","A-block",100);
INSERT INTO department(dept_name,building,budget) values("Art","B-block",50);

INSERT INTO student (ID,name,tot_cred,dept_name) values(1,"Irmak",30,"Engineering");
INSERT INTO student (ID,name,tot_cred,dept_name) values(2,"Gözde",30,"Engineering");
INSERT INTO student (ID,name,tot_cred,dept_name) values(3,"Göktuğ",20,"English");
INSERT INTO student (ID,name,tot_cred,dept_name) values(4,"Fatma",20,"English");
INSERT INTO student (ID,name,tot_cred,dept_name) values(5,"Safiyye",10,"Art");
INSERT INTO student (ID,name,tot_cred,dept_name) values(6,"Melih",10,"Art");


INSERT INTO instructor (ID,name,dept_name,salary) values(8,"Yakup","Engineering",100000);
INSERT INTO instructor (ID,name,dept_name,salary) values(9,"Alparslan","Engineering",100000);
INSERT INTO instructor (ID,name,dept_name,salary) values(10,"Gamze","English",60000);
INSERT INTO instructor (ID,name,dept_name,salary) values(11,"Fatme","English",30000);
INSERT INTO instructor (ID,name,dept_name,salary) values(12,"Ceren","Art",40000);
INSERT INTO instructor (ID,name,dept_name,salary) values(13,"Buse","Art",50000);



INSERT INTO advisor (s_id,i_id) values (1,8);
INSERT INTO advisor (s_id,i_id) values (2,9);
INSERT INTO advisor (s_id,i_id) values (3,10);
INSERT INTO advisor (s_id,i_id) values (4,11);
INSERT INTO advisor (s_id,i_id) values (5,12);
INSERT INTO advisor (s_id,i_id) values (6,13);


INSERT INTO course (course_id,title,dept_name,credits) values (14,"Visual","Engineering",5);
INSERT  INTO course (course_id,title,dept_name,credits) values (15,"Java","Engineering",20);
INSERT INTO course (course_id,title,dept_name,credits) values (16,"Shakspeare","English",5);
INSERT INTO course (course_id,title,dept_name,credits) values (17,"Writing","English",10);
INSERT INTO course (course_id,title,dept_name,credits) values (18,"Drawing","Art",5);
INSERT INTO course (course_id,title,dept_name,credits) values (19,"Paintings","Art",5);


insert into pereq(course_id,pereq_id) values(14,14);
insert into pereq(course_id,pereq_id) values(15,15);
insert into pereq(course_id,pereq_id) values(16,16);
insert into pereq(course_id,pereq_id) values(17,17);
insert into pereq(course_id,pereq_id) values(18,18);
insert into pereq(course_id,pereq_id) values(19,19);


INSERT INTO classroom (building,room_number,capacity) values ("A-block",30,10000);
INSERT INTO classroom (building,room_number,capacity) values ("D-block",31,5000);
INSERT INTO classroom (building,room_number,capacity) values ("B-block",32,7000);

insert into time_slot(time_slot_id ,day,start_time,end_time) values (17,5,13,18);
insert into time_slot(time_slot_id ,day,start_time,end_time) values (16,7,9, 14);
insert into time_slot(time_slot_id ,day,start_time,end_time) values (15,8,10,16);
insert into time_slot(time_slot_id ,day,start_time,end_time) values (14,3,11,15);
insert into time_slot(time_slot_id ,day,start_time,end_time) values (13,4,12,16);
insert into time_slot(time_slot_id ,day,start_time,end_time) values (12,6,4,10);


insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (14,20,"1",2025,"D-Block",31,17);
insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (15,21,"2",2024,"D-Block",31,16);
insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (16,22,"1",2025,"A-Block",30,15);
insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (17,23,"2",2024,"A-Block",30,14);
insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (18,24,"1",2025,"B-Block",32,13);
insert into section ( course_id, sec_id, semester, year, building, room_number, time_slot_id)
values (19,25,"2",2024,"B-Block",32,12);




insert into takes (ID,course_id,sec_id,semester,year,grade) values (1,14,20,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (1,15,21,"2",2024,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (2,14,20,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (2,15,21,"2",2024,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (3,16,22,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (3,17,23,"2",2024,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (4,16,22,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (4,17,23,"2",2024,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (5,16,22,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (5,17,23,"2",2024,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (6,16,22,"1",2025,"AA");
insert into takes (ID,course_id,sec_id,semester,year,grade) values (6,17,23,"2",2024,"AA");


insert into teaches (ID,course_id,sec_id,semester,year) values (8,15,21,"2",2024);
insert into teaches (ID,course_id,sec_id,semester,year) values (9,14,20,"1",2025);
insert into teaches (ID,course_id,sec_id,semester,year) values (10,16,22,"1",2025);
insert into teaches (ID,course_id,sec_id,semester,year) values (11,17,23,"2",2024);
insert into teaches (ID,course_id,sec_id,semester,year) values (12,18,24,"1",2025);
insert into teaches (ID,course_id,sec_id,semester,year) values (13,19,25,"2",2024);
*/
