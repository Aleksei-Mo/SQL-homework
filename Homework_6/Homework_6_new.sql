-- use homework_6;
-- Выведите только четные числа от 1 до 10 включительно.

create table Num_list
(
id int auto_increment primary key,
numbers int
);

insert Num_list (numbers)
values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

delimiter !
create procedure evenNum()

select * from Num_list

!

delimiter ;

call evenNum();