USE [master]
GO

/****** Object:  Database [Opedia]    Script Date: 7/15/2019 3:01:55 PM ******/
CREATE DATABASE [Opedia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Opedia_Data', FILENAME = N'/nvmetest/mssql/data/\Opedia_Data.mdf' , SIZE = 16382GB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024000KB ), 
 FILEGROUP [FG1]  DEFAULT
( NAME = N'Opedia_FG1', FILENAME = N'/nvmetest/mssql/data/Opedia_FG1.ndf' , SIZE = 16381GB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024000KB )
 LOG ON 
( NAME = N'Opedia_Log', FILENAME = N'/nvmetest/mssql/log/\Opedia_Log.ldf' , SIZE = 1536000KB , MAXSIZE = 2048GB , FILEGROWTH = 204800KB )
GO

ALTER DATABASE [Opedia] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Opedia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Opedia] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Opedia] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Opedia] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Opedia] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Opedia] SET ARITHABORT OFF 
GO

ALTER DATABASE [Opedia] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Opedia] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Opedia] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Opedia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Opedia] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Opedia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Opedia] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Opedia] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Opedia] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Opedia] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Opedia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Opedia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Opedia] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Opedia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Opedia] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Opedia] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Opedia] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Opedia] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Opedia] SET  MULTI_USER 
GO

ALTER DATABASE [Opedia] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Opedia] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Opedia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Opedia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Opedia] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Opedia] SET QUERY_STORE = OFF
GO

USE [Opedia]
GO

ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

ALTER DATABASE [Opedia] SET  READ_WRITE 
GO


