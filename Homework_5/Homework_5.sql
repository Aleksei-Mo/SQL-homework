create database CarsDB;
use CarsDB;

CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
-- SELECT * FROM cars;

-- Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
create view cheapCars as 
select name,cost from cars
where cost<25000;
select * from cheapCars;

-- Изменить в существующем представлении порог для стоимости: 
-- пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
alter view cheapCars as 
select name,cost from cars
where cost<30000;
select * from cheapCars;

-- Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
create view wagenGroup as 
select name,cost from cars
where name="Audi" or name="Skoda";
select * from wagenGroup;

CREATE TABLE trains
(
	id int auto_increment primary key,
    train_id INT not null,
    station VARCHAR(45),
    station_time time
);

INSERT trains (train_id, station, station_time)
VALUES
(110,"SF","10:00:00"),
(110,"RS","10:54:00"),
(110,"PA","11:02:00"),
(110,"SJ","12:35:00"),
(120,"SF","11:00:00"),
(120,"PA","12:49:00"),
(120,"SJ","13:30:00");

alter table trains add column time_to_next_staion time; -- add a new column
select * from trains ;

select station_time,time_to_next_staion from trains
lead ((station_time)-station_time) over ();