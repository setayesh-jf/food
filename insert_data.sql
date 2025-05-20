insert into student (username, password, nationalId , major, isTA)
values ('Raha Etemadi', 'roz444666@@', 0313254689 , 'Computer Science', false);

insert into student (username, password, nationalId, major, isTA)
values ('Farhad Sophani', '11136709@@@fs', 0491667789 ,'Mathematics', true);

insert into master (username, password, nationalId , department, academicRank)
values ('Dr khosravi', '5556669999@@tt', 0213354678 ,'Mathematics', 'Professor');

insert into master (username, password, nationalId, department, academicRank)
values ('Dr seif', 'oooiiiuuu@@@AAA6', 0325050234 ,'Programming', 'Associate Professor');

insert into food (foodName)
values ('Queen pizza');

insert into food (foodName)
values ('Fries');

insert into menu (foodId, day, price)
values (1, '2025-01-20', 500000);

insert into menu (foodId, day, price)
values (2, '2025-01-25', 336000);

insert into orders (studentId, personnelNumber, menuId, amount, orderDate, totalPrice)
values (1, null, 1, 2, '2025-01-20', 500000 * 2);

insert into orders (studentId, personnelNumber, menuId, amount, orderDate, totalPrice)
values (null, 1, 2, 3, '2025-01-25', 336000 * 3);

select * from student;
select * from master;
select * from food;
select * from menu where day = '2025-01-20';
select * from orders;
