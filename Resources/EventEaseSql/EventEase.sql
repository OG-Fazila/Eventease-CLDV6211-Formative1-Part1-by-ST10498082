CREATE DATABASE EventEase;

USE EventEase;

-- Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    Full_Name VARCHAR(100) NOT NULL,
    EmployeeType VARCHAR(50),
    WageRate DECIMAL(10,2)
);

-- Booking table
CREATE TABLE Booking (
    BookingID INT PRIMARY KEY IDENTITY(1,1),
    ContactInfo VARCHAR(255),
    B_Date DATE NOT NULL,
    B_Time TIME NOT NULL,
    B_Name VARCHAR(100)
);

-- Venue table
CREATE TABLE Venue (
    VenueID INT PRIMARY KEY IDENTITY(1,1),
    v_Address VARCHAR(255) NOT NULL,
    Capacity INT NOT NULL
);

-- Event table
CREATE TABLE Event (
    EventID INT PRIMARY KEY IDENTITY(1,1),
    E_Date DATE NOT NULL,
    E_Time TIME NOT NULL,
    E_Description VARCHAR(255),
    VenueID INT,
    FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
);

-- EventEaser (dashboard entity)
CREATE TABLE EventEaser (
    EventEaseID INT PRIMARY KEY IDENTITY(1,1),
    BookingID INT,
    VenueID INT,
    NumOfEmployees INT,
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID),
    FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
);
