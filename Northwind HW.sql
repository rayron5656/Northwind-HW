--QST 1
select p.ProductName,p.QuantityPerUnit,p.UnitsInStock 
from Products P

--QST 2
select p.ProductID,p.ProductName
from Products P


--QST 3
select p.ProductID,p.ProductName
from Products P
where p.Discontinued = 0

--QST 4
select * 
from Products P
order by p.UnitPrice desc

--QST 5
select p.ProductID,p.ProductName,p.UnitPrice
from Products P
where p.UnitPrice < 20


--QST 6
select p.ProductID,p.ProductName,p.UnitPrice
from Products P
where p.UnitPrice < 25 and p.UnitPrice > 15

--QST 7
select p.ProductName,p.UnitPrice 
from Products P
where  p.UnitPrice > (select AVG(UnitPrice) from Products)

--QST 8
select top(10) UnitPrice
from Products
order by UnitPrice desc

--QST 9
select COUNT(ProductName)
from Products
group by Discontinued



--QST 10
select p.ProductName,p.UnitsOnOrder,p.UnitsInStock
from Products p
where p.UnitsInStock < p.UnitsOnOrder

SELECT DISTINCT ProductName as Twenty_Most_Expensive_Products, UnitPrice
FROM Products AS a
WHERE 20 >= (SELECT COUNT(DISTINCT UnitPrice)
                    FROM Products AS b
                    WHERE b.UnitPrice >= a.UnitPrice)
ORDER BY UnitPrice desc;