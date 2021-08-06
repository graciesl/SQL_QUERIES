--These are some queries using adventure works database 
select * from Person.Person

--get the person's first name with the first letter of the name in () added in the end
select FirstName + '('+ LEFT(FirstName, 1)+')', BusinessEntityID from Person.Person
ORDER BY BusinessEntityID ASC

select * from HumanResources.Employee

-- get text and the count of all the job titles 

SELECT 'There are a total of'+' '+ CAST(count(JobTitle)AS VARCHAR(10))+ ' ' + JobTitle from HumanResources.Employee
group by JobTitle

SELECT * FROM Production.ProductCategory
select * from Person.CountryRegion

select * from Person.Person

--trying to convert row to columns, for this a temp table was created with the specific column names needed, from the source table
select [0], [1], [2]
FROM
(select ROW_NUMBER() OVER (PARTITION BY EmailPromotion order by FirstName) [rownumber], * from Person.Person)
as TempTable
PIVOT
MAX(FirstName) for EmailPromotion in ([0], [1], [2])
) AS PIVOTTABLE

create table ##TempPerson
(FirstName varchar(20) not null,
EmailPromotion int not null)

insert into ##TempPerson
select FirstName, EmailPromotion from Person.Person

ALTER TABLE ##TempPerson
ALTER COLUMN FirstName nvarchar(50) not NULL

insert into ##TempPerson
select FirstName, EmailPromotion from Person.Person

select * from ##TempPerson

--final result of convert rows into columns, in this case the email promotion is in rows and the names under each email promotion are in columns

select [0], [1], [2]
FROM
(select ROW_NUMBER() OVER (PARTITION BY EmailPromotion order by FirstName asc) [RowNumber], * from ##TempPerson)
as TempTable
PIVOT
(MAX (FirstName) for EmailPromotion in ([0], [1], [2])) AS PIVOTTABLE

--selects the products by rating and provides a description for each 

select * from Production.ProductReview 

select productID, ReviewerName, RatingResult=
case 
when rating = 5 then 'Excelent' 
When rating = 4 then 'Very Good'
when rating = 2 then 'Good'
END
FROM Production.ProductReview

--THIS IS A QUERY USING HACKER RANK DATA, THIS SELECTS THE ID'S THAT ARE WITH THE TYPE OF NODES: ROOT, INNER AND LEAF FROM BST TABLE
select N, Description=
CASE
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT P FROM BST) THEN 'Inner'
        ELSE 'Leaf'
END
from BST
ORDER BY N ASC



















