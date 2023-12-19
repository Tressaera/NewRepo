
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/06/2023 20:47:16
-- Generated from EDMX file: C:\Users\ebruy\source\repos\EF_Model_First\EF_Model_First\MFirstModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BilgeDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_YetkilerKullanicilar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kullanicilar] DROP CONSTRAINT [FK_YetkilerKullanicilar];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Kullanicilar]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kullanicilar];
GO
IF OBJECT_ID(N'[dbo].[Yetkiler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Yetkiler];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Kullanicilar'
CREATE TABLE [dbo].[Kullanicilar] (
    [KullaniciID] int IDENTITY(1,1) NOT NULL,
    [Adi] nvarchar(max)  NOT NULL,
    [Soyadi] nvarchar(max)  NOT NULL,
    [KullaniciAdi] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Sifre] nvarchar(max)  NOT NULL,
    [YetkiID] int  NOT NULL
);
GO

-- Creating table 'Yetkiler'
CREATE TABLE [dbo].[Yetkiler] (
    [YetkiID] int IDENTITY(1,1) NOT NULL,
    [YetkiAd] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [KullaniciID] in table 'Kullanicilar'
ALTER TABLE [dbo].[Kullanicilar]
ADD CONSTRAINT [PK_Kullanicilar]
    PRIMARY KEY CLUSTERED ([KullaniciID] ASC);
GO

-- Creating primary key on [YetkiID] in table 'Yetkiler'
ALTER TABLE [dbo].[Yetkiler]
ADD CONSTRAINT [PK_Yetkiler]
    PRIMARY KEY CLUSTERED ([YetkiID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [YetkiID] in table 'Kullanicilar'
ALTER TABLE [dbo].[Kullanicilar]
ADD CONSTRAINT [FK_YetkilerKullanicilar]
    FOREIGN KEY ([YetkiID])
    REFERENCES [dbo].[Yetkiler]
        ([YetkiID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_YetkilerKullanicilar'
CREATE INDEX [IX_FK_YetkilerKullanicilar]
ON [dbo].[Kullanicilar]
    ([YetkiID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------