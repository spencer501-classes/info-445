USE spease_Lab2
GO

-- Create Tables

CREATE TABLE [PET_TYPE] (
    PetTypeID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    PetTypeName VARCHAR(255) NOT NULL
);

CREATE TABLE [COUNTRY] (
    CountryID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    CountryName VARCHAR(255) NOT NULL
);

CREATE TABLE [TEMPERAMENT] (
    TempID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    TempName VARCHAR(255) NOT NULL
);

CREATE TABLE [GENDER] (
    GenderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    GenderName VARCHAR(255) NOT NULL
);

CREATE TABLE [PET] (
    PetID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    PetName VARCHAR(255) NOT NULL,
    PetTypeID INT FOREIGN KEY REFERENCES [PET_TYPE] (PetTypeID) NOT NULL,
    CountryID INT FOREIGN KEY REFERENCES [COUNTRY] (CountryID) NOT NULL,
    TempID INT FOREIGN KEY REFERENCES [TEMPERAMENT] (TempID) NOT NULL,
    DOB DATE NOT NULL,
    GenderID INT FOREIGN KEY REFERENCES [GENDER] (GenderID) NOT NULL
);