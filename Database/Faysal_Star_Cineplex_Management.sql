create database Star_Cineplex_Management;
use Star_Cineplex_Management;
CREATE TABLE AUTHORITY 
( 
A_Id int  NOT NULL, 
A_Name VARCHAR(30) NOT NULL,
A_Address VARCHAR(20) NOT NULL, 
A_Date_Of_Birth DATE NOT NULL, 
A_Salary int NOT NULL,
PRIMARY KEY ( A_Id)
);

/** Manager INformation **/
CREATE TABLE MA_INFO (
    M_Id INT NOT NULL,
    M_Name VARCHAR(30) NOT NULL,
    M_Address VARCHAR(20) NOT NULL,
    M_Email VARCHAR(15) NOT NULL,
    M_Date_Of_Birth DATE NOT NULL,
    M_Salary INT NOT NULL,
    A_Id INT NOT NULL,
    PRIMARY KEY (M_Id),
    FOREIGN KEY (A_Id)
        REFERENCES AUTHORITY (A_Id)
);

CREATE TABLE EMPLOYEE
(
E_Id int  NOT NULL, 
E_Phone int NOT NULL,
primary key (E_Id)
);

accounts



