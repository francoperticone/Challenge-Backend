USE [master]
GO
/****** Object:  Database [empresasdb]    Script Date: 21/03/2025 9:46:41 am ******/
CREATE DATABASE [empresasdb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'empresasdb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\empresasdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'empresasdb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\empresasdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [empresasdb] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [empresasdb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [empresasdb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [empresasdb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [empresasdb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [empresasdb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [empresasdb] SET ARITHABORT OFF 
GO
ALTER DATABASE [empresasdb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [empresasdb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [empresasdb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [empresasdb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [empresasdb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [empresasdb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [empresasdb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [empresasdb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [empresasdb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [empresasdb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [empresasdb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [empresasdb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [empresasdb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [empresasdb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [empresasdb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [empresasdb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [empresasdb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [empresasdb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [empresasdb] SET  MULTI_USER 
GO
ALTER DATABASE [empresasdb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [empresasdb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [empresasdb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [empresasdb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [empresasdb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [empresasdb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [empresasdb] SET QUERY_STORE = ON
GO
ALTER DATABASE [empresasdb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [empresasdb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 21/03/2025 9:46:42 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 21/03/2025 9:46:42 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[CUIT] [nvarchar](450) NOT NULL,
	[RazonSocial] [nvarchar](max) NULL,
	[FechaAdhesion] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[CUIT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transferencias]    Script Date: 21/03/2025 9:46:42 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmpresaCUIT] [nvarchar](max) NULL,
	[Importe] [decimal](18, 2) NOT NULL,
	[CuentaDebito] [nvarchar](max) NULL,
	[CuentaCredito] [nvarchar](max) NULL,
	[Fecha] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Transferencias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [empresasdb] SET  READ_WRITE 
GO
