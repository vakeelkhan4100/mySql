#### create database 
```
 create database InstitueManagement;

```
#### use database
```
use InstitueManagement;

```

#### create student table
```
create table `student`(
`id` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255) not null,
`FatherName`varchar(255) not null, 
`Mobile`bigint,
`Email` varchar(255)not null,
`AdmissionDate` date  not null
);


insert into student(name,FatherName,Mobile,Email,AdmissionDate)
values('vakeel khan','saradeen khan',6375164100,'vakeelKhan@gmail.com','2023-01-01'),
      ('mazeed khan','aslam khan',8890345786,'mazeedkhan@gmail.com','2023-01-01'),
      ('sameer khan','Bhanwaru khan',7014101046,'sameerkhan@gmail.com','2023-01-03'),
	  ('khalil Joya','murad Kha Joya',9079883575,'khaliljoya@gmail.com','2023-01-03'),
      ('afzal khan','sikandar khan',8619426228,'afzalkhan@gmail.com','2023-01-05'),
	  ('ashfaq solnkey','fakir mohammad',7023586786,'ashfaqsolnkey@gmail.com','2023-01-05'),
	  (' aarif mohammad','sher mohammad',6375337510,'aarifmohammad@gmail.com','2023-01-06'),
	  ('sher mohammad','kalam khan',9610604098,'shermohammad@gmail.com','2023-01-06'),
      ('irfan pathan','farid khan',8302235106,'irfanpathan@gmail.com','2023-01-02')
 ;
 select * from student;

```

#### create Employee table

```
create table `Employee`(
`id` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255),
`employeetypeid`integer unsigned,
CONSTRAINT employee_EmployeeType_Fk foreign key(employeetypeid) 
REFERENCES  EmployeeType(id)
);


insert into Employee (name,employeetypeid)
values ('hitesh ji',1),('chandu',2),('raju',3),('sajit ali khan',1);
select * from Employee;

```

#### create  EmployeeType table

```
create table `EmployeeType`(
`id`integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`employeetype`varchar(255)
);


insert into EmployeeType (employeetype)
values('teacher'),('PEON'),('RECEPTIONIST');
select * from EmployeeType;

```


#### create table salary

```
create table `salary`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`varchar(255) not null,
`empid` integer unsigned,
CONSTRAINT salary_Employee_Fk foreign key(empid) 
REFERENCES  Employee(id)
);

insert into salary (amount,month,empid)
values(20000,'jan',1),(7000,'jan',2),(12000,'jan',3);
select * from ;

```

#### create Expenses table

```
create table `Expenses`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`expense detail`varchar(255)not null,
`amount` bigint not null,
`date` date not null
);

insert into  Expenses (expenseDetail,amount,date)
values('Jhadu',2000,'2023-02-10'),('IftarParty',6000,'2023-04-13'),('Rent',15000,'2023-01-10'),('LightBill',4000,'2023-02-05');
select * from Expenses;
    
```

#### create course table
```
create table `course`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255)not null,
`fees` integer not null,
`startdate` date not null,
`enddate`date not null,
`time` time
);
    
insert into course (name,fees,startdate,enddate,time)
values('nodejs','5000','2023-01-01','2023-06-15','10:30'),
      ('js','3000','2023-01-06','2023-05-31','6:00'),
	('java','3000','2023-02-01','2023-08-15','3:00');
select * from  course; 

```

#### create address table

```
create table `address`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`city`varchar (255) not null,
`state`varchar (255) not null,
`pincode`int(10)not null,
`stuid`integer unsigned,
constraint address_student_Fk foreign key(stuid)
references student(id)
);

insert into address(city,state,pincode,stuid)
values('merta city','rajsthan',341510,1),
      ('merta city','rajsthan',341510,2),
      ('sikar','rajsthan',332001,3),
      ('jaipur','rajsthan',302001,4),
      ('merta city','rajsthan',341510,5),
      ('merta city','rajsthan',341510,6),
      ('padu kla','rajsthan',341031,7),
      ('jaipur','rajsthan',302001,8),
      ('jaipur','rajsthan',302001,9);
      select * from address

```

#### create studentCourse table
```
create table `studentCourse`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`stuid`integer unsigned,
`courseid`integer unsigned,
constraint studentCourse_student_Fk foreign key(stuid)
references student(id),
constraint stuCou_test_Fk foreign key(courseid)
references course(id)
);

insert into studentCourse (stuid,courseid)
values(1,2),(2,3),(3,1),(4,1),(5,1),(6,3),(7,2),(8,1),(9,2);
select * from  studentCourse;
```

### create test tablse
```
create table `Test`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`testname`varchar(255) not null,
`passingmarks`integer not null,
`totalmarks`integer not null,
`testdate` date 
);

insert into Test (testname,passingmarks,totalmarks,testdate)
values('montly',40,100,'2023-01-29'),
('wekly',20,50,'2023-01-07');
select * from Test;
 
```

### create result table
```
create table `result`(
`id`int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
`obtainedmarks`int(10) not null,
`result`varchar(255) not null,
`stuid`integer unsigned,
`testid`integer unsigned,
primary key (id,stuid,testid),
 constraint result_student_fk foreign key(stuid)
 references student(id),
constraint result_test_fk foreign key(testid)
 references Test(id)
);

insert into result (obtainedmarks,result,stuid,testid)
values(70,'pass',1,1),
	  (80,'pass',2,1),
	  (50,'pass',3,1),
	  (75,'pass',4,1),
	  (40,'pass',6,2),
      (30,'pass',7,2), 
      (35,'pass',8,2);
 select * from result;

```

### create fees table
```
create table `fees`(
`feeid`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`varchar(255) not null,
`stuid` integer unsigned,
 constraint fees_student_Fk foreign key(stuid)
 references student(id)
);

insert into fees (amount,month,stuid)
values(4000,'feb',2),
(5000,'jan',3),
(4500,'jan',4),
(5000,'jan',5),
(5000,'jan',8),
(3000,'feb',9);
select * from fees;
   
 ```