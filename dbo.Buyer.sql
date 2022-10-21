CREATE TABLE [dbo].[Buyer] (
    [Id]                  INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]           NCHAR (10)    NOT NULL,
    [LastName]            NCHAR (10)    NOT NULL,
    [Email]               NCHAR (25)    NOT NULL,
    [MobileNo]            NVARCHAR (50) NOT NULL,
    [ZipCode]             INT           NOT NULL,
    [Contry]              NCHAR (10)    NOT NULL,
    [PrefferedProduction] NCHAR (10)    NOT NULL,
    [Password]            NCHAR (10)    NOT NULL,
    [ConfirmPassword]     NCHAR (10)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

