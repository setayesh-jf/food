
create table student(
username nvarchar(255) not null,
password nvarchar(255) not null,
nationalId int unique not null,
studentId int primary key auto_increment,
major nvarchar(255) not null,
isTA boolean default false
);


create table master(
username nvarchar(255) not null,
password nvarchar(255) not null,
nationalId int unique not null,
personnelNumber int primary key auto_increment,
department nvarchar(255) not null,
academicRank nvarchar(255) not null
);






create table food(
foodId int primary key auto_increment,
foodName nvarchar(255) not null
);



create table menu(
menuId int primary key auto_increment,
foodId int not null,
day date not null,
price decimal(10,2) not null ,
foreign key (foodId) references food(foodId)
);



create table orders(
orderId int primary key auto_increment,
studentId int,
personnelNumber int,
menuId int not null,
amount int not null default 1,
orderDate date not null,
totalPrice decimal(10,2)  not null,
foreign key (studentId) references student(studentId),
foreign key (personnelNumber) references master(personnelNumber),
foreign key (menuId) references menu(menuId),
check ( studentId is not null or personnelNumber is not null)
);


