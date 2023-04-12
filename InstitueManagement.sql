create database InstitueManagement;
use InstitueManagement;
-- 1.student table
  create table `Student`(                 
    `studentId` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name`varchar(255) not null,
    `fatherName`varchar(255) not null, 
    `mobile`bigint,
    `email` varchar(255)not null unique,
    `admissionDate` date not null
    );
    insert into Student(name,fatherName,mobile,email,admissionDate)
values('vakeel khan','saradeen khan',6375164100,'vakeelKhan@gmail.com','2023-01-01'),
      ('mazeed khan','aslam khan',8890345786,'mazeedkhan@gmail.com','2023-01-01'),
      ('sameer khan','Bhanwaru khan',7014101046,'sameerkhan@gmail.com','2023-01-03'),
	  ('khalil Joya','murad Kha Joya',9079883575,'khaliljoya@gmail.com','2023-01-03'),
      ('afzal khan','sikandar khan',8619426228,'afzalkhan@gmail.com','2023-01-05'),
	  ('ashfaq solnkey','fakir mohammad',7023586786,'ashfaqsolnkey@gmail.com','2023-01-05'),
	  (' aarif mohammad','sher mohammad',6375337510,'aarifmohammad@gmail.com','2023-01-06'),
	  ('sher mohammad','kalam khan',9610604098,'shermohammad@gmail.com','2023-01-06'),
      ('irfan pathan','farid khan',8302235106,'irfanpathan@gmail.com','2023-01-02');
      select * from Student; 
      
-- 2.EmployeeType table
create table `EmployeeType`(
`employeeTypeId`integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`employeeType`varchar(255)
);
insert into EmployeeType (employeeType)
values('teacher'),('PEON'),('RECEPTIONIST');
select * from EmployeeType;


-- 3.Employee table
create table `Employee`(
`employeeId` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255),
`mobile`bigint not null,
`age`int(10) not null,
`employeeType`integer unsigned,
CONSTRAINT Employee_EmployeeType_Fk foreign key(employeeType) 
REFERENCES  EmployeeType(employeeTypeId)
);
insert into Employee (name,mobile,age,employeeType)
values ('hitesh ji',1234567698,30,1),('chandu',1234567543,28,2),('raju',6375122298,25,3);
select * from Employee;
 
 
 -- 4.Salary table
 create table `Salary`(
`salaryId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`date not null,
`empId` integer unsigned,
CONSTRAINT Salary_Employee_Fk foreign key(empId) 
REFERENCES  Employee(employeeId)
);
insert into Salary (amount,month,empId)
values(20000,'2023-01-10',1),(7000,'2023-01-10',2),(12000,'2023-01-10',3);
select * from Salary ; 
 
 
 -- 5.Course table
 create table `Course`( 
`courseId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255)not null,
`fees` integer not null,
`startdate` date not null,
`enddate`date not null,
`timing` time
);
insert into Course (name,fees,startdate,enddate,timing)
values('nodejs','5000','2023-01-01','2023-06-15','10:30'),
      ('js','3000','2023-01-06','2023-05-31','6:00'),
	  ('java','3000','2023-02-01','2023-08-15','3:00');
select * from Course;
   
-- 6.StudentCourse table
create table`StudentCourse`(
`studentCourseId`int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
`stuid`integer unsigned,
`courseid`integer unsigned,
primary key(studentCourseId,stuid,courseid),
constraint StudentCourse_Student_Fk foreign key(stuid)
references Student(studentId),
constraint StudentCourse_Test_Fk foreign key(courseid)
references Course(courseId)
);
insert into StudentCourse (stuid,courseid)
values(1,2),(2,3),(3,1),(4,1),(5,1),(6,3),(7,2),(8,1),(9,2);
select * from  StudentCourse; 

-- 7.Test table
create table `Test`(
`testId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`testname`varchar(255) not null,
`passingmarks`integer not null,
`totalmarks`integer not null,
`testdate`date not null 
);
insert into Test (testname,passingmarks,totalmarks,testdate)
values('montly',40,100,'2023-01-29'),
('wekly',20,50,'2023-01-07');
select * from Test;
 
-- 8.Result table
create table `Result`(
`resultId`int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
`obtainedmarks`int(10) not null,
`result`enum ('pass','fail'),
`stuid`integer unsigned,
`testid`integer unsigned,
primary key (resultId,stuid,testid),
 constraint Result_Student_fk foreign key(stuid)
 references Student(studentId),
constraint Result_Test_fk foreign key(testid)
 references Test(testId)
);
insert into Result (obtainedmarks,result,stuid,testid)
values(70,'pass',1,1),
	  (80,'pass',2,1),
	  (50,'pass',3,1),
	  (75,'pass',4,1),
	  (40,'pass',6,2),
      (30,'pass',7,2), 
      (35,'pass',8,2);
 select * from Result;
 
 -- 9.fees table
 create table `Fees`(
`feeId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`date not null,
`stuid` integer unsigned,
 constraint Fees_Student_Fk foreign key(stuid)
 references Student(studentId)
);
insert into Fees (amount,month,stuid)
values(4000,'2023-02-10',2),
(5000,'2023-01-05',3),
(4500,'2023-01-15',4),
(5000,'2023-02-05',5),
(5000,'2023-01-20',8),
(3000,'2023-02-2',9);
select * from Fees;

-- 10.Address table
create table `Address`(
`addressId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`city`varchar (255) not null,
`state`varchar (255) not null,
`pincode`int(10)not null,
`stuid`integer unsigned unique,
constraint Address_Student_Fk foreign key(stuid)
references Student(studentId)
);
insert into Address(city,state,pincode,stuid)
values('merta city','rajsthan',341510,1),
      ('merta city','rajsthan',341510,2),
      ('sikar','rajsthan',332001,3),
      ('jaipur','rajsthan',302001,4),
      ('merta city','rajsthan',341510,5),
      ('merta city','rajsthan',341510,6),
      ('padu kla','rajsthan',341031,7),
      ('jaipur','rajsthan',302001,8),
      ('jaipur','rajsthan',302001,9);
	select * from Address;
  
    
-- 11.Expenses table
create table `Expenses`(
`expensesId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`expenseDetail`varchar(255)not null,
`amount`bigint not null,
`expensesDate` date not null
);
insert into  Expenses (expenseDetail,amount,expensesDate)
values('Jhadu',2000,'2023-02-10'),('IftarParty',6000,'2023-04-13'),('Rent',15000,'2023-01-10'),('LightBill',4000,'2023-02-05');
select * from Expenses;    
    