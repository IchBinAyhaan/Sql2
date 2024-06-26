CREATE DATABASE LibraryManagement;

USE LibraryManagement;

CREATE TABLE Libraries (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200) NOT NULL
);

INSERT INTO Libraries (Name, Address)
VALUES
    ('Central Library', '123 Main St, City'),
    ('Eastside Library', '456 Elm Ave, Town');

CREATE TABLE Books (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(200) NOT NULL,
    Count INT
);

INSERT INTO Books (Name, Count)
VALUES
    ('Introduction to SQL', 5),
    ('Programming in Python', 3),
    ('Data Structures and Algorithms', 7);

CREATE TABLE Authors (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL
);

INSERT INTO Authors (Name, Surname)
VALUES
    ('Ayhan', 'Qasimli'),
    ('Babakisi', 'Ibrahimov'),
    ('Sadiq', 'Qarayev');

CREATE TABLE Genres (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50) UNIQUE
);

INSERT INTO Genres (Name)
VALUES
    ('Fiction'),
    ('Science Fiction'),
    ('Thriller');

SELECT * FROM Libraries;
SELECT * FROM Books;
SELECT * FROM Authors;
SELECT * FROM Genres;
