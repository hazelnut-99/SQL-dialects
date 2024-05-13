DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers
(    
    FirstName Nullable(String),
    LastName String, 
    Occupation String,
    Education String,
    Age Nullable(UInt8)
) ENGINE = Memory;
INSERT INTO Customers VALUES  ('Theodore','Diaz','Skilled Manual','Bachelors',28),('Stephanie','Cox','Management abcd defg','Bachelors',33),('Peter','Nara','Skilled Manual','Graduate Degree',26),('Latoya','Shen','Professional','Graduate Degree',25),('Apple','','Skilled Manual','Bachelors',28),(NULL,'why','Professional','Partial College',38);
Select '-- test create table --' ;
Select * from kql(Customers|project FirstName) limit 1;
DROP TABLE IF EXISTS kql_table1;
CREATE TABLE kql_table1 ENGINE = Memory AS select *, now() as new_column From kql(Customers | project LastName | filter LastName=='Diaz');
