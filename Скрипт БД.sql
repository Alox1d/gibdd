USE [master]
GO
/****** Object:  Database [GIBDD7]    Script Date: 24.12.2020 22:47:11 ******/
CREATE DATABASE [GIBDD7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GIBDD7', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GIBDD7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GIBDD7_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GIBDD7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [GIBDD7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GIBDD7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GIBDD7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GIBDD7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GIBDD7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GIBDD7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GIBDD7] SET ARITHABORT OFF 
GO
ALTER DATABASE [GIBDD7] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GIBDD7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GIBDD7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GIBDD7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GIBDD7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GIBDD7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GIBDD7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GIBDD7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GIBDD7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GIBDD7] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GIBDD7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GIBDD7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GIBDD7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GIBDD7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GIBDD7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GIBDD7] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GIBDD7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GIBDD7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GIBDD7] SET  MULTI_USER 
GO
ALTER DATABASE [GIBDD7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GIBDD7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GIBDD7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GIBDD7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GIBDD7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GIBDD7] SET QUERY_STORE = OFF
GO
USE [GIBDD7]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArticleOffenses]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleOffenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Penalty] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ArticleOffenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarDrivers]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarDrivers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsCarOwner] [bit] NOT NULL,
	[FIO] [nvarchar](max) NULL,
	[Vehicle_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CarDrivers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarOwners]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarOwners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](max) NULL,
	[PassportData] [bigint] NOT NULL,
	[DriverLicense_Id] [int] NULL,
 CONSTRAINT [PK_dbo.CarOwners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryDriverLicenses]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryDriverLicenses](
	[Category_Id] [int] NOT NULL,
	[DriverLicense_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CategoryDriverLicenses] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC,
	[DriverLicense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverLicenses]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverLicenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Number] [bigint] NOT NULL,
	[IsInvalid] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.DriverLicenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Models] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offenses]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[CarDriver_Id] [int] NULL,
	[SumPenalty] [float] NOT NULL,
 CONSTRAINT [PK_dbo.Offenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakeStrokes]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakeStrokes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TakeDate] [datetime] NOT NULL,
	[ReturnDate] [datetime] NOT NULL,
	[DriverLicense_Id] [int] NULL,
 CONSTRAINT [PK_dbo.TakeStrokes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleOffenses]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleOffenses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Penalty] [float] NOT NULL,
	[TakeLicenseTime] [int] NOT NULL,
	[ArticleOffense_Id] [int] NULL,
	[CarOwner_Id] [int] NULL,
	[CarDriver_Id] [int] NULL,
 CONSTRAINT [PK_dbo.VehicleOffenses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 24.12.2020 22:47:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNumber] [nvarchar](max) NULL,
	[MaintenanceDate] [datetime] NULL,
	[MaintenanceSuccess] [bit] NOT NULL,
	[CarOwner_Id] [int] NULL,
	[Color_Id] [int] NULL,
	[DriverLicense_Id] [int] NULL,
	[Model_Id] [int] NULL,
	[Category_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Vehicles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Vehicle_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_Vehicle_Id] ON [dbo].[CarDrivers]
