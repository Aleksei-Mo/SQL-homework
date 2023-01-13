create database StaffDB;
use StaffDB;
create table Staff_list
(
id int auto_increment primary key,
employee_name varchar(15),
employee_sursname varchar(15),
specialty varchar (15),
seniority int,
salary int,
age int
);
insert Staff_list (employee_name,employee_sursname,specialty,seniority,salary,age)
values ("Вася","Васькин","Начальник",40,100000,60),
("Петя","Петькин","Начальник",8,70000,30),
("Катя","Каткина","Инженер",2,70000,25),
("Саша","Сашкин","Инженер",12,50000,35),
("Иван","Иванщв","Рабочий",40,30000,59),
("Петр","Петров","Рабочий",20,25000,40),
("Сидор","сидоров","Рабочий",10,20000,35),
("Антон","Антонов","Рабочий",8,19000,28),
("Юра","Юркин","Рабочий",5,15000,25),
("Максим","Воронин","Рабочий",2,11000,22),
("Юра","Галкин","Рабочий",3,12000,24),
("Люся","Люськина","Уборщица",10,10000,49);

-- Отсортируйте поле “сумма” в порядке убывания и возрастания
select * from Staff_list order by salary; -- по возрастанию
select * from Staff_list order by salary desc; -- по убыванию

-- Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с наибольшей заработной платой
select * from Staff_list order by salary limit 7,5;

-- Выполните группировку всех сотрудников по специальности “рабочий”, зарплата которых превышает 20000
select * from Staff_list where specialty="Рабочий" and salary>20000;
-- select count(*) from Staff_list;

-- Напишите запрос, который сосчитал бы все суммы заказов, выполненных 1 января 2016 года.
create table Order_list
(
id int auto_increment primary key,
order_date varchar(12),
customer_name varchar(15),
customer_surname  varchar(15),
city varchar(15),
order_price int,
rating decimal
);
insert Order_list (order_date,customer_name,customer_surname,city,order_price,rating)
values ("2016/01/01","Гена","Васькин","Москва",4000,5),
("2016/01/01","Петя","Петькин",NULL,14000,4.8),
("2016/01/01","Катя","Каткина","Питер",1000,5),
("2016/08/01","Катя","Каткина","Питер",3000,3.7),
("2016/10/11","Петя","Петькин",NULL,11000,5),
("2017/10/11","Петр","Петров","Самара",123000,4.5),
("2018/03/17","Петр","Петров","Самара",45000,4.5),
("2016/09/11","Гоша","Антонов",NULL,7000,2.5),
("2017/10/13","Юра","Юркин","Питер",1000,5),
("2017/02/21","Максим","Воронин","Воронеж",500,5),
("2018/09/14","Юра","Галкин","Самара",23000,4.7),
("2016/02/18","Люся","Люськина","Питер",1000,5);

-- Напишите запрос, который сосчитал бы все суммы заказов, выполненных 1 января 2016 года.
select sum(order_price) as Total_sum from Order_list 
where order_date = "2016/01/01";

-- Напишите запрос, который сосчитал бы число различных, отличных от NULL значений поля city в таблице заказчиков.
select  city, count(city) as city_num from Order_list 
where not (city is NULL)
group by city;

-- Напишите запрос, который выбрал бы наименьшую сумму для каждого заказчика.
select customer_name,customer_surname,MIN(order_price) from Order_list 
group by customer_name,customer_surname;

-- Напишите запрос, который бы выбирал заказчиков чьи имена начинаются с буквы Г. Используется оператор "LIKE".
select order_date,customer_name,customer_surname,city,order_price,rating from Order_list
where customer_name like 'Г%' ;

--  Напишите запрос, который выбрал бы высший рейтинг в каждом городе.
select city, max(rating) from Order_list 
where not (city is null)
group by city;


