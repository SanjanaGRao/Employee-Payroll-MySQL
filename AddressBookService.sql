#UC1 - create address book database
create database address_book_service;
show databases;
use address_book_service;
#UC2 create address book table
create table addressBook1
(
firstName varchar(150) NOT NULL PRIMARY KEY ,
lastName varchar(150) NOT NULL,
address varchar(150) NOT NULL,
city varchar(150) NOT NULL,
state varchar(150) NOT NULL,
zip varchar(6) NOT NULL,
phone varchar(12) NOT NULL,
email varchar(150) NOT NULL
);
#UC3 insert records to address book table
insert into addressBook1(firstName,lastName,address,city,state,zip,phone,email) values
("Bill","Smith","Mulund","Mumbai","Maharastra","567899","9879876509","bill@gmail.com");
insert into addressBook1(firstName,lastName,address,city,state,zip,phone,email) values
("Sanjana","Rao","Manipal","Udupi","Karnataka","123456","9876543210","sanjana@gmail.com"),
("Ram","Evans","Guindy","Chennai","Tamil Nadu","234567","9835642354","ram@gmail.com");
describe addressBook1;
Select * from addressBook1;
#UC4 updating contacts based on name
update addressBook1 set address="Varnasi",city="Varnasi",state="UP",zip="567895",phone="980657890",email="billsmith@gmail.com"
where firstName="Bill" and lastName="Smith";
Select * from addressBook1;
#UC5 Delete a person based on name
delete from addressBook1 where firstName="Ram" and lastName="Evans";
select * from addressBook1;
#UC6 select person belonging to city
select * from addressBook1 where city="Manipal";
#UC6 select person belonging to state
select * from addressBook1 where state="Karnataka";
#UC7 retrieve count of contacts based on city
select count(*) from addressBook1 group by city;
#UC7 retrieve count of contacts based on state
select count(*) from addressBook1 group by state;
#UC8 sort person name given city
Select * from addressBook1 where city ="Manipal" order by firstName;
#UC9 alter address book table
alter table addressBook1 add(newName varchar(150), relation varchar(150));
describe addressBook1;
UPDATE addressBook1 SET newName="Bill", relation="Family" where firstName="Bill"; 
UPDATE addressBook1 SET newName="Sanjana", relation="Friend" where firstName="Sanjana"; 
insert into addressBook1(firstName,lastName,address,city,state,zip,phone,email,newName,relation) values
("Ram","Evans","Guindy","Chennai","Tamil Nadu","234567","9835642354","ram@gmail.com","Ram","Colleague");
select * from addressBook1;
ALTER TABLE addressBook1
DROP COLUMN name;
ALTER TABLE addressBook1
DROP COLUMN type;
select * from addressBook1;
#UC10 count contacts by relation
Select count(*) from addressBook1 group by relation;







