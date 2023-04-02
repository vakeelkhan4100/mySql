use institute;
 select * from fees ;
select * from student ;
select * from result ;
select name from student where studentid = 5;
select city,count(*) from student where city = 'Mumbai' group by city;
select mobile from student where name = 'vakeel';
select sum(amount) as totalAmount from fees where studentid =10;
select studentid,sum(amount) as highest from fees group by studentid order by highest desc limit 1;
select studentid, avg(amount) from fees group by studentid;
select studentid,sum(amount) as highest from fees group by studentid order by highest desc limit 1;
select name from student where studentid = 6;
select stuId avg(obtainedMarks) from result  group by stuId ;
select name from student where studentid =2



 