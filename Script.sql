USE [master]
GO
/****** Object:  Database [KR2_Shershunov]    Script Date: 01.02.2024 17:04:31 ******/
CREATE DATABASE [KR2_Shershunov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KR2_Shershunov', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Shershunov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KR2_Shershunov_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2011\MSSQL\DATA\KR2_Shershunov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KR2_Shershunov] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KR2_Shershunov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KR2_Shershunov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET ARITHABORT OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KR2_Shershunov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KR2_Shershunov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KR2_Shershunov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KR2_Shershunov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KR2_Shershunov] SET  MULTI_USER 
GO
ALTER DATABASE [KR2_Shershunov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KR2_Shershunov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KR2_Shershunov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KR2_Shershunov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KR2_Shershunov] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KR2_Shershunov] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KR2_Shershunov] SET QUERY_STORE = OFF
GO
USE [KR2_Shershunov]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientZakaz]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientZakaz](
	[id] [int] NOT NULL,
	[idClienta] [int] NULL,
	[idZakaza] [int] NULL,
 CONSTRAINT [PK_ClientZakaz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[idZakaz] [int] NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudniki]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudniki](
	[id] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Addres] [nvarchar](150) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Passport] [nvarchar](50) NOT NULL,
	[idOtdela] [int] NOT NULL,
	[Stavka] [float] NOT NULL,
	[Roleid] [int] NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Passwoed] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sotrudniki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zadachi]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zadachi](
	[id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Soderjanie] [nvarchar](150) NULL,
	[idOtdela] [int] NOT NULL,
 CONSTRAINT [PK_Zadachi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zakaz]    Script Date: 01.02.2024 17:04:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zakaz](
	[id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Soderjanie] [nvarchar](150) NULL,
	[Trebovanie] [nvarchar](150) NOT NULL,
	[Platforma] [nvarchar](150) NOT NULL,
	[Otdel] [nvarchar](150) NOT NULL,
	[Dedlain] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Zakaz] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [Name]) VALUES (1, N'GlavaOtdela')
INSERT [dbo].[Role] ([id], [Name]) VALUES (2, N'Programist')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [Name], [Login], [Password]) VALUES (5, N'1', N'1', N'1')
INSERT [dbo].[User] ([id], [Name], [Login], [Password]) VALUES (6, N'Фёдоров Дмитрий', N'1', N'1')
INSERT [dbo].[User] ([id], [Name], [Login], [Password]) VALUES (7, N'Петров', N'2', N'2')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[ClientZakaz]  WITH CHECK ADD  CONSTRAINT [FK_ClientZakaz_Client] FOREIGN KEY([idClienta])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[ClientZakaz] CHECK CONSTRAINT [FK_ClientZakaz_Client]
GO
ALTER TABLE [dbo].[ClientZakaz]  WITH CHECK ADD  CONSTRAINT [FK_ClientZakaz_Zakaz] FOREIGN KEY([idZakaza])
REFERENCES [dbo].[Zakaz] ([id])
GO
ALTER TABLE [dbo].[ClientZakaz] CHECK CONSTRAINT [FK_ClientZakaz_Zakaz]
GO
ALTER TABLE [dbo].[Otdel]  WITH CHECK ADD  CONSTRAINT [FK_Otdel_Zakaz1] FOREIGN KEY([idZakaz])
REFERENCES [dbo].[Zakaz] ([id])
GO
ALTER TABLE [dbo].[Otdel] CHECK CONSTRAINT [FK_Otdel_Zakaz1]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Otdel] FOREIGN KEY([id])
REFERENCES [dbo].[Otdel] ([id])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Otdel]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Role] FOREIGN KEY([id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Role]
GO
ALTER TABLE [dbo].[Sotrudniki]  WITH CHECK ADD  CONSTRAINT [FK_Sotrudniki_Zadachi] FOREIGN KEY([id])
REFERENCES [dbo].[Zadachi] ([id])
GO
ALTER TABLE [dbo].[Sotrudniki] CHECK CONSTRAINT [FK_Sotrudniki_Zadachi]
GO
ALTER TABLE [dbo].[Zakaz]  WITH CHECK ADD  CONSTRAINT [FK_Zakaz_Client] FOREIGN KEY([id])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Zakaz] CHECK CONSTRAINT [FK_Zakaz_Client]
GO
ALTER TABLE [dbo].[Zakaz]  WITH CHECK ADD  CONSTRAINT [FK_Zakaz_User] FOREIGN KEY([id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Zakaz] CHECK CONSTRAINT [FK_Zakaz_User]
GO
USE [master]
GO
ALTER DATABASE [KR2_Shershunov] SET  READ_WRITE 
GO
