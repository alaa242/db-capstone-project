select Customers.CustomerID,Customers.FullName, Orders.OrderID as OrderID, Orders.TotalCost as Cost, Menu.ItemName as CourseName, Menu.ItemType as StarterName
from Customers inner join Orders on Customers.CustomerID = Orders.CustomerID 
inner join Menu on Orders.ItemID = Menu.ItemID
where Orders.TotalCost > 150
order by Orders.TotalCost ;