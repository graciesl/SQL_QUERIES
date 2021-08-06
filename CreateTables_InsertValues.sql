create table ProductsOnSale
(ProductID INT NOT NULL,
Product_Name VARCHAR(20) NOT NULL,
Category_ID INT NOT NULL,
CONSTRAINT Product_PK PRIMARY KEY (ProductID)
);
INSERT INTO ProductsOnSale
VALUES(1, 'Pear', 50)

--to insert all the records at once in one table

INSERT INTO ProductsOnSale
VALUES(2, 'Banana', 50),
       (3, 'Orange', 50),
       (4, 'Apple', 50),
       (5, 'Bread', 75),
       (6, 'Sliced Ham', 25),
       (7, 'keenex', 20);
select * from ProductsOnSale

--to update/change a recorrd in a table
update ProductsOnSale
set Product_Name = 'Grapefruit'
where Product_Name = 'Apple'

--alter the null constraint from a column
alter table ProductsOnSale
alter column Category_ID int null 

create table Suppliers
(SupplierID INT NOT NULL,
SupplierName varchar(50) NOT NULL,
City CHAR(50),
State CHAR(50),
CONSTRAINT Supplier_PK PRIMARY KEY (SupplierID));

--Insert data into a table
INSERT INTO Suppliers
VALUES (100, 'microsoft', 'Redmond', 'Washington'),
(200,'Google','Mountain View', 'California');


INSERT INTO Suppliers
(SupplierID, SupplierName, City, State)
VALUES
(300, 'Oracle', 'Redwood City', 'California'),
(400, 'Kimberly-Clark', 'Irving', 'Texas'),
(500, 'Tyson Foods', 'Springdale', 'Arkansas'),
(600, 'SC Johnson', 'Racine', 'Wisconsin'),
(700, 'Dole Food Company', 'Westlake Village', 'California'),
(800, 'Flowers Foods', 'Thomasville', 'Georgia'),
(900, 'Electronic Arts', 'Redwood City', 'California');

select * from Suppliers


