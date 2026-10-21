-- Use our database
USE ShopDB; 

START TRANSACTION;

INSERT INTO OrderItems (OrderID, ProductID, Count) 
VALUES (LAST_INSERT_ID(), 1, 1);

UPDATE Products
SET WarehouseAmount = WarehouseAmount - 1
WHERE Name = 'AwersomeProduct';

COMMIT;