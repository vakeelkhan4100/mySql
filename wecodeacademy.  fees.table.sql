use wecodeacademy;
CREATE TABLE `fees` ( 
 `feeid` integer UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT, 
 `amount` bigint,
 `month` varchar(255),
 `studentid` integer unsigned,
  CONSTRAINT FK_StudentId FOREIGN KEY (studentid)
	REFERENCES Student(id)
);
 update student set  name='vakeel khan' where studentid = 1;
INSERT INTO fees(amount,month,studentid)
VALUES(1500,'jun',10);
--- select * from student where name='vakeel'
 select * from fees;
select * from student;
 select sum(amount) from fees where  studentid=1;
  select avg(amount) from fees;
 select max(mobile) from student;
 select max(amount) from fees;
 select  id from student group by id;
 select month,studentid from fees where month ='apr' group by studentid; 
 select address ,count(id) from student group by address;
 select * from student order by name asc;
select * from fees where studentid= 1 order by amount desc ;
select address,count(id) as total from student group by address having total >1;
select * from student where name like '%khan%';
select * from student where  id between 5 and 7 ;
select * from student;
alter table student rename column mobile to number;
select month,max(amount)from fees group by month limit 1;
select * from fees;
select month, sum(amount)from fees group by month limit 1 ;
select month, sum(amount) as total from fees  group by month order by total asc limit 1;

select  studentid ,sum(amount)from fees group by studentid limit 1 ;
select  studentid ,sum(amount) as total from fees group by studentid  order by total asc limit 1;

 select * from student where name is null and number is null; 

 select distinct studentid from fees;
 
  
 
  
 
 
 
 
 
 