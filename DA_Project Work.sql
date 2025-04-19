create table regions(region_id int primary key,region_name varchar(40));
insert into regions values(1,'asia ');
insert into regions values(2,' america');
insert into regions values(3,' europe');
insert into regions values(4,'africa');
insert into regions values(5,' north america');
insert into regions values(6,'south america');
insert into regions values(7,'australia');
insert into regions values(8,'antarctica');
insert into regions values(9,'middle east');
insert into regions values(10,'central america');
insert into regions values(11,'caribbean');
insert into regions values(12,'east asia');
insert into regions values(13,'southeast asia');
insert into regions values(14,'northern europe');
insert into regions values(15,'western europe');
select * from regions;

create table countries(country_id varchar(50) primary key,country_name varchar(30),region_id int,foreign key(region_id)references regions(region_id));
insert into countries values('in','india',1);
insert into countries values('ab','albania',3);
insert into countries values('iq','iraq',1);
insert into countries values('dm','denmark',3);
insert into countries values('al','algeria',4);
insert into countries values('cu','cuba',5);
insert into countries values('bz','brazil',6);
insert into countries values('pe','peru',6);
insert into countries values('jp','japan',1);
insert into countries values('it','italy',3);
insert into countries values('ba','benin',4);
insert into countries values('ch','china',12);
insert into countries values('cha','chad',4);
insert into countries values('lt','latvia',3);
insert into countries values('np','nepal',1);
select * from countries;

create table locations(location_id int primary key,street_address varchar(100),postal_code number(20),city varchar(50),state_province varchar(50),country_id varchar(50),foreign key(country_id)references countries(country_id));
insert into locations values(11,'marine drive',400020,'mumbai','mh','in')
insert into locations values(12,'rruga jul variboba',1001,'tirana','null','ab')
insert into locations values(13,'al-mutanabbi street',10001,'baghdad','null','iq')
insert into locations values(14,'nyhavn1',1051,'copenhagen','cp','dm')
insert into locations values(15,'rue didouche mourad',16000,'algiers','ag','al')
insert into locations values(16,'calle obispo 155',10100,'havana','hv','cu')
insert into locations values(17,'avenida atlântica 1702',22021-001,'rio de janeiro','rdj','bz')
insert into locations values(18,'1-1-1, shibuya',150-0002,'japan','tk','jp')
insert into locations values(19,'via del corso 123',00187,'rome','rm','it')
insert into locations values(20,'boulevard de la marina',34879,'cotonou','ct','ba')
insert into locations values(21,'po box 123',123321,'kathmandu','km','np')
insert into locations values(22,'mg road,',56001,'bengaluru','kar','in')
insert into locations values(23,'ai-ashar street',61001,'basra','bs','iq')
insert into locations values(24,'2-2-2,shinsaibashi',5420086,'chuo-ku','ck','jp')
insert into locations values(25,'po box 456',675849,'pokhara','pk','np')
select * from locations;

create table managers(manager_id int primary key,first_name varchar(50),last_name varchar(50));
insert into managers values(1,'neha','smith');
insert into managers values(2,'bob','johnson');
insert into managers values(3,'charlie','williams');
insert into managers values(4,'david','brown');
insert into managers values(5,'eve','jones');
insert into managers values(6,'frank','garcia');
insert into managers values(7,'grace','martinez');
insert into managers values(8,'hannah','rodriguez');
insert into managers values(9,'ian','hernandez');
insert into managers values(10,'jack','lopez');
insert into managers values(11,'karen','gonzalez');
insert into managers values(12,'leo','wilson');
insert into managers values(13,'mia','anderson');
insert into managers values(14,'noah','thomas');
insert into managers values(15,'olivia','moore');
select * from managers

create table departments(department_id int primary key,department_name varchar(50),manager_id int,foreign key(manager_id)references managers(manager_id),location_id int,foreign key(location_id)references locations(location_id));
insert into departments values(501,'sales',1,11);
insert into departments values(502,'hr',2,12);
insert into departments values(503,'engineering',1,13);
insert into departments values(504,'marketing',4,11);
insert into departments values(505,'finance',5,14);
insert into departments values(506,'operations',6,15);
insert into departments values(507,'customer service',4,16);
insert into departments values(508,'legal',7,15);
insert into departments values(509,'research',8,17);
insert into departments values(510,'developer',9,18);
insert into departments values(511,'procurement',10,19);
insert into departments values(512,'quality assurance',11,20);
insert into departments values(513,'administration',12,21);
insert into departments values(514,'public relations',13,20);
insert into departments values(515,'training',14,22);
select * from departments

