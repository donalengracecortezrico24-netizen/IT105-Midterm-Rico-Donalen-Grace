-- =====================================================
-- DATABASE: Inventory System
-- Author: Rico, Donalen
-- Course: IT 105 - Information Management I
-- Description: Complete database schema for Inventory System
-- =====================================================

-- =====================================================
-- 1. CREATE AND USE DATABASE
-- =====================================================

CREATE DATABASE InventorySystem;
USE InventorySystem;

-- =====================================================
-- 2. CREATE TABLES (6 tables total)
-- =====================================================

-- Table 1: Categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50) NOT NULL UNIQUE,
    Description TEXT,
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table 2: Suppliers
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    SupplierName VARCHAR(100) NOT NULL,
    ContactPerson VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address TEXT,
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table 3: Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INT,
    SupplierID INT,
    QuantityInStock INT DEFAULT 0,
    UnitPrice DECIMAL(10,2) NOT NULL,
    ReorderLevel INT DEFAULT 10,
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID) ON DELETE SET NULL,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID) ON DELETE SET NULL
);

-- Table 4: Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(20),
    Address TEXT,
    RegistrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table 5: Sales
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    SaleDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10,2) DEFAULT 0.00,
    PaymentMethod ENUM('Cash', 'Credit Card', 'Debit Card', 'Online') DEFAULT 'Cash',
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE SET NULL
);

-- Table 6: SaleItems
CREATE TABLE SaleItems (
    SaleItemID INT PRIMARY KEY AUTO_INCREMENT,
    SaleID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) ON DELETE RESTRICT
);

-- =====================================================
-- 3. CREATE INDEXES FOR PERFORMANCE
-- =====================================================

CREATE INDEX idx_product_name ON Products(ProductName);
CREATE INDEX idx_customer_email ON Customers(Email);
CREATE INDEX idx_sale_date ON Sales(SaleDate);
CREATE INDEX idx_supplier_name ON Suppliers(SupplierName);

-- =====================================================
-- 4. VERIFICATION: Show all tables
-- =====================================================

SHOW TABLES;