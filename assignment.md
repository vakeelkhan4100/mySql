#### create database

```
create database InstitueManagement;

```

#### use database

```
use InstitueManagement;

```

#### 1.create Student table

```
  create table `Student`(                 
    `studentId` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name`varchar(255) not null,
    `fatherName`varchar(255) not null, 
    `mobile`bigint,
    `email` varchar(255)not null unique,
    `admissionDate` date not null
    );

```

#### 2.create Employee table

```
create table `Employee`(
`employeeId` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255),
`mobile`bigint not null,
`age`int(10) not null,
`employeeType`integer unsigned,
CONSTRAINT Employee_EmployeeType_Fk foreign key(employeeType) 
REFERENCES  EmployeeType(employeeTypeId)
);

```

#### 3.create EmployeeType table

```
create table `EmployeeType`(
`employeeTypeId`integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`employeeType`varchar(255)
);

```

#### 4.create table Salary

```
 create table `Salary`(
`salaryId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`date not null,
`empId` integer unsigned,
CONSTRAINT Salary_Employee_Fk foreign key(empId) 
REFERENCES  Employee(employeeId)
);

```

#### 5.create Expenses table

```
create table `Expenses`(
`expensesId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`expenseDetail`varchar(255)not null,
`amount`bigint not null,
`expensesDate` date not null
);

```

#### 6.create course table

```
 create table `Course`( 
`courseId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`name`varchar(255)not null,
`fees` integer not null,
`startdate` date not null,
`enddate`date not null,
`timing` time
);

```

#### 7.create Address table

```
create table `Address`(
`addressId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`city`varchar (255) not null,
`state`varchar (255) not null,
`pincode`int(10)not null,
`stuid`integer unsigned unique,
constraint Address_Student_Fk foreign key(stuid)
references Student(studentId)
);

```

#### 8.create StudentCourse table

```
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

```

### 9.create Test tablse

```
create table `Test`(
`testId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`testname`varchar(255) not null,
`passingmarks`integer not null,
`totalmarks`integer not null,
`testdate`date not null 
);

```

### 10.create Result table

```
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

```

### 11.create Fees table

```
 create table `Fees`(
`feeId`int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
`amount`bigint not null,
`month`date not null,
`stuid` integer unsigned,
 constraint Fees_Student_Fk foreign key(stuid)
 references Student(studentId)
);

```
