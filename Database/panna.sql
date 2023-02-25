create database project;
use project;
create table Employee (
ID int not null primary key auto_increment primary key,
Name_ varchar (50) not null,
Address varchar (55) not null,
Designation double not null,
Salary double not null,
DOJ date not null,
Absents int not null,
Received_Salary double not null
);

insert into Employee (Name_, Address, Designation, Salary, DOJ, Absents, Received_Salary)
Values ('Panna', 'Dhaka', '1', 55000, 1998-10-05, 3, 52000,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Sheikh', 'savar', '2', 50000, 1995-10-02, 0, 50000,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents)),
('Pinu', 'ashulia', '3', 35000, 1997-05-25, 7, 30000,((Employee.Designation*Employee.Salary)/(30))*(30-Employee.Absents));


create table  Customer (
ID int not null auto_increment,
Name_ varchar (50) not null,
Purchase_Items varchar (50),
Quantity int not null,
Phone_Number varchar (50) not null,
Product_Amount double not null,
Pay_Amount double not null,
Date date,
Remaining_Amount int,
PRIMARY KEY (ID)
);
insert into Customer ( Name, Purchase_Items, Quantity,Phone_Number, Product_Amount,Pay_Amount, Date ,Remaining_Amount)
values ('Panna', '2 Burgers and 5 Breads', 15, '01959981909', 
Customer.Quantity*50,1500,'2011-1-15',Customer.Product_Amount-Customer.Pay_Amount);

insert into Customer ( Name, Purchase_Items, Quantity,Phone_Number, Product_Amount,Pay_Amount, Date ,Remaining_Amount)
values ('Pinu', '3 Burgers and 5 Breads', 25, '0195887015', 
Customer.Quantity*50,1500,'2011-3-15',Customer.Product_Amount-Customer.Pay_Amount),
('Piku', '1 Burgers and 1 Breads', 2, '01958447015', 
Customer.Quantity*50,700,'2021-3-15',Customer.Product_Amount-Customer.Pay_Amount);


create table Purchase (
Serial_No int not null auto_increment,
Maida double,
Sugar double not null,
Salt double not null,
Till double not null,
LPG double not null,
Oil double not null,
Yeast double not null,
Eka double,
Gluten double,
Paking_reel double,
Carton_Box double,
Paking_Shopper double,
Burger_Shopper double,
Baraf double,
sum double,
PRIMARY KEY (Serial_No)
);

Insert Into Purchase (Maida,Sugar,Salt,Till,LPG,Oil,Yeast,Eka,Gluten,Paking_reel,Carton_Box,Paking_Shopper,Burger_Shopper,Baraf,sum)
VALUES (2,3,20,6,1,3,2,2,2,1,2,2,2,2,Purchase.Maida+Purchase.Sugar+Purchase.Salt+Purchase.Till+Purchase.LPG+Purchase.Oil+Purchase.Yeast+Purchase.Eka+Purchase.Gluten+Purchase.Paking_reel+Purchase.Carton_Box+Purchase.Paking_Shopper+Purchase.Burger_Shopper+Purchase.Baraf),
(1,3,21,7,6,2,2,6,2,2,2,2,2,2,Purchase.Maida+Purchase.Sugar+Purchase.Salt+Purchase.Till+Purchase.LPG+Purchase.Oil+Purchase.Yeast+Purchase.Eka+Purchase.Gluten+Purchase.Paking_reel+Purchase.Carton_Box+Purchase.Paking_Shopper+Purchase.Burger_Shopper+Purchase.Baraf),
(2,5,26,7,6,2,2,2,2,2,2,2,2,2,Purchase.Maida+Purchase.Sugar+Purchase.Salt+Purchase.Till+Purchase.LPG+Purchase.Oil+Purchase.Yeast+Purchase.Eka+Purchase.Gluten+Purchase.Paking_reel+Purchase.Carton_Box+Purchase.Paking_Shopper+Purchase.Burger_Shopper+Purchase.Baraf);

create table Sale_Man (
ID int not null auto_increment ,
Name_ varchar (50) not null,
Address varchar (50) not null,
Purchase_Items varchar (50),
Quantity int not null,
Phone_Number varchar (50) not null,
Sum double not null,
Pay_Amount double not null,
Date date,
Remaining_Amount int,
PRIMARY KEY (ID)
);

Insert into Sale_Man (Name_, Address, Purchase_Items, Quantity, Phone_Number, Sum, Pay_Amount , date, Remaining_Amount)
values ('Sale Man', 'Dhaka', '5 Bugers and 10 Breads', 15, '30251425987',Sale_man.Quantity*50,500,'2008-11-15',Sale_Man.Sum-Sale_Man.Pay_Amount),
('Sale Man', 'Savar', '3 Bugers and 5 Breads', 5, '38251725787',Sale_man.Quantity*50,550,'2008-12-15',Sale_Man.Sum-Sale_Man.Pay_Amount),
('Sale Man', 'Dhanmondi', '1 Bugers and 1 Breads', 7, '30653429987',Sale_man.Quantity*50,300,'2009-11-15',Sale_Man.Sum-Sale_Man.Pay_Amount);


create table Salaries (
Serial_No int auto_increment primary key,
Employee_ID int,
Employee_Name varchar (40),
Employee_Salary double,
foreign key (Employee_ID) references Employee (ID)
);
Insert into Salaries (Employee_ID, Employee_Name, Employee_Salary)
Values (1,(SELECT Name_ FROM Employee Where ID = 1),(SELECT Received_Salary FROM Employee Where ID = 1)),
(2,(SELECT Name_ FROM Employee Where ID = 2),(SELECT Received_Salary FROM Employee Where ID = 2)),
(3,(SELECT Name_ FROM Employee Where ID = 3),(SELECT Received_Salary FROM Employee Where ID = 3));

select * from Salaries;
create table Expenses (
Serial_No int not null auto_increment primary key,
Purchase_Product double,
Renovation double,
Salaries double,
Sum_of_Expenses double,
Date date
);

create table sales (
Serial_No int auto_increment primary key,
sale_man_sales double,
customer_sales double
);


create table profit (
Day int auto_increment primary key,
expenses double,
purchase double,
salary double,
Daily_Profit double
);

create table Menu (
Serial_No int auto_increment primary key,
SaleMan_List varchar (50),
Employee_List varchar (50),
Customer_List varchar (50),
Profit double not null,
Product double not null,
Salaries double not null
);



