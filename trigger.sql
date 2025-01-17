USE [master]
GO
/****** Object:  Database [sql_normalization]    Script Date: 9/23/2024 6:49:55 PM ******/
CREATE DATABASE [sql_normalization]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sql_normalization', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\sql_normalization.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sql_normalization_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\sql_normalization_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [sql_normalization] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sql_normalization].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sql_normalization] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sql_normalization] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sql_normalization] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sql_normalization] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sql_normalization] SET ARITHABORT OFF 
GO
ALTER DATABASE [sql_normalization] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sql_normalization] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sql_normalization] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sql_normalization] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sql_normalization] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sql_normalization] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sql_normalization] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sql_normalization] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sql_normalization] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sql_normalization] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sql_normalization] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sql_normalization] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sql_normalization] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sql_normalization] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sql_normalization] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sql_normalization] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sql_normalization] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sql_normalization] SET RECOVERY FULL 
GO
ALTER DATABASE [sql_normalization] SET  MULTI_USER 
GO
ALTER DATABASE [sql_normalization] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sql_normalization] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sql_normalization] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sql_normalization] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sql_normalization] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'sql_normalization', N'ON'
GO
ALTER DATABASE [sql_normalization] SET QUERY_STORE = OFF
GO
USE [sql_normalization]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [sql_normalization]
GO
/****** Object:  Table [dbo].[student]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[s_name] [nvarchar](255) NULL,
	[t_id] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trigger_tbl]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trigger_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[message] [nvarchar](255) NULL,
	[add_time] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[student] ON 

INSERT [dbo].[student] ([id], [s_name], [t_id]) VALUES (1, N'hadi', 1)
INSERT [dbo].[student] ([id], [s_name], [t_id]) VALUES (2, N'haris', 2)
INSERT [dbo].[student] ([id], [s_name], [t_id]) VALUES (3, N'bilal', 3)
SET IDENTITY_INSERT [dbo].[student] OFF
GO
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [name]) VALUES (9, N'hamza')
INSERT [dbo].[teacher] ([id], [name]) VALUES (2, N'ahad')
INSERT [dbo].[teacher] ([id], [name]) VALUES (3, N'bilal')
INSERT [dbo].[teacher] ([id], [name]) VALUES (4, N'hammad')
INSERT [dbo].[teacher] ([id], [name]) VALUES (10, N'ahmed')
INSERT [dbo].[teacher] ([id], [name]) VALUES (6, N'zain')
INSERT [dbo].[teacher] ([id], [name]) VALUES (7, N'asad')
INSERT [dbo].[teacher] ([id], [name]) VALUES (8, N'hadi')
INSERT [dbo].[teacher] ([id], [name]) VALUES (11, N'haziq')
INSERT [dbo].[teacher] ([id], [name]) VALUES (12, N'habib')
INSERT [dbo].[teacher] ([id], [name]) VALUES (13, N'ali')
INSERT [dbo].[teacher] ([id], [name]) VALUES (14, N'Abbas')
SET IDENTITY_INSERT [dbo].[teacher] OFF
GO
SET IDENTITY_INSERT [dbo].[trigger_tbl] ON 

INSERT [dbo].[trigger_tbl] ([id], [message], [add_time]) VALUES (1, N'Your Record Has Been Added!', NULL)
INSERT [dbo].[trigger_tbl] ([id], [message], [add_time]) VALUES (2, N'Your Record Has Been Added!', NULL)
INSERT [dbo].[trigger_tbl] ([id], [message], [add_time]) VALUES (3, N'Your Record Has Been Added!', NULL)
INSERT [dbo].[trigger_tbl] ([id], [message], [add_time]) VALUES (4, N'Your Record Has Been Added!', NULL)
INSERT [dbo].[trigger_tbl] ([id], [message], [add_time]) VALUES (5, N'Your Record Has Beemn Added!', CAST(N'2024-09-23T18:48:30.277' AS DateTime))
SET IDENTITY_INSERT [dbo].[trigger_tbl] OFF
GO
/****** Object:  StoredProcedure [dbo].[dataInsert]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[dataInsert] as begin insert into teacher (name) values ('hammad') End;
GO
/****** Object:  StoredProcedure [dbo].[dataInsert2]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    create procedure [dbo].[dataInsert2] @name nvarchar (255) as begin insert into teacher (name) values (@name) End;
GO
/****** Object:  StoredProcedure [dbo].[dataStore]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dataStore] as begin select * from student End;
GO
/****** Object:  StoredProcedure [dbo].[deleteData]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[deleteData] @id int as begin delete from teacher where id = @id End;
GO
/****** Object:  StoredProcedure [dbo].[updateData]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	    create procedure [dbo].[updateData] as begin update teacher set name = 'waleed' where id = 3  End;
GO
/****** Object:  StoredProcedure [dbo].[updateData1]    Script Date: 9/23/2024 6:49:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[updateData1] @name nvarchar (255),@id int as begin update teacher set name= @name where id = @id End;
GO
USE [master]
GO
ALTER DATABASE [sql_normalization] SET  READ_WRITE 
GO
