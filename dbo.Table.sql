CREATE TABLE [dbo].[cart]
(
	[Id]                INT        IDENTITY (1, 1) NOT NULL,
    [ProductName]       NCHAR (20) NOT NULL,
    [Price]             INT        NOT NULL,
    
    [bid] INT NOT NULL, 
    PRIMARY KEY CLUSTERED ([Id] ASC), 
    CONSTRAINT [FK_cart_ToTable] FOREIGN KEY ([bid]) REFERENCES [dbo].[Buyer]([Id]), 
    
)
