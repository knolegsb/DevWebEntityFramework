
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/24/2016 02:23:38
-- Generated from EDMX file: c:\users\sean\documents\visual studio 2015\Projects\DevWebEntityFramework\DevWebEntityFramework\NorthwindModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Northwind];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Products_Categories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [CategoryID] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(15)  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [Picture] varbinary(max)  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [ProductID] int IDENTITY(1,1) NOT NULL,
    [ProductName] nvarchar(40)  NOT NULL,
    [SupplierID] int  NULL,
    [CategoryID] int  NULL,
    [QuantityPerUnit] nvarchar(20)  NULL,
    [UnitPrice] decimal(19,4)  NULL,
    [UnitsInStock] smallint  NULL,
    [UnitsOnOrder] smallint  NULL,
    [ReorderLevel] smallint  NULL,
    [Discontinued] bit  NOT NULL
);
GO

-- Creating table 'Rooms'
CREATE TABLE [dbo].[Rooms] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Talks'
CREATE TABLE [dbo].[Talks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [When] datetime  NOT NULL,
    [RoomId] int  NOT NULL,
    [RoomId1] int  NOT NULL
);
GO

-- Creating table 'Speakers'
CREATE TABLE [dbo].[Speakers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TalkSpeaker'
CREATE TABLE [dbo].[TalkSpeaker] (
    [Talks_Id] int  NOT NULL,
    [Speakers_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [CategoryID] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([CategoryID] ASC);
GO

-- Creating primary key on [ProductID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([ProductID] ASC);
GO

-- Creating primary key on [Id] in table 'Rooms'
ALTER TABLE [dbo].[Rooms]
ADD CONSTRAINT [PK_Rooms]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Talks'
ALTER TABLE [dbo].[Talks]
ADD CONSTRAINT [PK_Talks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Speakers'
ALTER TABLE [dbo].[Speakers]
ADD CONSTRAINT [PK_Speakers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Talks_Id], [Speakers_Id] in table 'TalkSpeaker'
ALTER TABLE [dbo].[TalkSpeaker]
ADD CONSTRAINT [PK_TalkSpeaker]
    PRIMARY KEY CLUSTERED ([Talks_Id], [Speakers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CategoryID] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Products_Categories]
    FOREIGN KEY ([CategoryID])
    REFERENCES [dbo].[Categories]
        ([CategoryID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Products_Categories'
CREATE INDEX [IX_FK_Products_Categories]
ON [dbo].[Products]
    ([CategoryID]);
GO

-- Creating foreign key on [RoomId1] in table 'Talks'
ALTER TABLE [dbo].[Talks]
ADD CONSTRAINT [FK_RoomTalk]
    FOREIGN KEY ([RoomId1])
    REFERENCES [dbo].[Rooms]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomTalk'
CREATE INDEX [IX_FK_RoomTalk]
ON [dbo].[Talks]
    ([RoomId1]);
GO

-- Creating foreign key on [Talks_Id] in table 'TalkSpeaker'
ALTER TABLE [dbo].[TalkSpeaker]
ADD CONSTRAINT [FK_TalkSpeaker_Talk]
    FOREIGN KEY ([Talks_Id])
    REFERENCES [dbo].[Talks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Speakers_Id] in table 'TalkSpeaker'
ALTER TABLE [dbo].[TalkSpeaker]
ADD CONSTRAINT [FK_TalkSpeaker_Speaker]
    FOREIGN KEY ([Speakers_Id])
    REFERENCES [dbo].[Speakers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TalkSpeaker_Speaker'
CREATE INDEX [IX_FK_TalkSpeaker_Speaker]
ON [dbo].[TalkSpeaker]
    ([Speakers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------