create table jobs(job_id int primary key,job_title varchar(50),min_salary float,max_salary float);
insert into jobs values(101,'sales manager',50000,100000);
insert into jobs values(102,'hr consultant',60000,120000);
insert into jobs values(103,'soft engineering',80000,1600000);
insert into jobs values(104,'marketing specialist',90000,180000);
insert into jobs values(105,'financial analyst',70000,140000);
insert into jobs values(106,'operations manager',65000,115000);
insert into jobs values(107,'customer service representative',30000,60000);
insert into jobs values(108,'legal advisor',75000,140000);
insert into jobs values(109,'research scientist',80000,150000);
insert into jobs values(110,'java developer',60000,120000);
insert into jobs values(111,'product manager',85000,160000);
insert into jobs values(112,'quality analyst',50000,95000);
insert into jobs values(113,'administrator',40000,85000);
insert into jobs values(114,'public relations officer',45000,90000);
insert into jobs values(115,'training specialist',48000,92000);
select * from jobs


create table employees3(employee_id int primary key,first_name varchar(50),last_name varchar(50),email varchar(50),phone_number number,hire_date timestamp,job_id int,foreign key(job_id)references jobs(job_id),salary float,commission_pct number,manager_id int,foreign key(manager_id)references managers(manager_id),department_id int,foreign key(department_id)references departments(department_id));
insert into employees3 values(1,'ajit','kamthe','ajitkamthe7737@gmai.com',9075290036,date'2019-01-01',101,1200000,null,1,501);
insert into employees3 values(2,'shubham','satale','shubham37@gmail.com',9146806563,date'2020-06-15',102,50000,null,2,502);
insert into employees3 values(3,'payal','kate','payal3@gmail.com',1234567892,date'1990-03-20',103,10000,null,3,503);
insert into employees3 values(4,'ajinkya','patil','pati3@gmail.com',9734567893,date'1998-11-10',104,75000,null,4,504);
insert into employees3 values(5,'abhi','katake','abhi4@gmail.com',9876567894,date'2019-08-25',105,850000,null,3,505);
insert into employees3 values(6,'shubhangi','kamthe','shubhangikamthe37@gmail.com',9011659547,date'2018-08-25',105,80000,null,5,506);
insert into employees3 values(7,'palak','tiwari','tiwari5@gmail.com',9877777777,date'2017-08-25',106,80000,null,6,507);
insert into employees3 values(8,'armaan','malik','arman22@gmail.com',9847554444,date'2016-08-25',107,89000,null,7,508);
insert into employees3 values(9,'ishan','kishan','ishu23@gmail.com',9977665544,date'2016-09-25',106,55000,null,8,508);
insert into employees3 values(10,'rohit','sharma','rohitsharma45@gmail.com',8975610000,date'2019-07-25',108,45000,null,9,509);
insert into employees3 values(11,'virat','kohali','virat56@gmail.com',8904756748,date'2017-08-25',109,50000,null,11,510);
insert into employees3 values(12,'jasprit','bumrah','bumrah55@gmail.com',9846758909,date'1989-05-25',110,60000,null,12,509);
insert into employees3 values(13,'yuzi','chahal','yuzi54@gmail.com',5786489734,date'1980-08-25',111,70000,null,13,511);
insert into employees3 values(14,'sachin','tendulkar','sachin4@gmail.com',9807685674,date'1980-09-25',110,90000,null,13,514);
insert into employees3 values(15,'saurav','ganguli','ganguli3@gmail.com',9087654324,date'1999-08-25',114,80000,null,14,515);
select * from employees3

