use AdventureWorks
--find the top 3 highest sales quota 
select top 3 SalesQuota, BusinessEntityID from Sales.SalesPersonQuotaHistory
order by SalesQuota DESC

GO
SELECT BusinessEntityID, SalesQuota FROM Sales.SalesPerson

GO
Select SalesQuota from Sales.SalesPersonQuotaHistory order by SalesQuota DESC
--find duplicates records in this table
select productID, OrderQty, count(productID) AS ProductCount from Purchasing.PurchaseOrderDetail
GROUP BY productID, OrderQty
HAVING count(ProductID) >1


--find the products that were purchased more than 50 times and less than 100 times
select productID, COUNT(ProductID) as ProductidCount FROM Purchasing.PurchaseOrderDetail
group by productID
HAVING count(ProductID) > 50 AND COUNT(ProductID) < 100
order by count(ProductID) desc

--find the top 3 products that were purchased most and more than 50 times and less than 100 times 

select top 3 productID, COUNT(ProductID) as ProductidCount FROM Purchasing.PurchaseOrderDetail
group by productID
HAVING count(ProductID) > 50 AND COUNT(ProductID) < 100
ORDER BY count(ProductID) desc

--Print every department where the average salary per employee is lower than $50!

select BusinessEntityID, Rate from HumanResources.EmployeePayHistory
group by Rate, BusinessEntityID
having avg(round(Rate,0))<50
order by rate DESC









