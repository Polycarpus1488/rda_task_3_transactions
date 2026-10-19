-- Use our database
USE ShopDB; 

INSERT INTO Order (CustomerID, Date)
VALUES (1, '2024-06-01');

START TRANSACTION; 

INSERT INTO OrderItems (OrderID, ProductID, Count) 
VALUES (1, 1, 1);

UPDATE Products
SET WarehouseAmount = WarehouseAmount - 1
WHERE Name = 'AwersomeProduct';

COMMIT;