create table job_history(employee_id int,foreign key(employee_id)references employees3(employee_id),start_date date,end_date date,job_id int,foreign key(job_id)references jobs(job_id),department_id int,foreign key(department_id)references departments(department_id),primary key(employee_id));
insert into job_history values(1, date'2019-01-01',date'2022-12-31',101,501);
insert into job_history values(2,date'2020-01-01',date'2024-12-31',102,502);
insert into job_history values(3,date'1990-03-20',date'2020-12-31',101,501);
insert into job_history values(4,date'1998-11-10',date'2019-12-31',103,504);
insert into job_history values(5,date'2019-08-25',date'2024-12-30',105,505);
insert into job_history values(6,date'2018-08-25',date'2024-10-30',106,505);
insert into job_history values(7,date'2017-08-25',date'2024-12-30',105,506);
insert into job_history values(8,date'2016-08-25',date'2023-06-30',107,504);
insert into job_history values(9,date'2016-09-25',date'2022-07-30',108,507);
insert into job_history values(10,date'2019-07-25',date'2022-12-29',109,508);
insert into job_history values(11,date'2017-08-25',date'2019-09-30',110,509);
insert into job_history values(12,date'1990-01-01',date'2022-12-31',111,510);
insert into job_history values(13,date'1980-08-25',date'2024-12-29',110,510);
insert into job_history values(14,date'1980-09-25',date'2022-11-30',113,511);
insert into job_history values(15,date'1999-08-25',date'2021-12-30',115,514);
select * from job_history


---BUSINESS QUESTIONS---

---Que1.What is each employee's department?---
select e.employee_id,e.first_name,e.last_name, d.department_name
from employees3 e join departments d 
on e.department_id=d.department_id;

---Que2Get all the managers and employees who manage it.---
select m.manager_id,m.first_name,m.last_name,e.employee_id,e.first_name,e.last_name
from managers m left join employees3 e 
on m.manager_id=e.manager_id;

---Que3.How many employees does each manager manage?---
select m.manager_id,m.first_name,m.last_name,count(e.employee_id) as employee_count
from managers m left join employees3 e 
on m.manager_id=e.manager_id
group by m.manager_id,m.first_name,m.last_name;

---Que4.How many employees are there in each job title?---
select j.job_title,count(e.employee_id) as employee_count
from jobs j left join employees3 e 
on j.job_id=e.job_id
group by j.job_title;

---Que5.Compare employee salaries with the salaries set by the company.---
select e.employee_id,e.first_name,e.last_name,e.salary,j.min_salary,j.max_salary,
case 
when e.salary<j.min_salary then 'below minimum'
when e.salary >j.max_salary then 'above maximum'
else 'within range'
end as salary_comparison
from employees3 e
join jobs j 
on e.job_id=j.job_id;

---Que6.Who are the employees who were promoted?---
select distinct e.employee_id,e.first_name,e.last_name
from employees3 e
join job_history jh 
on e.employee_id = jh.employee_id
where jh.job_id!=e.job_id;

---Que7.Get information about the number of employees and salary in each department.---
select d.department_name,count(e.employee_id) as employee_count,sum(e.salary) as total_salary,avg(e.salary) as average_salary
from departments d
left join employees3 e 
on d.department_id=e.department_id
group by d.department_name;

---Que8.How many employees are there in each city and what is their average salary?---
select l.city,count(e.employee_id) as employee_count,avg(e.salary) as average_salary
from locations l
left join departments d 
on l.location_id=d.location_id
left join employees3 e 
on d.department_id=e.department_id
group by l.city;

---Que9.What is the turnover rate per manager?---
select m.manager_id,m.first_name,m.last_name as manager_name,count(distinct jh.employee_id) as employees_left,count(distinct e.employee_id) as total_employees_managed,
case 
when count(distinct e.employee_id) = 0 then 0
else round(count(distinct jh.employee_id) * 100.0 / count(distinct e.employee_id),2)
end as turnover_rate_percentage
from managers m
left join employees3 e on m.manager_id=e.manager_id
left join job_history jh on m.manager_id=e.manager_id and jh.employee_id=e.employee_id
group by m.manager_id,m.first_name,m.last_name;

---DATA CLEANING---

---Que1)remove the commission_pct column from the employees table because all the values ??are NULL.---
alter table employees3
drop column commission_pct;

select * from employees3

---Que2)Update employees where the department is in non-existent countries.---
update employees3
set department_id=null
where department_id in
(select d.department_id
from departments d
join locations l on d.location_id=l.location_id
join countries c on l.country_id=c.country_id
where c.country_name='israel')