(
	[Vehicle_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverLicense_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_DriverLicense_Id] ON [dbo].[CarOwners]
(
	[DriverLicense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Category_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_Category_Id] ON [dbo].[CategoryDriverLicenses]
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverLicense_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_DriverLicense_Id] ON [dbo].[CategoryDriverLicenses]
(
	[DriverLicense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarDriver_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_CarDriver_Id] ON [dbo].[Offenses]
(
	[CarDriver_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverLicense_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_DriverLicense_Id] ON [dbo].[TakeStrokes]
(
	[DriverLicense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ArticleOffense_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_ArticleOffense_Id] ON [dbo].[VehicleOffenses]
(
	[ArticleOffense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarDriver_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_CarDriver_Id] ON [dbo].[VehicleOffenses]
(
	[CarDriver_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarOwner_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_CarOwner_Id] ON [dbo].[VehicleOffenses]
(
	[CarOwner_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarOwner_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_CarOwner_Id] ON [dbo].[Vehicles]
(
	[CarOwner_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Category_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_Category_Id] ON [dbo].[Vehicles]
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Color_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_Color_Id] ON [dbo].[Vehicles]
(
	[Color_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DriverLicense_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_DriverLicense_Id] ON [dbo].[Vehicles]
(
	[DriverLicense_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Model_Id]    Script Date: 24.12.2020 22:47:11 ******/
CREATE NONCLUSTERED INDEX [IX_Model_Id] ON [dbo].[Vehicles]
(
	[Model_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DriverLicenses] ADD  DEFAULT ((0)) FOR [Number]
GO
ALTER TABLE [dbo].[DriverLicenses] ADD  DEFAULT ((0)) FOR [IsInvalid]
GO
ALTER TABLE [dbo].[Offenses] ADD  DEFAULT ((0)) FOR [SumPenalty]
GO
ALTER TABLE [dbo].[CarDrivers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CarDrivers_dbo.Vehicles_Vehicle_Id] FOREIGN KEY([Vehicle_Id])
REFERENCES [dbo].[Vehicles] ([Id])
GO
ALTER TABLE [dbo].[CarDrivers] CHECK CONSTRAINT [FK_dbo.CarDrivers_dbo.Vehicles_Vehicle_Id]
GO
ALTER TABLE [dbo].[CarOwners]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CarOwners_dbo.DriverLicenses_DriverLicense_Id] FOREIGN KEY([DriverLicense_Id])
REFERENCES [dbo].[DriverLicenses] ([Id])
GO
ALTER TABLE [dbo].[CarOwners] CHECK CONSTRAINT [FK_dbo.CarOwners_dbo.DriverLicenses_DriverLicense_Id]
GO
ALTER TABLE [dbo].[CategoryDriverLicenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryDriverLicenses_dbo.Categories_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryDriverLicenses] CHECK CONSTRAINT [FK_dbo.CategoryDriverLicenses_dbo.Categories_Category_Id]
GO
ALTER TABLE [dbo].[CategoryDriverLicenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CategoryDriverLicenses_dbo.DriverLicenses_DriverLicense_Id] FOREIGN KEY([DriverLicense_Id])
REFERENCES [dbo].[DriverLicenses] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryDriverLicenses] CHECK CONSTRAINT [FK_dbo.CategoryDriverLicenses_dbo.DriverLicenses_DriverLicense_Id]
GO
ALTER TABLE [dbo].[Offenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Offenses_dbo.CarDrivers_CarDriver_Id] FOREIGN KEY([CarDriver_Id])
REFERENCES [dbo].[CarDrivers] ([Id])
GO
ALTER TABLE [dbo].[Offenses] CHECK CONSTRAINT [FK_dbo.Offenses_dbo.CarDrivers_CarDriver_Id]
GO
ALTER TABLE [dbo].[TakeStrokes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TakeStrokes_dbo.DriverLicenses_DriverLicense_Id] FOREIGN KEY([DriverLicense_Id])
REFERENCES [dbo].[DriverLicenses] ([Id])
GO
ALTER TABLE [dbo].[TakeStrokes] CHECK CONSTRAINT [FK_dbo.TakeStrokes_dbo.DriverLicenses_DriverLicense_Id]
GO
ALTER TABLE [dbo].[VehicleOffenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VehicleOffenses_dbo.ArticleOffenses_ArticleOffense_Id] FOREIGN KEY([ArticleOffense_Id])
REFERENCES [dbo].[ArticleOffenses] ([Id])
GO
ALTER TABLE [dbo].[VehicleOffenses] CHECK CONSTRAINT [FK_dbo.VehicleOffenses_dbo.ArticleOffenses_ArticleOffense_Id]
GO
ALTER TABLE [dbo].[VehicleOffenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VehicleOffenses_dbo.CarDrivers_CarDriver_Id] FOREIGN KEY([CarDriver_Id])
REFERENCES [dbo].[CarDrivers] ([Id])
GO
ALTER TABLE [dbo].[VehicleOffenses] CHECK CONSTRAINT [FK_dbo.VehicleOffenses_dbo.CarDrivers_CarDriver_Id]
GO
ALTER TABLE [dbo].[VehicleOffenses]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VehicleOffenses_dbo.CarOwners_CarOwner_Id] FOREIGN KEY([CarOwner_Id])
REFERENCES [dbo].[CarOwners] ([Id])
GO
ALTER TABLE [dbo].[VehicleOffenses] CHECK CONSTRAINT [FK_dbo.VehicleOffenses_dbo.CarOwners_CarOwner_Id]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.CarOwners_CarOwner_Id] FOREIGN KEY([CarOwner_Id])
REFERENCES [dbo].[CarOwners] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.CarOwners_CarOwner_Id]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.Categories_Category_Id] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.Categories_Category_Id]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.Colors_Color_Id] FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.Colors_Color_Id]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.DriverLicenses_DriverLicense_Id] FOREIGN KEY([DriverLicense_Id])
REFERENCES [dbo].[DriverLicenses] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.DriverLicenses_DriverLicense_Id]
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Vehicles_dbo.Models_Model_Id] FOREIGN KEY([Model_Id])
REFERENCES [dbo].[Models] ([Id])
GO
ALTER TABLE [dbo].[Vehicles] CHECK CONSTRAINT [FK_dbo.Vehicles_dbo.Models_Model_Id]
GO
USE [master]
GO
ALTER DATABASE [GIBDD7] SET  READ_WRITE 
GO
