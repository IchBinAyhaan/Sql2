CREATE DATABASE DrugstoreApp

USE DrugstoreApp;

CREATE TABLE Owners (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL
);
INSERT INTO Owners (Id, Name, Surname)
VALUES
    (1, 'Ayhan', 'Qasimli'),
    (2, 'Oktay', 'Babayev');
CREATE TABLE Drugstores (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200) NOT NULL,
    ContactNumber NVARCHAR(20),
    CreationDate DATE,
    OwnerId INT,
);

INSERT INTO Drugstores (Id, Name, Address, ContactNumber, CreationDate, OwnerId)
VALUES
    (1, 'Healthy Pharmacy', '123 Main Street', '+994555123456', '2024-01-01', 1),
    (2, 'Wellness Pharmacy', '456 Elm Avenue', '+994555987654', '2024-02-15', 2);

CREATE TABLE Druggists (
    Id INT PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    BirthDate DATE,
    Experience INT,
    DrugstoreId INT,
);

INSERT INTO Druggists (Id, Name, Surname, BirthDate, Experience, DrugstoreId)
VALUES
    (1, 'Kamil', 'Tepeliyev', '1985-07-10', 10, 1),
    (2, 'Qafqaz', 'Agaliyev', '1990-05-20', 8, 2);
CREATE TABLE Drugs (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2),
    Count INT,
    DrugstoreId INT,
  
);
INSERT INTO Drugs (Id, Name, Price, Count, DrugstoreId)
VALUES
    (1, 'Paracetamol', 5.99, 100, 1),
    (2, 'Ibuprofen', 7.50, 80, 2);
SELECT * FROM Owners;
SELECT * FROM Drugstores;
SELECT * FROM Druggists;
SELECT * FROM Drugs;