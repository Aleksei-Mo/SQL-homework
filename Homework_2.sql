create database electronicShop;
use electronicShop;
create table CellPhones
(
id int auto_increment primary key,
Manufacture varchar(30),
Model varchar(15),
OS_type varchar (15),
CPU_model varchar (30),
RAM_value int,
Memory_value int,
amount int,
price int8
);
insert CellPhones (Manufacture,Model,OS_type,CPU_model,RAM_value,Memory_value,amount,price)
values ("Nokia","Nokia 8.2","Android 11","Snap 650",6,64,10,15000),
("Nokia","Nokia 8.2","Android 11","Snap 650",8,128,5,20000),
("Nokia","Nokia 7.2","Android 13","Snap 450",4,64,1,12000),
("Nokia","Nokia 3.2","Android 12","Snap 585",3,64,2,8500),
("Samsung","A15","Android 13","Snap 750",6,128,4,18000),
("Samsung","S30","Android 13","Snap 980",8,128,3,16000),
("Samsung","S50","Android 13","Snap gen 8",8,256,7,35000),
("Honor","Y6","Android 12","Snap 650",6,64,1,7500),
("Honor","H9","Android 13","Snap 650",4,128,1,9630),
("Xiaomi","Note 10","Android 11","Snap 680",6,256,25,19000),
("Xiaomi","Note 13","Android 14","Snap gen 8",8,256,11,45000),
("Xiaomi","Mi 13","Android 14","Snap 650",6,64,1,23000);
select * From CellPhones Where Manufacture="Samsung";
-- truncate table CellPhones;
-- drop table CellPhones

-- Homework 2 --
use electronicShop;
create table Sales
(
id int auto_increment primary key,
Manufacture varchar(30) not null,
Model varchar(15) not null,
amount int,
sale int
);

create table Orders
(
id_order int auto_increment primary key,
order_date varchar(12) not null,
customer_name varchar(25) not null,
order_type varchar(30) not null,
order_amount int,
delivery_type varchar(9),
delivery_address varchar(50)
);

insert Orders (order_date,customer_name,order_type,order_amount,delivery_type,delivery_address)
values ("2022/09/15","Ivanov","smartphone",1,"without",""),
("2022/01/16","Petrov","smartphone",1,"without",""),
("2022/02/05","Sidorov","smartphone",2,"with","Street 1"),
("2022/10/15","Gudarin","smartphone",1,"without",""),
("2022/10/15","Volkov","smartphone",3,"with","Street 110"),
("2022/11/25","Zuev","smartphone",1,"with","Street 56"),
("2022/03/17","Lebedev","smartphone",1,"without",""),
("2022/07/29","Sokolov","smartphone",1,"with","Street 100"),
("2022/12/01","Chan","smartphone",1,"without","");

SELECT *,
CASE
WHEN order_date = "2022/10/15"
THEN 'Demand order'
-- ELSE 
END AS Demand_date_order
FROM Orders;

insert Sales (Manufacture,Model,amount,sale)
values ("Nokia","Nokia 8.2",10,5),
("Honor","Y6",5,5),
("Nokia","Nokia 8.2",105,10),
("Nokia","Nokia 7.2",120,10),
("Samsung","A15",170,10),
("Nokia","Nokia 3.2",500,35),
("Nokia","Nokia 8.2",742,25),
("Xiaomi","Note 10",250,15),
("Xiaomi","Note 13",123,10);

select * From Sales where amount < 100; 
select * From Sales where amount > 100 and amount <300; 
select * From Sales where amount > 300 ; 

