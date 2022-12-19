CREATE DATABASE HRMS ;
USE HRMS;

CREATE TABLE department (
id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE employee (
id INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(25) NOT NULL,
lastName VARCHAR(25) NOT NULL,
mobile VARCHAR(10) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(100) NOT NULL,
dateOfBirth DATE NOT NULL,
address VARCHAR(255) NOT NULL,
salary INT NOT NULL,
hireDate DATE NOT NULL,
departmentID INT NOT NULL,
FOREIGN KEY (departmentID) REFERENCES department (id)
);


CREATE TABLE leaves (
empID INT NOT NULL,
leavefrom DATE NOT NULL,
leavetill DATE NOT NULL,
status VARCHAR(20) NOT NULL DEFAULT 'Pending',
FOREIGN key (empID) REFERENCES employee (id)
);