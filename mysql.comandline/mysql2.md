#### 1. khan
```
select * from student where name like '%khan%'

```

#### 2. where studentid between 5 and 10
```
select * from student where  id between 5 and 7 

```
#### 3. Rename mobile column to number
```
alter table student rename column mobile to number

```
#### 4. kaunse month me sbse jyada fees aayi hai
```
select month, sum(amount)from fees group by month limit 1 ;

```
#### 5. kaunse month me sbse kam fees aayi hai
```
select month, sum(amount) as total from fees  group by month order by total asc limit 1;

```
#### 6. sbse jyada fees kis student ne di hai
```
select  studentid ,sum(amount)from fees group by studentid limit 1 ;
```
#### 7. sbse kam fees kis student ne di hai
```
select  studentid ,sum(amount) as total from fees group by studentid  order by total asc limit 1;

```
#### 8. aise kaunse student hai jinhone ek b bar fee ni di hai
```

```
#### 9. aise kaunse students hai jinka number and name ni hai db me
```
 select * from student where name is null and number is null 

```
#### 10. vo sare students ka record delete krdo jinhone koi fees ni di hai
```

```

 

#### 1. Vo students ke name show kro jinke total average marks 60% se kam hai
```
select  stuId from result where  obtainedMarks < 70  group by stuId;
select * from student where studentid = 8 or  studentid = 9

```

#### 2. Topper student kaun hai overall uska naam btao
```
select  stuId, max(obtainedMarks) as total from result  group by stuId order by total desc limit 1;
select * from student where studentid = 2
```

#### 3. Particular subject me kaun topper hai us student ka naam btao
```

```

#### 4. Aise kaunse students hai jinhone 1 b tesr ni dia
```

```

#### 5. 2nd rank pr kaunsa student hai kisi subject me vo btao
```

```










 