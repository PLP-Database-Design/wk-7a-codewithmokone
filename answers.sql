-- Question 1
-- Using String_split
SELECT
    orderID,
    CustomerName,
    LTRIM(RTRIM(value)) as Product
FROM
    ProductDetail
CROSS APPLY
    STRING_SPLIT(Products, ',');

-- Question 2
-- Table 1: Orders (OrderID, CustomerName)
SELECT DISTINCT orderID, CustomerName
INTO Orders
FROM OrderDetails;

-- Table 2: OrderItems (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity
INTO OrderItems
FROM OrderDetails