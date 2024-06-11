-- Create the Watches table
CREATE TABLE Watches (
    WatchID INT PRIMARY KEY,
    BrandID INT,
    Model VARCHAR(100),
    Price DECIMAL(10, 2),
    ManufactureDate DATE,
    FOREIGN KEY (BrandID) REFERENCES Brands(BrandID)
);

-- Create the Brands table
CREATE TABLE Brands (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(100),
    Country VARCHAR(50)
);

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    ContactNumber VARCHAR(15)
);

-- Create the Sales table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    WatchID INT,
    CustomerID INT,
    SaleDate DATE,
    Quantity INT,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (WatchID) REFERENCES Watches(WatchID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create the Maintenance table
CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY,
    WatchID INT,
    ServiceDate DATE,
    ServiceDescription VARCHAR(255),
    Cost DECIMAL(10, 2),
    FOREIGN KEY (WatchID) REFERENCES Watches(WatchID)
);

-- Insert sample data into Brands table
INSERT INTO Brands (BrandID, BrandName, Country) VALUES
(1, 'Rolex', 'Switzerland'),
(2,'Omega', 'Switzerland'),
(3, 'Tag Heuer', 'Switzerland'),
(4, 'Casio', 'Japan'),
(5, 'Seiko', 'Japan'),
(6, 'Tissot', 'Switzerland'),
(7, 'Breitling', 'Switzerland'),
(8,'Hamilton','USA'),
(9, 'Citizen', 'Japan'),
(10, 'Longines', 'Switzerland');


-- Insert sample data into Watches table
INSERT INTO Watches (WatchID, BrandID, Model, Price, ManufactureDate) VALUES
(1, 1, 'Submariner', 7500.00, '2022-01-15'),
(2, 2, 'Speedmaster', 5500.00, '2022-03-18'),
(3, 3, 'Prospex', 1200.00, '2022-05-25'),
(4, 4, 'G-Shock', 150.00, '2022-07-12'),
(5, 5, 'Carrera', 5000.00, '2022-09-20');

-- Insert sample data into Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, ContactNumber) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '0987654321'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '2345678901'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', '3456789012'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', '4567890123');

-- Insert sample data into Sales table
INSERT INTO Sales (SaleID, WatchID, CustomerID, SaleDate, Quantity, TotalPrice) VALUES
(1, 1, 1, '2023-01-15', 1, 7500
