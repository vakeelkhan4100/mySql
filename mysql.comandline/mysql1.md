#### How to create the student table in MySQL?

```
CREATE TABLE `student`(
 `id` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
 `name` varchar(255),
  `mobile` int(15),
 `address` varchar(255),
 `coures` varchar(255)
);

```

#### How to create the fees table in MySQL?

```
CREATE TABLE `fees` (
 `feeid` integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
 `amount` bigint,
 `month` varchar(255),
);

```

#### How to insert a new fee record into the fees table for a particular student?

```
INSERT INTO fees(amount,month,studentid)
values(2000,'jan',1)

```

#### How to update a student record in the student table?

```
 update student set  fild_name ='new_value'  where  ( condition );

```

#### How to update a fee record in the fees table?

```
update  fees set  fild_name ='new_value'  where  ( condition );

```

#### How to select all the records from the fees table?

```
 select * from fees

```

#### How to select a particular student record from the student table?

```
select * from student where condition

```

#### How to select all the fee records for a particular student from the fees table?

```
select * from  fees where condition

```

#### How to get the total number of students in the student table?

```
select count(*) from student
```

#### How to get the sum of all the fees paid by a particular student?

```
 select sum(amount(particular ke liye)) from fees where  studentid=1condition();

```

#### How to get the average fee paid by all the students?

```
select avg(*) from  fees
```

#### How to get the student record with the highest mobile number in the student table?

```
select max(mobile(fild_name)) from student(table_name)

```

#### How to get the fee record with the highest fee amount in the fees table?

```
select max(amount(fild_name)) from fees(table_name)

```

#### How to get the list of all students who live in a city?

```
 select course, count(id) from student group by course;

```

#### How to get the list of all students who have paid fees for the month of 'apr'?

```
select month,studentid from fees where month ='apr' group by studentid;

```

#### How to get the list of all cities along with the count of students living in each city?

```

select address ,count(id) from student group by address

```

#### How to get the list of all students sorted by their names in ascending order?

```
 select * from student order by name asc

```

#### How to get the list of all students sorted by their mobile numbers in descending order?

```
 select * from student order by mobile desc
```

#### How to get the list of all fees records sorted by the fee amount in descending order?

```
 select * from fees order by amount desc

```

#### How to get the list of all fees records sorted by the fee amount in descending order, for a particular student?

```
  select * from fees where studentid= 1 order by amount desc

```

#### How to get the list of all cities along with the count of students living in each city, where the count is greater than 1?
```
select address,count(id) as total from student group by address having total >1

```
