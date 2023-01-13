-- create database Homework_6;
-- use Homework_6;

-- Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '



-- Выведите только четные числа от 1 до 10 включительно.
-- Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)
-- select @counter:= 10;
-- select if (@step=1,"True","False");
delimiter ^^ -- create new delimeter to separate procedure
create procedure EvenNumbers()
begin
select
declare @counter int;
declare @step int;
set @counter:= 10;
set @step:= 1;
 declare i int default @counter;
    while i>0 do
       Select if (i%2=0,@counter,Null);
       set i=i-@step;
    end while;
end;
^^
delimiter ; -- return back to original delimiter
