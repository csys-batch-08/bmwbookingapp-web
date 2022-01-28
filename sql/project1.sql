
----user detail
create sequence sequ
start with 1
increment by 1
minvalue 1;
commit;
create table user_details(
first_name varchar2(30) not null ,
cpassword varchar2(30) not null ,s
Email varchar2(30)not null unique ,phone number unique);
alter table user_details add user_id int default sequ.nextval;
alter table user_details add usertype varchar2(30) default 'user';
alter table user_details add constraint primes primary key(user_id);
select * from user_details;

alter table user_details add userwallet long default 50000000;
desc user_details;
desc customer_detail;
select * from user_details;
delete from user_details where user_id=90;
alter table 
--product detail
select * from Car_details;
create table Car_details( car_id varchar2(30) not null primary key,
car_name varchar2(30) not null,fueltype varchar2(30) not null,cartype varchar2(30) not null,car_model varchar2(30) not null,price number(30) not null);
drop table Car_details;
alter table Car_details add images varchar2(500);
select * from Car_details;
commit;
update  Car_details set images='https://stimg.cardekho.com/images/carexteriorimages/630x420/BMW/BMW-X5/6455/1558002027816/front-left-side-47.jpg?tr=w-456' ;
create table price_detail(
car_id varchar2(30) not null,
car_name varchar2(30)not null,
Exshowroom_price varchar2(100) not null,onroad_price number not null,
road_tax varchar2(100)not null,
insurance number not null);
alter table price_detail add constraint foreign2 foreign key(car_id) references car_details(car_id);
alter table price_detail drop column onroad_price;
alter table price_detail add onroad_price number default 0;
alter table price_detail MODIFY Exshowroom_price number;
alter table price_detail modify road_tax number;
select * from price_detail;

create table order_details(order_id number generated always as identity start with 1 primary key,user_id number,car_id varchar2(30),price number); 
alter table order_details add constraint foreign1 foreign key(user_id) references user_details(user_id);
alter table order_details add constraint foreign4 foreign key(car_id) references car_details(car_id);
alter table order_details add Expecteddate date;
drop table order_details;
desc order_details;
drop table product_details;
select * from user_details;
create table Car_Orders(order_id number, car_id varchar2(30),car_name varchar2(30),Expecteddate Date);
alter table Car_Orders add status varchar2(30) default 'booked';
alter table Car_Orders add constraint foreign5 foreign key(order_id) references order_details(order_id);

insert into user_details (first_name,cpassword,email,phone,usertype)values('mariraja','mari@30091','mari@gmail.com',6381830625,'admin');
insert into user_details (first_name,cpassword,email,phone,usertype) values('mariraja','Mariraja@3009','mariraja@gmail.com',9688942242,'admin');
commit;
--insert into car_details values('bmw101','BMW X1 Series','petrol','shenon','bmw11','100000');
select * from product details;
select * from user_details;
select * from car_details;  
update price_detail set onroad_price=7500000 where car_id='bmw 103';
select * from order_details;
select * from price_detail;
select * from Car_orders;  
desc Car_orders;
--drop table Car_orders;
--truncate table order_details;
commit;
select usertype from User_details where email='prithiv@gmail.com' and cpassword='Prithiv@3009';

select * from user_details;
--commit;
create table Admin(Email varchar(30),password varchar(30));
Select * from user_details where Email='mani@gmail.com' and cpassword='Mani@3009';
select * from Car_details;
Select usertype from user_details where Email='vel@gmail.com' and cpassword='Vel@3009';
Select usertype from user_details where Email='vel@gmail.com' and cpassword='Vel@3009';
update car_details set fueltype='petrol',cartype='suv',car_model='x11 series',price='120000' where Car_id='bmw111'; 

select usertype from user_details where email ='mari@gmail.com'  and cpassword = 'mari@30091';

commit;
select * from car_details;
update car_details
set viewlink = 'bmw101'
where car_id in 'bmw101';

Select viewlink from CarProduct where car_id=