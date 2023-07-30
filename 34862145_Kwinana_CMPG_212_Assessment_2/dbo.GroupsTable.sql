CREATE TABLE [dbo].[Groups] (
    [Id]      INT           NOT NULL,
    [Surname] NVARCHAR (50) NULL,
    [Email]   NVARCHAR (50) NULL,
    [Campus]  NVARCHAR (50) NULL,
    [Group]   NVARCHAR(50)    NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

