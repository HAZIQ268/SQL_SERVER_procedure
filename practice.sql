USE [master]
GO
/****** Object:  Database [ss_practice]    Script Date: 9/27/2024 6:10:26 PM ******/
CREATE DATABASE [ss_practice]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ss_practice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ss_practice.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ss_practice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\ss_practice_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ss_practice] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ss_practice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ss_practice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ss_practice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ss_practice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ss_practice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ss_practice] SET ARITHABORT OFF 
GO
ALTER DATABASE [ss_practice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ss_practice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ss_practice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ss_practice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ss_practice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ss_practice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ss_practice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ss_practice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ss_practice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ss_practice] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ss_practice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ss_practice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ss_practice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ss_practice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ss_practice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ss_practice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ss_practice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ss_practice] SET RECOVERY FULL 
GO
ALTER DATABASE [ss_practice] SET  MULTI_USER 
GO
ALTER DATABASE [ss_practice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ss_practice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ss_practice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ss_practice] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ss_practice] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ss_practice', N'ON'
GO
ALTER DATABASE [ss_practice] SET QUERY_STORE = OFF
GO
USE [ss_practice]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ss_practice]
GO
/****** Object:  Table [dbo].[car]    Script Date: 9/27/2024 6:10:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[car](
	[car_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[brand] [nvarchar](255) NULL,
	[model] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[car_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_salary]    Script Date: 9/27/2024 6:10:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_salary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[salary] [char](255) NULL,
	[e_id_fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 9/27/2024 6:10:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[e_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[e_rank] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[e_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[engineers]    Script Date: 9/27/2024 6:10:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[engineers](
	[engineer_id_pk] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[car_id_Fk] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[engineer_id_pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[employee_salary] ON 

INSERT [dbo].[employee_salary] ([id], [salary], [e_id_fk]) VALUES (1, N'25000                                                                                                                                                                                                                                                          ', 1)
INSERT [dbo].[employee_salary] ([id], [salary], [e_id_fk]) VALUES (2, N'65000                                                                                                                                                                                                                                                          ', 2)
INSERT [dbo].[employee_salary] ([id], [salary], [e_id_fk]) VALUES (3, N'45000                                                                                                                                                                                                                                                          ', 3)
SET IDENTITY_INSERT [dbo].[employee_salary] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([e_id], [name], [e_rank]) VALUES (1, N'ali', N'manager')
INSERT [dbo].[employees] ([e_id], [name], [e_rank]) VALUES (2, N'hadi', N'Graphic Designer')
INSERT [dbo].[employees] ([e_id], [name], [e_rank]) VALUES (3, N'wasay', N'Content Writer')
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
/****** Object:  Index [UQ__employee__269E591E4F513F92]    Script Date: 9/27/2024 6:10:27 PM ******/
ALTER TABLE [dbo].[employee_salary] ADD UNIQUE NONCLUSTERED 
(
	[e_id_fk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee_salary]  WITH CHECK ADD FOREIGN KEY([e_id_fk])
REFERENCES [dbo].[employees] ([e_id])
GO
ALTER TABLE [dbo].[engineers]  WITH CHECK ADD FOREIGN KEY([car_id_Fk])
REFERENCES [dbo].[car] ([car_id_pk])
GO
USE [master]
GO
ALTER DATABASE [ss_practice] SET  READ_WRITE 
GO
