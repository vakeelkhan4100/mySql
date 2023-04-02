show databases;
use wecodeacademy;
CREATE TABLE `student`(
 `id` int(10) UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT, 
 `name` varchar(255), 
  `mobile` int(15),
 `address` varchar(255), 
 `coures` varchar(255)
);
show tables;
 --- select * from student where name like '%khan%';
 --- select * from student where id between 5 and 10;
 
 INSERT INTO student(name,number,address,course)
 VALUE('nazim','99291623','merta city','reactnative');
 select cout(id) from student;
 select *from student;
 