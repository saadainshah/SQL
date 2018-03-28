--SELECT sysdate FROM dual;
--SELECT * FROM all_tables;
CREATE TABLE Departments  
(  
EmployeeID number(10),  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255)  
); 

CREATE TABLE Employee  
(  
EmployeeID number(10),  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255)  
); 

RENAME Departments TO Division;


INSERT INTO Employee VALUES('1', 'Saadain', 'Taimuri', 'saada@hotmail', 'evenside', 'missi');
INSERT INTO Employee VALUES('2', 'Saadain', 'Taimuri', 'saada@hotmail', 'evenside', 'missi');

INSERT ALL
INTO Division VALUES('1', 'Saadain', 'Taimuri', 'saada@hotmail', 'evenside', 'missi')
INTO Division VALUES('2', 'Saadain', 'Taimuri', 'saada@hotmail', 'evenside', 'missi')
SELECT 1 FROM DUAL;

CREATE TABLE Department(
EmployeeID number(10),  
FirstName varchar(255),  
LastName varchar(255),  
Email varchar(255),  
AddressLine varchar(255),  
City varchar(255) 
);
INSERT INTO Department SELECT * FROM Division;

CREATE GLOBAL TEMPORARY TABLE temp_table(  
User_id NUMBER(10),  
Username VARCHAR(50),  
User_address VARCHAR (150))
ON COMMIT DELETE ROWS;

INSERT ALL
INTO temp_table VALUES(123, 'saadain', 'oddcrescent')
SELECT 1 FROM DUAL;


--TRUNCATE TABLE Division;

--DELETE FROM Division;

--DESC EMPLOYEE;
--DROP TABLE Departments;