select Menu.ItemName as MenuName from Menu 
where Menu.ItemID = any (
select Orders.ItemID from Orders
where Orders.Quantity > 2) ;