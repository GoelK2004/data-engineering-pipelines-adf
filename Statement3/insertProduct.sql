-- Create Product table (if not exists)
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    CreatedDate DATE
);

-- Insert sample data
INSERT INTO Product (ProductID, ProductName, Category, Price, CreatedDate) VALUES
(1, 'Notebook', 'Stationery', 3.50, '2025-07-01'),
(55, 'Pen', 'Stationery', 1.20, '2025-07-02'),
(101, 'Laptop', 'Electronics', 800.00, '2025-07-03'),
(102, 'Smartphone', 'Electronics', 600.00, '2025-07-04'),
(205, 'Office Chair', 'Furniture', 120.00, '2025-07-05'),
(307, 'Standing Desk', 'Furniture', 300.00, '2025-07-06');
