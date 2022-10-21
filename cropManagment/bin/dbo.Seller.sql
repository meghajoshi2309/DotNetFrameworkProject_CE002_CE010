CREATE TABLE [dbo].[Seller] (
    [Id]              INT          NOT NULL PRIMARY KEY IDENTITY,
    [FirstName]       NCHAR (10)   NOT NULL,
    [LastName]        NCHAR (10)   NOT NULL,
    [Email]           NCHAR (20)   NOT NULL,
    [MobileNo]        DECIMAL NOT NULL,
    [Company]         NCHAR (10)   NOT NULL,
    [CompanyActivity] NCHAR (10)   NOT NULL,
    [ZipCode]         INT          NOT NULL,
    [Contry]          NCHAR (10)   NOT NULL,
    [Password]        NCHAR (10)   NOT NULL,
    [ConfirmPassword] NCHAR (10)   NOT NULL,
    
);

