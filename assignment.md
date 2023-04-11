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

```

#### create Employee table

```
create table `Employee`(
`id` integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255),
`employeetypeid`int(10) unsigned,
CONSTRAINT employee_EmployeeType_Fk foreign key(employeetypeid) 
REFERENCES  EmployeeType(id)
);

```

#### create  EmployeeType table

```
create table `EmployeeType`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`employeetype`varchar(255)
);

```


#### create table salary

```
create table `salary`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`varchar(255) not null,
`empid` int(10) unsigned,
CONSTRAINT salary_Employee_Fk foreign key(empid) 
REFERENCES  Employee(id)
);

```

#### create Expenses table

```
create table `Expenses`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`expense detail`varchar(255)not null,
`amount` bigint not null,
`date` date not null
);
    
```

#### create course table
```
create table `course`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255)not null,
`fees` integer not null,
`startdate` date not null,
`enddate`date not null,
`time` time,
`studentid` integer,
FOREIGN KEY (studentid)
REFERENCES  Student(id)
);
    
```

#### create address table

```
create table `address`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`city`varchar (255) not null,
`state`varchar (255),
`pincode`int(10)not null,
`stuid`integer unsigned,
constraint address_student_Fk foreign key(stuid)
references student(id)
);

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

```

### create test tablse
```
create table `Test`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`testname`varchar(255) not null,
`passingmarks`integer not null,
`totalmarks`integer not null,
`testdate` date ,
`stuId`integer unsigned,
 constraint test_student_fk foreign key(stuId)
 references student(id)
) 

```

### create result table
```
create table `result`(
`id`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`obtainedmarks`int(10) not null,
`result`varchar(255) not null,
`stuid`integer unsigned,
`testid`integer unsigned,
 constraint result_student_fk foreign key(stuid)
 references student(id),
constraint result_test_fk foreign key(testid)
 references Test(id)
);

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
)
   
 ```