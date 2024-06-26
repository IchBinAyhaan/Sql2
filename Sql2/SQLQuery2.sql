CREATE DATABASE CodeAcademy;

USE CodeAcademy;


CREATE TABLE Groups (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    BeginDate DATE,
    EndDate DATE,
    LessonHours INT
);

INSERT INTO Groups (Name, BeginDate, EndDate, LessonHours)
VALUES
    ('Group1', '2024-07-01', '2024-12-31', 60),
    ('Group2', '2024-08-15', '2025-02-28', 45);

CREATE TABLE GroupTypes (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50) UNIQUE
);

INSERT INTO GroupTypes (Name)
VALUES
    ('Programming'),
    ('Design');

CREATE TABLE Students (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    BirthDate DATE,
    RegistrationDate DATETIME DEFAULT GETDATE(),
    PhoneNumber NVARCHAR(20),
    Email NVARCHAR(100)
);

INSERT INTO Students (Name, Surname, BirthDate, PhoneNumber, Email)
VALUES
    ('John', 'Doe', '2000-05-15', '+994555123456', 'john.doe@example.com'),
    ('Jane', 'Smith', '1998-08-20', '+994555987654', 'jane.smith@example.com');

CREATE TABLE Topics (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) UNIQUE,
    LessonHours INT
);

INSERT INTO Topics (Name, LessonHours)
VALUES
    ('C#', 20),
    ('SQL', 25),
    ('Usability testing', 15);

CREATE TABLE Exercises (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100),
    Grade DECIMAL(5, 2),
    Type NVARCHAR(50)
);

INSERT INTO Exercises (Name, Grade, Type)
VALUES
    ('Exercise1', 85.5, 'Homework'),
    ('Exercise2', 70.0, 'Quiz'),
    ('Exercise3', 95.75, 'Final Project');

CREATE TABLE ExerciseTypes (
    Id INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(50) UNIQUE
);

INSERT INTO ExerciseTypes (Name)
VALUES
    ('Homework'),
    ('Quiz'),
    ('Final Project');

SELECT * FROM Groups;
SELECT * FROM GroupTypes;
SELECT * FROM Students;
SELECT * FROM Topics;
SELECT * FROM Exercises;
SELECT * FROM ExerciseTypes;