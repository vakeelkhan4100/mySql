### How many students are there in the student table?
```
select count(*) from student;

```

### What is the name of the student with studentid = 5?
```
select name from student where studentid = 5;

```

### How many students are there from the city of Mumbai?
```
select city,count(*) from student where city = 'Mumbai' group by city

```

### What is the email address of the student whose name is 'John Doe'?
```
select mobile from student where name = 'vakeel'

```

### What is the total amount of fees paid by the student with studentid = 10?
```
select sum(amount) as totalAmount from fees where studentid =10

```

### What is the highest amount of fees paid by any student?
```
select studentid,sum(amount) as highest from fees group by studentid order by highest desc limit 1;

```

### What is the average amount of fees paid by all students?

```
select studentid, avg(amount) from fees group by studentid

```

### What is the name of the student who paid the highest amount of fees?
```
select studentid,sum(amount) as highest from fees group by studentid order by highest desc limit 1;
select name from student where studentid = (uper wali query me jo id nikal ker aayi)

```

### What is the total marks obtained by the student with studentid = 7?
```
select obtainedMarks from result where stuId = 7
```


### What is the highest marks obtained by any student?
```
select stuId,max(obtainedMarks)as total from result  group by stuId order by total desc limit 1 ;

```

### What is the average marks obtained by all students
```
select stuId ,avg(obtainedMarks) from result  group by stuId ;

```

### What is the name of the student who obtained the highest marks?
```
select stuId,max(obtainedMarks)as total from result  group by stuId order by total desc limit 1 ;
select name from student where studentid =2

```

### What is the total amount of fees paid by all students from the city of Delhi?
```
select studentid  from student where city ='peeh' ;
select sum(amount) from fees where studentid = 7

```

### What is the total amount of fees paid for the month of January?
```
select sum(amount) from fees where month = 'jan'

```
### What is the total amount of fees paid by all students for the subject of mathematics?
```
select stuId from result where subject= 'js' ;
select sum(amount) from fees where studentid=3 or studentid=9

```

### What is the average marks obtained by the student with studentid = 9 for the subject of science?
```
select avg(obtainedMarks) from result where stuId=9 and subject = 'js'

```
### What is the name of the student who paid the highest amount of fees for the month of February?
```
select studentid, max(amount)as highest from fees where month = 'march' group by studentid order by highest desc limit 1;
select name from student where studentid =8

```

### What is the name of the student who obtained the highest marks in the subject of English?
```
```
### What is the name of the student who paid the highest amount of fees for the subject of computer science?

### What is the name of the student who obtained the highest marks in the subject of mathematics for the test date of '2022-02-15'?

### What is the total amount of fees paid by all students whose fathers' names start with the letter 'S'?

### What is the average marks obtained by all students for the subject of science?

### What is the name of the student who paid the highest amount of fees for the year 2022?

### What is the name of the student who obtained the highest marks in the subject of English for the test date of '2022-03-15'?

### What is the name of the student who paid the second highest amount of fees for the subject of computer science?

### What is the total amount of fees paid by all students who have not paid fees for the month of February?

### What is the name of the student who obtained the highest marks in the subject of mathematics and science combined?

### What is the name of the student who paid the highest amount of fees for the month of March and the subject of English combined?

### What is the name of the student who obtained the highest marks for the test date of '2022-04-15' in any subject?

### What is the name of the student who paid the highest amount of fees for any month in which the student obtained the highest marks for the subject of mathematics?