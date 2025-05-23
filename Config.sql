USE [master]
GO
/****** Object:  Database [DCConfigurationIntegration]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE DATABASE [DCConfigurationIntegration]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DCConfiguration_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DCConfiguration_Data.mdf' , SIZE = 36864KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DCConfiguration_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DCConfiguration_log.ldf' , SIZE = 24704KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DCConfigurationIntegration] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DCConfigurationIntegration].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DCConfigurationIntegration] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ARITHABORT OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DCConfigurationIntegration] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DCConfigurationIntegration] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DCConfigurationIntegration] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DCConfigurationIntegration] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET RECOVERY FULL 
GO
ALTER DATABASE [DCConfigurationIntegration] SET  MULTI_USER 
GO
ALTER DATABASE [DCConfigurationIntegration] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DCConfigurationIntegration] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DCConfigurationIntegration] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DCConfigurationIntegration] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DCConfigurationIntegration] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DCConfigurationIntegration] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DCConfigurationIntegration', N'ON'
GO
ALTER DATABASE [DCConfigurationIntegration] SET QUERY_STORE = OFF
GO
USE [DCConfigurationIntegration]
GO
/****** Object:  User [MCFINALE\TechnicalTeamPowerUsers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\TechnicalTeamPowerUsers]
GO
/****** Object:  User [MCFINALE\TechnicalTeam]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\TechnicalTeam]
GO
/****** Object:  User [MCFINALE\SQL IDC Users]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\SQL IDC Users]
GO
/****** Object:  User [MCFINALE\ReadOnlyProductionAccess]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\ReadOnlyProductionAccess]
GO
/****** Object:  User [MCFINALE\ProductSupport]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\ProductSupport] WITH DEFAULT_SCHEMA=[MCFINALE\ProductSupport]
GO
/****** Object:  User [MCFinale\FireFighterReadWrite]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFinale\FireFighterReadWrite]
GO
/****** Object:  User [MCFINALE\FinaleReporting]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\FinaleReporting]
GO
/****** Object:  User [MCFinale\DevDBA]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFinale\DevDBA]
GO
/****** Object:  User [MCFINALE\DCProductBusinessAnalysts]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\DCProductBusinessAnalysts]
GO
/****** Object:  User [MCFINALE\DCDevelopers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\DCDevelopers]
GO
/****** Object:  User [MCFINALE\DBUsersFDCProd]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\DBUsersFDCProd]
GO
/****** Object:  User [MCFINALE\DataPullUsers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\DataPullUsers]
GO
/****** Object:  User [MCFINALE\DataPullPowerUsers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\DataPullPowerUsers]
GO
/****** Object:  User [MCFINALE\BusinessDevelopmentPowerUsers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\BusinessDevelopmentPowerUsers]
GO
/****** Object:  User [MCFINALE\BusinessDevelopment]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\BusinessDevelopment]
GO
/****** Object:  User [MCFINALE\AccountManagementPowerUsers]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\AccountManagementPowerUsers]
GO
/****** Object:  User [MCFINALE\AccountManagement]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [MCFINALE\AccountManagement]
GO
/****** Object:  User [DCRead]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [DCRead] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [DCConfigRead]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [DCConfigRead] FOR LOGIN [DCConfigRead] WITH DEFAULT_SCHEMA=[DCConfigRead]
GO
/****** Object:  User [DCConfig]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [DCConfig] FOR LOGIN [DCConfig] WITH DEFAULT_SCHEMA=[DCConfig]
GO
/****** Object:  User [DCApp]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE USER [DCApp] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [MCFINALE\TechnicalTeamPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\TechnicalTeamPowerUsers]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFINALE\TechnicalTeamPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\TechnicalTeam]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\SQL IDC Users]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\ReadOnlyProductionAccess]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFinale\FireFighterReadWrite]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFinale\FireFighterReadWrite]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\FinaleReporting]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFinale\DevDBA]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\DCProductBusinessAnalysts]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [MCFINALE\DBUsersFDCProd]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\DBUsersFDCProd]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFINALE\DBUsersFDCProd]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\DataPullUsers]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [MCFINALE\DataPullPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\DataPullPowerUsers]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFINALE\DataPullPowerUsers]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [MCFINALE\BusinessDevelopmentPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\BusinessDevelopmentPowerUsers]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFINALE\BusinessDevelopmentPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\BusinessDevelopment]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [MCFINALE\AccountManagementPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\AccountManagementPowerUsers]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [MCFINALE\AccountManagementPowerUsers]
GO
ALTER ROLE [db_datareader] ADD MEMBER [MCFINALE\AccountManagement]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCRead]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCConfigRead]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DCConfig]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCConfig]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DCConfig]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [DCApp]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DCApp]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DCApp]
GO
/****** Object:  Schema [DCConfig]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE SCHEMA [DCConfig]
GO
/****** Object:  Schema [DCConfigRead]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE SCHEMA [DCConfigRead]
GO
/****** Object:  Schema [MCFINALE\ProductSupport]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE SCHEMA [MCFINALE\ProductSupport]
GO
/****** Object:  Table [dbo].[APITesterConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APITesterConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[apiTestUserName] [nvarchar](100) NULL,
	[apiTestPackageName] [nvarchar](100) NULL,
	[apiTestMC231RequestGuid] [uniqueidentifier] NULL,
	[apiTestMC231MessageGuid] [uniqueidentifier] NULL,
	[apiTestMC231DocumentGuid] [uniqueidentifier] NULL,
	[apiTestMismo26RequestGuid] [uniqueidentifier] NULL,
	[apiTestMismo26MessageGuid] [uniqueidentifier] NULL,
	[apiTestMismo26DocumentGuid] [uniqueidentifier] NULL,
	[apiTestPackageGuid] [uniqueidentifier] NULL,
	[apiTestOwnerEmail] [nvarchar](512) NULL,
	[apiTestDownloadPackageGuid] [uniqueidentifier] NULL,
	[apiTestDownloadDocumentGuid] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_APITesterConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationAllowedUserGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationAllowedUserGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationTypeId] [uniqueidentifier] NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[GroupSID] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationAllowedUserGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceConnectionStrings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceConnectionStrings](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[ConnectionStringId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceConnectionStrings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceCredentials]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceCredentials](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[CredentialsId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceCredentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceDataPullServerGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceDataPullServerGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[DataPullGroupId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceDataPullServerGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceEndPoints]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceEndPoints](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[EndpointId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_ApplicationInstanceEndPoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceInternalApis]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceInternalApis](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[InternalApiId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceInternalApis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceLoggingConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceLoggingConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[LoggingConfigurationId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceLoggingConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceMISMOReverseIndicators]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[MISMOReverseIndicatorId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceMISMOReverseIndicators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceProcessingSteps]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceProcessingSteps](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[ProcessingStepId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceProcessingSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstances]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstances](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[ApplicationTypeId] [uniqueidentifier] NULL,
	[RefreshFrequencyInSeconds] [int] NULL,
	[AuditLogConnectionStringId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[TierId] [uniqueidentifier] NOT NULL,
	[MaxAppIdleTimeInSeconds] [int] NOT NULL,
	[MaxAppErrorCount] [int] NOT NULL,
 CONSTRAINT [PK_ApplicationInstances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceServerMappings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceServerMappings](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NOT NULL,
	[ServerId] [uniqueidentifier] NULL,
	[ApplicationTypeId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceServerMappings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationInstanceUniformResourceIdentifiers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[UniformResourceIdentifierId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationInstanceUniformResourceIdentifiers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationSettings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NOT NULL,
	[ItemName] [nvarchar](100) NOT NULL,
	[ItemValue] [nvarchar](1024) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationTypes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ApplicationTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveJobParameters]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveJobParameters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Environment] [varchar](100) NOT NULL,
	[DatabaseName] [varchar](100) NOT NULL,
	[TableName] [varchar](100) NOT NULL,
	[NumDaysRetention] [int] NOT NULL,
	[BatchRunTime] [int] NOT NULL,
	[NumberPurgedRecords] [int] NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ArchiveJobParameters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BrandESignProviderByTier]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrandESignProviderByTier](
	[BrandId] [int] NOT NULL,
	[TierId] [uniqueidentifier] NOT NULL,
	[ESignProviderId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[OptionalPipelineRunout] [bit] NOT NULL,
	[ESignAccountId] [nvarchar](512) NULL,
	[ESignUserId] [nvarchar](512) NULL,
	[ESignUserPassword] [nvarchar](512) NULL,
	[ESignEmailSubjectSigner] [nvarchar](1024) NULL,
	[ESignEmailBodySigner] [varchar](max) NULL,
	[ESignEmailSubjectViewer] [nvarchar](1024) NULL,
	[ESignEmailBodyViewer] [varchar](max) NULL,
	[ESignAccountEmail] [varchar](max) NULL,
	[ESignDisplayAccountID] [varchar](max) NULL,
	[CCFirstName] [nvarchar](300) NULL,
	[CCLastName] [nvarchar](300) NULL,
	[CCEmail] [nvarchar](max) NULL,
	[CCAccessCode] [nvarchar](512) NULL,
	[EVaultFailureNotificationEmail] [nvarchar](max) NULL,
	[EOriginalCredentialId] [uniqueidentifier] NULL,
	[DocuSignBrandingId] [uniqueidentifier] NULL,
	[DocumentVisibilityEnabled] [bit] NOT NULL,
	[ESignAccountServerEndpoint] [uniqueidentifier] NULL,
	[OAuthStatus] [bit] NOT NULL,
	[ImpersonationAcceptedDateTime] [datetime] NULL,
	[EmailBlurb] [varchar](1024) NULL,
	[UniqueRoutingOrder] [bit] NOT NULL,
	[RequireViewOnlyTerminalEvent] [bit] NOT NULL,
 CONSTRAINT [PK_BrandESignProviderByTier] PRIMARY KEY CLUSTERED 
(
	[BrandId] ASC,
	[TierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientBrands]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientBrands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientId] [uniqueidentifier] NOT NULL,
	[BrandName] [varchar](1000) NULL,
 CONSTRAINT [PK_ClientBrands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientCredentials]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientCredentials](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientCode] [nvarchar](50) NOT NULL,
	[CredentialsId] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[RestrictOffshoreAccess] [bit] NOT NULL,
 CONSTRAINT [PK_ClientCredentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDataPrivacy]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDataPrivacy](
	[Id] [uniqueidentifier] NOT NULL,
	[ActiveDirectoryGroupOrUser] [varchar](255) NULL,
	[IsUserName] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ClientDataPrivacyID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientESignProviderByTier]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientESignProviderByTier](
	[ClientId] [uniqueidentifier] NOT NULL,
	[TierId] [uniqueidentifier] NOT NULL,
	[ESignProviderId] [uniqueidentifier] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[OptionalPipelineRunout] [bit] NOT NULL,
	[ESignAccountId] [nvarchar](512) NULL,
	[ESignUserId] [nvarchar](512) NULL,
	[ESignUserPassword] [nvarchar](512) NULL,
	[ESignEmailSubjectSigner] [nvarchar](1024) NULL,
	[ESignEmailBodySigner] [varchar](max) NULL,
	[ESignEmailSubjectViewer] [nvarchar](1024) NULL,
	[ESignEmailBodyViewer] [varchar](max) NULL,
	[ESignAccountEmail] [varchar](max) NULL,
	[ESignDisplayAccountID] [varchar](max) NULL,
 CONSTRAINT [PK_ClientESignProviderByTier] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[TierId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigurationLocations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigurationLocations](
	[Id] [uniqueidentifier] NOT NULL,
	[ServerName] [nvarchar](300) NULL,
	[DatabaseName] [nvarchar](255) NULL,
	[IpAddress] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConnectionStringMetaDatas]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionStringMetaDatas](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Value] [nvarchar](1024) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ConnectionStringMetaDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConnectionStrings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionStrings](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[CredentialsId] [uniqueidentifier] NULL,
	[ApplicationIntentId] [uniqueidentifier] NULL,
	[ApplicationName] [nvarchar](512) NULL,
	[AsynchronousProcessing] [bit] NULL,
	[AttachDBFilename] [nvarchar](512) NULL,
	[BrowsableConnectionString] [bit] NULL,
	[ConnectTimeout] [int] NULL,
	[ContextConnection] [bit] NULL,
	[CurrentLanguageId] [int] NULL,
	[DataSource] [nvarchar](512) NULL,
	[Encrypt] [bit] NULL,
	[Enlist] [bit] NULL,
	[InitialCatalog] [nvarchar](512) NULL,
	[IntegratedSecurity] [bit] NULL,
	[LoadBalanceTimeout] [int] NULL,
	[MaxPoolSize] [int] NULL,
	[MinPoolSize] [int] NULL,
	[MultipleActiveResultsSets] [bit] NULL,
	[NetworkLibrary] [nvarchar](512) NULL,
	[PacketSize] [int] NULL,
	[PersistingSecurityInfo] [bit] NULL,
	[Pooling] [bit] NULL,
	[Replication] [bit] NULL,
	[TransactionBindingId] [uniqueidentifier] NULL,
	[TrustServerCertificate] [bit] NULL,
	[TypeSystemVersionId] [uniqueidentifier] NULL,
	[UserInstance] [bit] NULL,
	[WorkstationId] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[ConnectionStringTypeId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ConnectionStrings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConnectionStringTypes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionStringTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[MetaDataId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ConnectionStringTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ConnectionStringTypes_Value] UNIQUE NONCLUSTERED 
(
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credentials]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credentials](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[Domain] [nvarchar](512) NULL,
	[UserName] [nvarchar](512) NULL,
	[Password] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Credentials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataPullGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPullGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Order] [int] NULL,
	[DataPullServerId] [uniqueidentifier] NULL,
	[Name] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[EndpointId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_DataPullGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataPullServerGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPullServerGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[DataPullGroupId] [uniqueidentifier] NULL,
	[DataPullServerId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DataPullServerGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataPullServers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataPullServers](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[ConnectionStringId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DataPullServers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DigitalSignaturesClientConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DigitalSignaturesClientConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[CadenceServerURI] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DigitalSignaturesClientConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentGenerationConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentGenerationConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[CompositionURL] [uniqueidentifier] NULL,
	[FmfGeneratorName] [nvarchar](512) NULL,
	[FromEmailAdr] [nvarchar](512) NULL,
	[FromName] [nvarchar](100) NULL,
	[FromFirstName] [nvarchar](100) NULL,
	[FromLastName] [nvarchar](100) NULL,
	[ImportRequestLoggingEnabled] [bit] NULL,
	[ImportRequestFolder] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocumentGenerationConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocusignControlRadioGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocusignControlRadioGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_DocusignControlRadioGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocusignControlReferences]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocusignControlReferences](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[AnchorString] [nvarchar](30) NOT NULL,
	[ReferenceDetailsJSON] [nvarchar](max) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DocusignControlReferences] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocusignControlTypes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocusignControlTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](255) NOT NULL,
	[FriendlyText] [varchar](255) NOT NULL,
	[AnchorXOffset] [int] NOT NULL,
	[AnchorYOffset] [int] NOT NULL,
 CONSTRAINT [PK_DocusignControlTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocuSignProcessorConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocuSignProcessorConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[Interval] [int] NULL,
	[MaximumProcessingRetries] [int] NULL,
	[MaximumProcessingMinutes] [int] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[SignatureTabXOffset] [int] NULL,
	[SignatureTabYOffset] [int] NULL,
	[DateTimeTabXOffset] [int] NULL,
	[DateTimeTabYOffset] [int] NULL,
	[EnvelopeIdTabXOffset] [int] NULL,
	[EnvelopeIdTabYOffset] [int] NULL,
	[EnvelopeIdTabAnchorString] [nvarchar](20) NULL,
	[EnvelopeIdTabFont] [nvarchar](50) NULL,
	[EnvelopeIdTabFontSize] [nvarchar](10) NULL,
	[EnvelopeIdTabTabLabel] [nvarchar](50) NULL,
	[SignatureNoDateTabXOffset] [int] NULL,
	[SignatureNoDateTabYOffset] [int] NULL,
	[SigningDateTabXOffset] [int] NULL,
	[SigningDateTabYOffset] [int] NULL,
	[SignatureTab4506CXOffset] [int] NULL,
	[SignatureTab4506CYOffset] [int] NULL,
	[SignatureOptionalTabXOffset] [int] NULL,
	[SignatureOptionalTabYOffset] [int] NULL,
 CONSTRAINT [PK_DocuSignProcessorConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EncomiaMonitorConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncomiaMonitorConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[LogWarnings] [bit] NULL,
	[PollingFrequencyInSeconds] [int] NULL,
	[UseEventLog] [bit] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[MaxRequestsToProcess] [int] NULL,
	[ProcessingTimeout] [int] NULL,
 CONSTRAINT [PK_EncomiaMonitorConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Endpoints]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endpoints](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](512) NULL,
	[ServiceType] [int] NOT NULL,
	[CredentialsId] [uniqueidentifier] NOT NULL,
	[UniformResourceIdentifierId] [uniqueidentifier] NOT NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Endpoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EndpointsServiceType]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndpointsServiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_EndpointsServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESignProviders]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESignProviders](
	[Id] [uniqueidentifier] NOT NULL,
	[VendorCode] [int] NOT NULL,
	[Description] [nvarchar](512) NULL,
	[IntegrationKey] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ESignProviders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExternalProcessorConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExternalProcessorConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[Interval] [int] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[MaximumProcessingRetries] [int] NULL,
	[MaximumProcessingMinutes] [int] NULL,
 CONSTRAINT [PK_ExternalProcessorConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureFlags]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureFlags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FeatureName] [nvarchar](75) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LiveDate] [datetime] NULL,
 CONSTRAINT [PK_FeatureFlags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grid]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grid](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Grid] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupNames]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupNames](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[MasterEnvironmentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_GroupNames] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostedServices]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostedServices](
	[AppDomainId] [uniqueidentifier] NOT NULL,
	[ServiceHostInstanceId] [uniqueidentifier] NOT NULL,
	[Namespace] [nvarchar](1024) NOT NULL,
	[AssemblyName] [nvarchar](1024) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_HostedServices] PRIMARY KEY CLUSTERED 
(
	[AppDomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalApiConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalApiConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[DocumentsDirectory] [uniqueidentifier] NULL,
	[CredentialsId] [uniqueidentifier] NULL,
	[DocumentRetentionDays] [int] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[AdditionalDocumentMaxSize] [int] NULL,
	[FileShareUri] [uniqueidentifier] NULL,
 CONSTRAINT [PK_InternalApiConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalApis]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalApis](
	[Id] [uniqueidentifier] NOT NULL,
	[UniformResourceIdentifierId] [uniqueidentifier] NULL,
	[MaximumEventRequestRangeHours] [int] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[InternalApiConfigurationId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_InternalApis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanDataErrorTypes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanDataErrorTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](100) NULL,
	[SearchString] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoggingConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoggingConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[ApplicationTypeId] [uniqueidentifier] NULL,
	[LogFileURI] [uniqueidentifier] NULL,
	[MaximumFileSize] [nvarchar](50) NULL,
	[MaxSizeRollBackups] [int] NULL,
	[ConversionPattern] [nvarchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoggingConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MISMOReverseIndicators]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MISMOReverseIndicators](
	[Id] [uniqueidentifier] NOT NULL,
	[xElement] [nvarchar](1024) NULL,
	[xAttribute] [nvarchar](1024) NULL,
	[Value] [nvarchar](1024) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MISMOReverseIndicators] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModuleAllowedUserGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleAllowedUserGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[ModuleId] [uniqueidentifier] NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[GroupSID] [varchar](512) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ModuleAllowedUserGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationTypeId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](512) NULL,
	[Name] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessingSteps]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessingSteps](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProcessingSteps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicApiConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicApiConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[ApiTesterConfigurationId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PublicApiConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServerGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[ServerId] [uniqueidentifier] NULL,
	[GroupNameId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ServerGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servers](
	[Id] [uniqueidentifier] NOT NULL,
	[ServerURI] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](512) NULL,
	[TierId] [uniqueidentifier] NULL,
	[CadenceConnectionStringId] [uniqueidentifier] NULL,
	[XPathConfigEnvironment] [bit] NULL,
	[BookmarkTitlesEditable] [bit] NULL,
	[isDefault] [bit] NULL,
	[ClientPackageEditable] [bit] NULL,
	[CredentialsId] [uniqueidentifier] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Servers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Servers_ServerURI] UNIQUE NONCLUSTERED 
(
	[ServerURI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQLBuilderApplicationIntents]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQLBuilderApplicationIntents](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SQLBuilderApplicationIntents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQLBuilderTransactionBindings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQLBuilderTransactionBindings](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SQLBuilderTransactionBindings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SQLBuilderTypeSystemVersions]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SQLBuilderTypeSystemVersions](
	[Id] [uniqueidentifier] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SQLBuilderTypeSystemVersions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TierEndpoints]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TierEndpoints](
	[Id] [uniqueidentifier] NOT NULL,
	[TierId] [uniqueidentifier] NOT NULL,
	[EndpointId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_TierEndpoints] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tiers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tiers](
	[Id] [uniqueidentifier] NOT NULL,
	[DisplayName] [nvarchar](50) NULL,
	[CadenceConnectionStringId] [uniqueidentifier] NULL,
	[WarehouseConnectionStringId] [uniqueidentifier] NULL,
	[InternalApiId] [uniqueidentifier] NULL,
	[PublicApiUri] [uniqueidentifier] NULL,
	[DefaultClientCredentialsId] [uniqueidentifier] NULL,
	[SecureDeliveryTier] [bit] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[MasterEnvironmentId] [uniqueidentifier] NULL,
	[GridId] [int] NULL,
	[MonitorConnectionStringId] [uniqueidentifier] NULL,
	[CadenceLoanConnectionstringId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Tiers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToolsConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolsConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[UseMortgageFlex] [bit] NULL,
	[IsXPathGenerateButtonEnabled] [bit] NULL,
	[ActivateWindows8] [bit] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[DefaultCadenceConnectionStringId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ToolsConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionProcessorConfigurations]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionProcessorConfigurations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationInstanceId] [uniqueidentifier] NULL,
	[ConcurrentRequests] [int] NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_TransactionProcessorConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UniformResourceIdentifiers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UniformResourceIdentifiers](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](512) NULL,
	[Value] [nvarchar](1024) NULL,
	[isActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UseSSL] [bit] NULL,
 CONSTRAINT [PK_UniformResourceIdentifiers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebhookRetryScheduleByTier]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebhookRetryScheduleByTier](
	[Id] [smallint] NOT NULL,
	[TierId] [uniqueidentifier] NOT NULL,
	[RetryCount] [int] NOT NULL,
	[RetryDelay] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationInstanceConnectionStr_ApplicationInstanceId_isActive]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationInstanceConnectionStr_ApplicationInstanceId_isActive] ON [dbo].[ApplicationInstanceConnectionStrings]
(
	[ApplicationInstanceId] ASC,
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ApplicationInstanceServerMappings_ServerURI]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_ApplicationInstanceServerMappings_ServerURI] ON [dbo].[ApplicationInstanceServerMappings]
(
	[ServerId] ASC,
	[ApplicationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ArchiveJobParameters]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ArchiveJobParameters] ON [dbo].[ArchiveJobParameters]
(
	[Environment] ASC,
	[DatabaseName] ASC,
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClientESignProviderByTier_TierId]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClientESignProviderByTier_TierId] ON [dbo].[ClientESignProviderByTier]
(
	[TierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ConfigurationLocations_IpAddress]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ConfigurationLocations_IpAddress] ON [dbo].[ConfigurationLocations]
(
	[IpAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Servers_ServerURI]    Script Date: 3/17/2025 11:16:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Servers_ServerURI] ON [dbo].[Servers]
(
	[ServerURI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APITesterConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationAllowedUserGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceConnectionStrings] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceCredentials] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceDataPullServerGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[ApplicationInstanceInternalApis] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceLoggingConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceProcessingSteps] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstances] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstances] ADD  CONSTRAINT [ApplicationInstances_MaxAppIdleTimeInSeconds_Default]  DEFAULT ((0)) FOR [MaxAppIdleTimeInSeconds]
GO
ALTER TABLE [dbo].[ApplicationInstances] ADD  CONSTRAINT [ApplicationInstances_MaxAppErrorCount_Default]  DEFAULT ((0)) FOR [MaxAppErrorCount]
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationSettings] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ApplicationTypes] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] ADD  DEFAULT ((0)) FOR [OptionalPipelineRunout]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] ADD  CONSTRAINT [df_DocumentVisibilityEnabled]  DEFAULT ((0)) FOR [DocumentVisibilityEnabled]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] ADD  DEFAULT ((0)) FOR [OAuthStatus]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] ADD  DEFAULT ((0)) FOR [UniqueRoutingOrder]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] ADD  DEFAULT ((0)) FOR [RequireViewOnlyTerminalEvent]
GO
ALTER TABLE [dbo].[ClientCredentials] ADD  DEFAULT ((0)) FOR [RestrictOffshoreAccess]
GO
ALTER TABLE [dbo].[ClientDataPrivacy] ADD  DEFAULT ((0)) FOR [IsUserName]
GO
ALTER TABLE [dbo].[ClientDataPrivacy] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ClientESignProviderByTier] ADD  DEFAULT ((0)) FOR [OptionalPipelineRunout]
GO
ALTER TABLE [dbo].[ConnectionStringMetaDatas] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ConnectionStrings] ADD  DEFAULT ((0)) FOR [CurrentLanguageId]
GO
ALTER TABLE [dbo].[ConnectionStrings] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ConnectionStringTypes] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Credentials] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DataPullGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DataPullServerGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DataPullServers] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DigitalSignaturesClientConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DocumentGenerationConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[DocusignControlTypes] ADD  DEFAULT ((0)) FOR [AnchorXOffset]
GO
ALTER TABLE [dbo].[DocusignControlTypes] ADD  DEFAULT ((0)) FOR [AnchorYOffset]
GO
ALTER TABLE [dbo].[DocuSignProcessorConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[EncomiaMonitorConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Endpoints] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ESignProviders] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ExternalProcessorConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[FeatureFlags] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Grid] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[GroupNames] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[InternalApiConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[InternalApis] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[LoanDataErrorTypes] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[LoggingConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[MISMOReverseIndicators] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ModuleAllowedUserGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Modules] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ProcessingSteps] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[PublicApiConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ServerGroups] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[Servers] ADD  DEFAULT ((0)) FOR [XPathConfigEnvironment]
GO
ALTER TABLE [dbo].[Servers] ADD  DEFAULT ((0)) FOR [BookmarkTitlesEditable]
GO
ALTER TABLE [dbo].[Servers] ADD  DEFAULT ((0)) FOR [isDefault]
GO
ALTER TABLE [dbo].[Servers] ADD  DEFAULT ((0)) FOR [ClientPackageEditable]
GO
ALTER TABLE [dbo].[Servers] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[SQLBuilderApplicationIntents] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[SQLBuilderTransactionBindings] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[SQLBuilderTypeSystemVersions] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[TierEndpoints] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Tiers] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ToolsConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[TransactionProcessorConfigurations] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[UniformResourceIdentifiers] ADD  DEFAULT ((0)) FOR [isActive]
GO
ALTER TABLE [dbo].[ApplicationAllowedUserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationAllowedUserGroups_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationAllowedUserGroups] CHECK CONSTRAINT [FK_ApplicationAllowedUserGroups_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationAllowedUserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationAllowedUserGroups_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationTypes] ([Id])
GO
ALTER TABLE [dbo].[ApplicationAllowedUserGroups] CHECK CONSTRAINT [FK_ApplicationAllowedUserGroups_ApplicationTypeId]
GO
ALTER TABLE [dbo].[ApplicationInstanceConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceConnectionStrings_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceConnectionStrings] CHECK CONSTRAINT [FK_ApplicationInstanceConnectionStrings_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceConnectionStrings_ConnectionStringId] FOREIGN KEY([ConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceConnectionStrings] CHECK CONSTRAINT [FK_ApplicationInstanceConnectionStrings_ConnectionStringId]
GO
ALTER TABLE [dbo].[ApplicationInstanceCredentials]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceCredentials_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceCredentials] CHECK CONSTRAINT [FK_ApplicationInstanceCredentials_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceCredentials]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceCredentials_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceCredentials] CHECK CONSTRAINT [FK_ApplicationInstanceCredentials_CredentialsId]
GO
ALTER TABLE [dbo].[ApplicationInstanceDataPullServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceDataPullServerGroups_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceDataPullServerGroups] CHECK CONSTRAINT [FK_ApplicationInstanceDataPullServerGroups_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceDataPullServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceDataPullServerGroups_DataPullGroupsId] FOREIGN KEY([DataPullGroupId])
REFERENCES [dbo].[DataPullGroups] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceDataPullServerGroups] CHECK CONSTRAINT [FK_ApplicationInstanceDataPullServerGroups_DataPullGroupsId]
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceEndPoints_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints] CHECK CONSTRAINT [FK_ApplicationInstanceEndPoints_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceEndPoints_EndpointId] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceEndPoints] CHECK CONSTRAINT [FK_ApplicationInstanceEndPoints_EndpointId]
GO
ALTER TABLE [dbo].[ApplicationInstanceInternalApis]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceInternalApis_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceInternalApis] CHECK CONSTRAINT [FK_ApplicationInstanceInternalApis_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceInternalApis]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceInternalApis_InternalApiId] FOREIGN KEY([InternalApiId])
REFERENCES [dbo].[InternalApis] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceInternalApis] CHECK CONSTRAINT [FK_ApplicationInstanceInternalApis_InternalApiId]
GO
ALTER TABLE [dbo].[ApplicationInstanceLoggingConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceLoggingConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceLoggingConfigurations] CHECK CONSTRAINT [FK_ApplicationInstanceLoggingConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceLoggingConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceLoggingConfigurations_LoggingConfigurationId] FOREIGN KEY([LoggingConfigurationId])
REFERENCES [dbo].[LoggingConfigurations] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceLoggingConfigurations] CHECK CONSTRAINT [FK_ApplicationInstanceLoggingConfigurations_LoggingConfigurationId]
GO
ALTER TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceMISMOReverseIndicators_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators] CHECK CONSTRAINT [FK_ApplicationInstanceMISMOReverseIndicators_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceMISMOReverseIndicators_MISMOReverseIndicatorId] FOREIGN KEY([MISMOReverseIndicatorId])
REFERENCES [dbo].[MISMOReverseIndicators] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceMISMOReverseIndicators] CHECK CONSTRAINT [FK_ApplicationInstanceMISMOReverseIndicators_MISMOReverseIndicatorId]
GO
ALTER TABLE [dbo].[ApplicationInstanceProcessingSteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceProcessingSteps_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceProcessingSteps] CHECK CONSTRAINT [FK_ApplicationInstanceProcessingSteps_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceProcessingSteps]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceProcessingSteps_ProcessingStepId] FOREIGN KEY([ProcessingStepId])
REFERENCES [dbo].[ProcessingSteps] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceProcessingSteps] CHECK CONSTRAINT [FK_ApplicationInstanceProcessingSteps_ProcessingStepId]
GO
ALTER TABLE [dbo].[ApplicationInstances]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstances_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationTypes] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstances] CHECK CONSTRAINT [FK_ApplicationInstances_ApplicationTypeId]
GO
ALTER TABLE [dbo].[ApplicationInstances]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstances_AuditLogConnectionStringId] FOREIGN KEY([AuditLogConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstances] CHECK CONSTRAINT [FK_ApplicationInstances_AuditLogConnectionStringId]
GO
ALTER TABLE [dbo].[ApplicationInstances]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstances_TierId] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstances] CHECK CONSTRAINT [FK_ApplicationInstances_TierId]
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceServerMappings_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings] CHECK CONSTRAINT [FK_ApplicationInstanceServerMappings_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceServerMappings_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationTypes] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings] CHECK CONSTRAINT [FK_ApplicationInstanceServerMappings_ApplicationTypeId]
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceServerMappings_ServerId] FOREIGN KEY([ServerId])
REFERENCES [dbo].[Servers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceServerMappings] CHECK CONSTRAINT [FK_ApplicationInstanceServerMappings_ServerId]
GO
ALTER TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceUniformResourceIdentifiers_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers] CHECK CONSTRAINT [FK_ApplicationInstanceUniformResourceIdentifiers_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationInstanceUniformResourceIdentifiers_UniformResourceIdentifierId] FOREIGN KEY([UniformResourceIdentifierId])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[ApplicationInstanceUniformResourceIdentifiers] CHECK CONSTRAINT [FK_ApplicationInstanceUniformResourceIdentifiers_UniformResourceIdentifierId]
GO
ALTER TABLE [dbo].[ApplicationSettings]  WITH NOCHECK ADD  CONSTRAINT [FK_ApplicationSettings_ApplicationInstances] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ApplicationSettings] CHECK CONSTRAINT [FK_ApplicationSettings_ApplicationInstances]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_BrandESignProviderByTier_ClientBrands] FOREIGN KEY([BrandId])
REFERENCES [dbo].[ClientBrands] ([Id])
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] CHECK CONSTRAINT [FK_BrandESignProviderByTier_ClientBrands]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_BrandESignProviderByTier_Credentials] FOREIGN KEY([EOriginalCredentialId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] CHECK CONSTRAINT [FK_BrandESignProviderByTier_Credentials]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier]  WITH CHECK ADD  CONSTRAINT [FK_BrandESignProviderByTier_Endpoints] FOREIGN KEY([ESignAccountServerEndpoint])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] CHECK CONSTRAINT [FK_BrandESignProviderByTier_Endpoints]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_BrandESignProviderByTier_ESignProviders] FOREIGN KEY([ESignProviderId])
REFERENCES [dbo].[ESignProviders] ([Id])
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] CHECK CONSTRAINT [FK_BrandESignProviderByTier_ESignProviders]
GO
ALTER TABLE [dbo].[BrandESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_BrandESignProviderByTier_Tiers] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[BrandESignProviderByTier] CHECK CONSTRAINT [FK_BrandESignProviderByTier_Tiers]
GO
ALTER TABLE [dbo].[ClientBrands]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientBrands_ClientCredentials] FOREIGN KEY([ClientId])
REFERENCES [dbo].[ClientCredentials] ([Id])
GO
ALTER TABLE [dbo].[ClientBrands] CHECK CONSTRAINT [FK_ClientBrands_ClientCredentials]
GO
ALTER TABLE [dbo].[ClientCredentials]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientCredentials_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[ClientCredentials] CHECK CONSTRAINT [FK_ClientCredentials_CredentialsId]
GO
ALTER TABLE [dbo].[ClientESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientESignProviderByTier_ClientCredentials] FOREIGN KEY([ClientId])
REFERENCES [dbo].[ClientCredentials] ([Id])
GO
ALTER TABLE [dbo].[ClientESignProviderByTier] CHECK CONSTRAINT [FK_ClientESignProviderByTier_ClientCredentials]
GO
ALTER TABLE [dbo].[ClientESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientESignProviderByTier_ESignProviders] FOREIGN KEY([ESignProviderId])
REFERENCES [dbo].[ESignProviders] ([Id])
GO
ALTER TABLE [dbo].[ClientESignProviderByTier] CHECK CONSTRAINT [FK_ClientESignProviderByTier_ESignProviders]
GO
ALTER TABLE [dbo].[ClientESignProviderByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_ClientESignProviderByTier_Tiers] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[ClientESignProviderByTier] CHECK CONSTRAINT [FK_ClientESignProviderByTier_Tiers]
GO
ALTER TABLE [dbo].[ConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStrings_ApplicationIntentId] FOREIGN KEY([ApplicationIntentId])
REFERENCES [dbo].[SQLBuilderApplicationIntents] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStrings] CHECK CONSTRAINT [FK_ConnectionStrings_ApplicationIntentId]
GO
ALTER TABLE [dbo].[ConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStrings_ConnectionStringTypesId] FOREIGN KEY([ConnectionStringTypeId])
REFERENCES [dbo].[ConnectionStringTypes] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStrings] CHECK CONSTRAINT [FK_ConnectionStrings_ConnectionStringTypesId]
GO
ALTER TABLE [dbo].[ConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStrings_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStrings] CHECK CONSTRAINT [FK_ConnectionStrings_CredentialsId]
GO
ALTER TABLE [dbo].[ConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStrings_TransactionBindingId] FOREIGN KEY([TransactionBindingId])
REFERENCES [dbo].[SQLBuilderTransactionBindings] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStrings] CHECK CONSTRAINT [FK_ConnectionStrings_TransactionBindingId]
GO
ALTER TABLE [dbo].[ConnectionStrings]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStrings_TypeSystemVersionId] FOREIGN KEY([TypeSystemVersionId])
REFERENCES [dbo].[SQLBuilderTypeSystemVersions] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStrings] CHECK CONSTRAINT [FK_ConnectionStrings_TypeSystemVersionId]
GO
ALTER TABLE [dbo].[ConnectionStringTypes]  WITH NOCHECK ADD  CONSTRAINT [FK_ConnectionStringTypes_MetaDataId] FOREIGN KEY([MetaDataId])
REFERENCES [dbo].[ConnectionStringMetaDatas] ([Id])
GO
ALTER TABLE [dbo].[ConnectionStringTypes] CHECK CONSTRAINT [FK_ConnectionStringTypes_MetaDataId]
GO
ALTER TABLE [dbo].[DataPullGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_DataPullGroups_DataPullServerId] FOREIGN KEY([DataPullServerId])
REFERENCES [dbo].[DataPullServers] ([Id])
GO
ALTER TABLE [dbo].[DataPullGroups] CHECK CONSTRAINT [FK_DataPullGroups_DataPullServerId]
GO
ALTER TABLE [dbo].[DataPullGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_DataPullGroups_EndpointId] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[DataPullGroups] CHECK CONSTRAINT [FK_DataPullGroups_EndpointId]
GO
ALTER TABLE [dbo].[DataPullServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_DataPullServerGroups_DataPullGroupId] FOREIGN KEY([DataPullGroupId])
REFERENCES [dbo].[DataPullGroups] ([Id])
GO
ALTER TABLE [dbo].[DataPullServerGroups] CHECK CONSTRAINT [FK_DataPullServerGroups_DataPullGroupId]
GO
ALTER TABLE [dbo].[DataPullServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_DataPullServerGroups_DataPullServerId] FOREIGN KEY([DataPullServerId])
REFERENCES [dbo].[DataPullServers] ([Id])
GO
ALTER TABLE [dbo].[DataPullServerGroups] CHECK CONSTRAINT [FK_DataPullServerGroups_DataPullServerId]
GO
ALTER TABLE [dbo].[DataPullServers]  WITH NOCHECK ADD  CONSTRAINT [FK_DataPullServers_ConnectionStringId] FOREIGN KEY([ConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[DataPullServers] CHECK CONSTRAINT [FK_DataPullServers_ConnectionStringId]
GO
ALTER TABLE [dbo].[DigitalSignaturesClientConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_DigitalSignaturesClientConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[DigitalSignaturesClientConfigurations] CHECK CONSTRAINT [FK_DigitalSignaturesClientConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[DigitalSignaturesClientConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_DigitalSignaturesClientConfigurations_CadenceServerURI] FOREIGN KEY([CadenceServerURI])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[DigitalSignaturesClientConfigurations] CHECK CONSTRAINT [FK_DigitalSignaturesClientConfigurations_CadenceServerURI]
GO
ALTER TABLE [dbo].[DocumentGenerationConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_DocumentGenerationConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[DocumentGenerationConfigurations] CHECK CONSTRAINT [FK_DocumentGenerationConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[DocumentGenerationConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_DocumentGenerationConfigurations_CompositionURL] FOREIGN KEY([CompositionURL])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[DocumentGenerationConfigurations] CHECK CONSTRAINT [FK_DocumentGenerationConfigurations_CompositionURL]
GO
ALTER TABLE [dbo].[DocusignControlReferences]  WITH CHECK ADD  CONSTRAINT [FK_DocusignControlReferences_DocusignControlTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[DocusignControlTypes] ([Id])
GO
ALTER TABLE [dbo].[DocusignControlReferences] CHECK CONSTRAINT [FK_DocusignControlReferences_DocusignControlTypes]
GO
ALTER TABLE [dbo].[DocuSignProcessorConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_DocuSignProcessorConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[DocuSignProcessorConfigurations] CHECK CONSTRAINT [FK_DocuSignProcessorConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[EncomiaMonitorConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_EncomiaMonitorConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[EncomiaMonitorConfigurations] CHECK CONSTRAINT [FK_EncomiaMonitorConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[Endpoints]  WITH NOCHECK ADD  CONSTRAINT [FK_Endpoints_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[Endpoints] CHECK CONSTRAINT [FK_Endpoints_CredentialsId]
GO
ALTER TABLE [dbo].[Endpoints]  WITH CHECK ADD  CONSTRAINT [FK_Endpoints_EndpointsServiceType] FOREIGN KEY([ServiceType])
REFERENCES [dbo].[EndpointsServiceType] ([Id])
GO
ALTER TABLE [dbo].[Endpoints] CHECK CONSTRAINT [FK_Endpoints_EndpointsServiceType]
GO
ALTER TABLE [dbo].[Endpoints]  WITH NOCHECK ADD  CONSTRAINT [FK_Endpoints_UniformResourceIdentifierId] FOREIGN KEY([UniformResourceIdentifierId])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[Endpoints] CHECK CONSTRAINT [FK_Endpoints_UniformResourceIdentifierId]
GO
ALTER TABLE [dbo].[ExternalProcessorConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_ExternalProcessorConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ExternalProcessorConfigurations] CHECK CONSTRAINT [FK_ExternalProcessorConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[GroupNames]  WITH NOCHECK ADD  CONSTRAINT [FK_GroupNames_MasterEnvironmentId] FOREIGN KEY([MasterEnvironmentId])
REFERENCES [dbo].[Servers] ([Id])
GO
ALTER TABLE [dbo].[GroupNames] CHECK CONSTRAINT [FK_GroupNames_MasterEnvironmentId]
GO
ALTER TABLE [dbo].[HostedServices]  WITH CHECK ADD  CONSTRAINT [FK_HostedServices_ApplicationInstances] FOREIGN KEY([ServiceHostInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[HostedServices] CHECK CONSTRAINT [FK_HostedServices_ApplicationInstances]
GO
ALTER TABLE [dbo].[InternalApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApiConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[InternalApiConfigurations] CHECK CONSTRAINT [FK_InternalApiConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[InternalApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApiConfigurations_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[InternalApiConfigurations] CHECK CONSTRAINT [FK_InternalApiConfigurations_CredentialsId]
GO
ALTER TABLE [dbo].[InternalApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApiConfigurations_DocumentsDirectory] FOREIGN KEY([DocumentsDirectory])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[InternalApiConfigurations] CHECK CONSTRAINT [FK_InternalApiConfigurations_DocumentsDirectory]
GO
ALTER TABLE [dbo].[InternalApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApiConfigurations_FileShareUri] FOREIGN KEY([FileShareUri])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[InternalApiConfigurations] CHECK CONSTRAINT [FK_InternalApiConfigurations_FileShareUri]
GO
ALTER TABLE [dbo].[InternalApis]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApis_InternalApiConfigurationId] FOREIGN KEY([InternalApiConfigurationId])
REFERENCES [dbo].[InternalApiConfigurations] ([Id])
GO
ALTER TABLE [dbo].[InternalApis] CHECK CONSTRAINT [FK_InternalApis_InternalApiConfigurationId]
GO
ALTER TABLE [dbo].[InternalApis]  WITH NOCHECK ADD  CONSTRAINT [FK_InternalApis_UniformResourceIdentifierId] FOREIGN KEY([UniformResourceIdentifierId])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[InternalApis] CHECK CONSTRAINT [FK_InternalApis_UniformResourceIdentifierId]
GO
ALTER TABLE [dbo].[LoggingConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_LoggingConfigurations_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationTypes] ([Id])
GO
ALTER TABLE [dbo].[LoggingConfigurations] CHECK CONSTRAINT [FK_LoggingConfigurations_ApplicationTypeId]
GO
ALTER TABLE [dbo].[LoggingConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_LoggingConfigurations_LogFileURI] FOREIGN KEY([LogFileURI])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[LoggingConfigurations] CHECK CONSTRAINT [FK_LoggingConfigurations_LogFileURI]
GO
ALTER TABLE [dbo].[ModuleAllowedUserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ModuleAllowedUserGroups_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ModuleAllowedUserGroups] CHECK CONSTRAINT [FK_ModuleAllowedUserGroups_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ModuleAllowedUserGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ModuleAllowedUserGroups_ModuleId] FOREIGN KEY([ModuleId])
REFERENCES [dbo].[Modules] ([Id])
GO
ALTER TABLE [dbo].[ModuleAllowedUserGroups] CHECK CONSTRAINT [FK_ModuleAllowedUserGroups_ModuleId]
GO
ALTER TABLE [dbo].[Modules]  WITH NOCHECK ADD  CONSTRAINT [FK_Modules_ApplicationTypeId] FOREIGN KEY([ApplicationTypeId])
REFERENCES [dbo].[ApplicationTypes] ([Id])
GO
ALTER TABLE [dbo].[Modules] CHECK CONSTRAINT [FK_Modules_ApplicationTypeId]
GO
ALTER TABLE [dbo].[PublicApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_PublicApiConfigurations_ApiTesterConfigurationId] FOREIGN KEY([ApiTesterConfigurationId])
REFERENCES [dbo].[APITesterConfigurations] ([Id])
GO
ALTER TABLE [dbo].[PublicApiConfigurations] CHECK CONSTRAINT [FK_PublicApiConfigurations_ApiTesterConfigurationId]
GO
ALTER TABLE [dbo].[PublicApiConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_PublicApiConfigurationss_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[PublicApiConfigurations] CHECK CONSTRAINT [FK_PublicApiConfigurationss_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ServerGroups_GroupNameId] FOREIGN KEY([GroupNameId])
REFERENCES [dbo].[GroupNames] ([Id])
GO
ALTER TABLE [dbo].[ServerGroups] CHECK CONSTRAINT [FK_ServerGroups_GroupNameId]
GO
ALTER TABLE [dbo].[ServerGroups]  WITH NOCHECK ADD  CONSTRAINT [FK_ServerGroups_ServerId] FOREIGN KEY([ServerId])
REFERENCES [dbo].[Servers] ([Id])
GO
ALTER TABLE [dbo].[ServerGroups] CHECK CONSTRAINT [FK_ServerGroups_ServerId]
GO
ALTER TABLE [dbo].[Servers]  WITH NOCHECK ADD  CONSTRAINT [FK_Servers_CadenceConnectionStringId] FOREIGN KEY([CadenceConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[Servers] CHECK CONSTRAINT [FK_Servers_CadenceConnectionStringId]
GO
ALTER TABLE [dbo].[Servers]  WITH NOCHECK ADD  CONSTRAINT [FK_Servers_CredentialsId] FOREIGN KEY([CredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[Servers] CHECK CONSTRAINT [FK_Servers_CredentialsId]
GO
ALTER TABLE [dbo].[Servers]  WITH NOCHECK ADD  CONSTRAINT [FK_Servers_ServerURI] FOREIGN KEY([ServerURI])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[Servers] CHECK CONSTRAINT [FK_Servers_ServerURI]
GO
ALTER TABLE [dbo].[Servers]  WITH NOCHECK ADD  CONSTRAINT [FK_Servers_TierId] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[Servers] CHECK CONSTRAINT [FK_Servers_TierId]
GO
ALTER TABLE [dbo].[TierEndpoints]  WITH CHECK ADD  CONSTRAINT [FK_TierEndpoints_Endpoints] FOREIGN KEY([EndpointId])
REFERENCES [dbo].[Endpoints] ([Id])
GO
ALTER TABLE [dbo].[TierEndpoints] CHECK CONSTRAINT [FK_TierEndpoints_Endpoints]
GO
ALTER TABLE [dbo].[TierEndpoints]  WITH CHECK ADD  CONSTRAINT [FK_TierEndpoints_Tiers] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[TierEndpoints] CHECK CONSTRAINT [FK_TierEndpoints_Tiers]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_CadenceConnectionStringId] FOREIGN KEY([CadenceConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_CadenceConnectionStringId]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_CadenceLoanConnectionStringId] FOREIGN KEY([CadenceLoanConnectionstringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_CadenceLoanConnectionStringId]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_DefaultClientCredentialsId] FOREIGN KEY([DefaultClientCredentialsId])
REFERENCES [dbo].[Credentials] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_DefaultClientCredentialsId]
GO
ALTER TABLE [dbo].[Tiers]  WITH CHECK ADD  CONSTRAINT [FK_Tiers_Grid] FOREIGN KEY([GridId])
REFERENCES [dbo].[Grid] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_Grid]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_InternalApiId] FOREIGN KEY([InternalApiId])
REFERENCES [dbo].[InternalApis] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_InternalApiId]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_MasterEnvironmentId] FOREIGN KEY([MasterEnvironmentId])
REFERENCES [dbo].[Servers] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_MasterEnvironmentId]
GO
ALTER TABLE [dbo].[Tiers]  WITH CHECK ADD  CONSTRAINT [FK_Tiers_MonitorConnectionStrings] FOREIGN KEY([MonitorConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_MonitorConnectionStrings]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_PublicApiUri] FOREIGN KEY([PublicApiUri])
REFERENCES [dbo].[UniformResourceIdentifiers] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_PublicApiUri]
GO
ALTER TABLE [dbo].[Tiers]  WITH NOCHECK ADD  CONSTRAINT [FK_Tiers_WarehouseConnectionStringId] FOREIGN KEY([WarehouseConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[Tiers] CHECK CONSTRAINT [FK_Tiers_WarehouseConnectionStringId]
GO
ALTER TABLE [dbo].[ToolsConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_ToolsConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[ToolsConfigurations] CHECK CONSTRAINT [FK_ToolsConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[ToolsConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_ToolsConfigurations_CadenceConnectionStringId] FOREIGN KEY([DefaultCadenceConnectionStringId])
REFERENCES [dbo].[ConnectionStrings] ([Id])
GO
ALTER TABLE [dbo].[ToolsConfigurations] CHECK CONSTRAINT [FK_ToolsConfigurations_CadenceConnectionStringId]
GO
ALTER TABLE [dbo].[TransactionProcessorConfigurations]  WITH NOCHECK ADD  CONSTRAINT [FK_TransactionProcessorConfigurations_ApplicationInstanceId] FOREIGN KEY([ApplicationInstanceId])
REFERENCES [dbo].[ApplicationInstances] ([Id])
GO
ALTER TABLE [dbo].[TransactionProcessorConfigurations] CHECK CONSTRAINT [FK_TransactionProcessorConfigurations_ApplicationInstanceId]
GO
ALTER TABLE [dbo].[WebhookRetryScheduleByTier]  WITH NOCHECK ADD  CONSTRAINT [FK_WebhookRetryScheduleByTier_TierId] FOREIGN KEY([TierId])
REFERENCES [dbo].[Tiers] ([Id])
GO
ALTER TABLE [dbo].[WebhookRetryScheduleByTier] CHECK CONSTRAINT [FK_WebhookRetryScheduleByTier_TierId]
GO
/****** Object:  StoredProcedure [dbo].[spCloneApplication]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCloneApplication] 
(
	@ApplicationType			NVARCHAR(50),
	@SourceServerIP				NVARCHAR(1024),
	@SourceServerDescription	NVARCHAR(512),
	@TargetServerIp				NVARCHAR(1024),
	@TargetServerDescription	NVARCHAR(512),
	@TargetServerId				UNIQUEIDENTIFIER = NULL,
	@TargetTierId				UNIQUEIDENTIFIER = NULL,
	@TargetInternalApisId		UNIQUEIDENTIFIER = NULL,
	@SourceSqlServerName		NVARCHAR(512) = '',
	@SourceSqlServerIpAddress	NVARCHAR(512) = '',
	@SourceSqlServerPrefix		NVARCHAR(512) = '',
	@TargetSqlServerName		NVARCHAR(512) = '',
	@TargetSqlServerIpAddress	NVARCHAR(512) = '',
	@TargetSqlServerPrefix		NVARCHAR(512) = '',
	@TargetCadenceDatabaseName	NVARCHAR(512) = 'Cadence',
	@OutputToTempTable			BIT = 0
)
AS
DECLARE @SQLScript AS TABLE (Id INT IDENTITY, Line VARCHAR(MAX))
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @Now      DATETIME = GETDATE()')
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @UniqueId UNIQUEIDENTIFIER')
INSERT INTO @SQLScript (Line) VALUES (' ')
DECLARE @SourceServerId UNIQUEIDENTIFIER = (SELECT [Servers].[Id] 
										      FROM [dbo].[Servers] WITH(NOLOCK)
                                              INNER JOIN [dbo].[UniformResourceIdentifiers] WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Servers].[ServerURI] AND [UniformResourceIdentifiers].[Value] = @SourceServerIP)
IF(@TargetServerId IS NULL)
	BEGIN
		SET @TargetServerId = (SELECT [Servers].[Id] 
								 FROM [dbo].[Servers] WITH(NOLOCK)
								 INNER JOIN [dbo].[UniformResourceIdentifiers] WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Servers].[ServerURI] AND [UniformResourceIdentifiers].[Value] = @TargetServerIP)
	END
DECLARE @SQLText				NVARCHAR(MAX)
DECLARE @SQLParameters			NVARCHAR(MAX)
DECLARE @FromWhere				NVARCHAR(MAX)
DECLARE @InsertSql				VARCHAR(MAX)
DECLARE @ValuesSql				VARCHAR(MAX)
DECLARE @VarBit					BIT
DECLARE @VarDateTime			DATETIME
DECLARE @VarInt					INT
DECLARE @VarUniqueIdentifier	UNIQUEIDENTIFIER
DECLARE @VarVarchar				VARCHAR(MAX)
DECLARE @VarNvarchar			NVARCHAR(MAX)
DECLARE @CurrentColumnName		NVARCHAR(128)
DECLARE @DataType				NVARCHAR(128)
DECLARE @CharacterMaxLength		INT
DECLARE @ColumnNames AS TABLE 
(
	[ColumnName]			VARCHAR(128),
	[DataType]				VARCHAR(128),
	[CharacterMaxLength]	INT
)
INSERT INTO @ColumnNames ([ColumnName], [DataType], [CharacterMaxLength]) SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'ApplicationInstances' 
IF (OBJECT_ID('tempdb..#ApplicationInstances') IS NULL)
	BEGIN
		CREATE TABLE #ApplicationInstances ([Id] UNIQUEIDENTIFIER)
		DECLARE colummCursorApplicationInstances CURSOR FOR SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'ApplicationInstances' 
		OPEN colummCursorApplicationInstances
		FETCH NEXT FROM colummCursorApplicationInstances INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName <> 'Id') 
					BEGIN
						SET @SQLText = 'ALTER TABLE #ApplicationInstances ADD [' + @CurrentColumnName + '] ' + @DataType
						IF (@CharacterMaxLength IS NOT NULL)
							BEGIN
								SET @SQLText = @SQLText + '(' + (SELECT(CONVERT(VARCHAR(4), @CharacterMaxLength))) + ')'
							END
						EXEC (@SQLText)
					END
				FETCH NEXT FROM colummCursorApplicationInstances INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END
		CLOSE colummCursorApplicationInstances
		DEALLOCATE colummCursorApplicationInstances
	END
ELSE
	BEGIN
		DELETE FROM #ApplicationInstances
	END
DECLARE insertCursorApplicationInstances CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN insertCursorApplicationInstances
FETCH NEXT FROM insertCursorApplicationInstances INTO @CurrentColumnName
SET @SQLText = 'INSERT INTO #ApplicationInstances ('
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[' + @CurrentColumnName + '], '
		FETCH NEXT FROM insertCursorApplicationInstances INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ')'
CLOSE insertCursorApplicationInstances
DEALLOCATE insertCursorApplicationInstances
DECLARE selectCursorApplicationInstances CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN selectCursorApplicationInstances
FETCH NEXT FROM selectCursorApplicationInstances INTO @CurrentColumnName
SET @SQLText = @SQLText + ' SELECT '
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[ApplicationInstances].[' + @CurrentColumnName + '], '
		FETCH NEXT FROM selectCursorApplicationInstances INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ' FROM [dbo].[ApplicationInstances] WITH(NOLOCK)'
SET @SQLText = @SQLText + ' INNER JOIN [dbo].[ApplicationInstanceServerMappings] WITH(NOLOCK) ON [ApplicationInstanceServerMappings].[ApplicationInstanceId] = [ApplicationInstances].[Id]'
SET @SQLText = @SQLText + ' INNER JOIN [dbo].[ApplicationTypes] WITH(NOLOCK) ON [ApplicationTypes].[Id] = [ApplicationInstances].[ApplicationTypeId] AND [ApplicationTypes].[Value] = ''' + @ApplicationType + ''''
SET @SQLText = @SQLText + ' WHERE [ApplicationInstanceServerMappings].[ServerId] = ''' + CONVERT(NVARCHAR(36), @SourceServerId) + ''''
CLOSE selectCursorApplicationInstances
DEALLOCATE selectCursorApplicationInstances
EXEC (@SQLText)
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @ApplicationInstanceId   UNIQUEIDENTIFIER')
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @ApplicationTypeId       UNIQUEIDENTIFIER')
INSERT INTO @SQLScript (Line) VALUES (' ')
DECLARE @CurrentApplicationInstanceId	UNIQUEIDENTIFIER
DECLARE @ServerId						UNIQUEIDENTIFIER
DECLARE @CadenceConnectionStringId				UNIQUEIDENTIFIER
DECLARE @CadenceEntitiesConnectionStringId		UNIQUEIDENTIFIER
DECLARE @XmlMappingEntitiesConnectionStringId	UNIQUEIDENTIFIER
DECLARE ApplicationCursor CURSOR FOR SELECT [Id] FROM #ApplicationInstances
OPEN ApplicationCursor   
FETCH NEXT FROM ApplicationCursor INTO @CurrentApplicationInstanceId
WHILE @@FETCH_STATUS = 0   
	BEGIN   
		DECLARE @Description VARCHAR(100)
		SET @SQLText = 'SELECT @DescriptionOut = [Description] FROM #ApplicationInstances WHERE [Id] = ''' + CONVERT(NVARCHAR(36), @CurrentApplicationInstanceId) + ''''
		SET @SQLParameters = '@DescriptionOut VARCHAR(100) OUTPUT'
		EXEC sp_executesql @SQLText, @SQLParameters, @DescriptionOut = @Description OUTPUT
		DECLARE @ApplicationTypeId	UNIQUEIDENTIFIER	
		SET @SQLText = 'SELECT @ApplicationTypeIdOut = [ApplicationTypeId] FROM #ApplicationInstances WHERE [Id] = ''' + CONVERT(NVARCHAR(36), @CurrentApplicationInstanceId) + ''''
		SET @SQLParameters = '@ApplicationTypeIdOut UNIQUEIDENTIFIER OUTPUT'
		EXEC sp_executesql @SQLText, @SQLParameters, @ApplicationTypeIdOut = @ApplicationTypeId OUTPUT
		IF (CHARINDEX(@SourceServerDescription, @Description) > 0)
			BEGIN
				SET @Description = REPLACE(@Description, @SourceServerDescription, @TargetServerDescription)
			END
		IF (CHARINDEX(@SourceServerIP, @Description) > 0)
			BEGIN
				SET @Description = REPLACE(@Description, @SourceServerIP, @TargetServerDescription)
			END
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @ApplicationTypeDescription NVARCHAR(50) = (SELECT [Value] FROM [dbo].[ApplicationTypes] WITH(NOLOCK) WHERE [ApplicationTypes].[Id] = @ApplicationTypeId)
		DECLARE @ApplicationInstanceId		UNIQUEIDENTIFIER = NEWID()
		DECLARE @ApplicationServerMappingId	UNIQUEIDENTIFIER = NEWID()
		INSERT INTO @SQLScript (Line) VALUES ('-- Add ApplicationInstances record for ' + @ApplicationTypeDescription)
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('SET @ApplicationInstanceId = ''' + CONVERT(NVARCHAR(36), @ApplicationInstanceId) + '''')
		INSERT INTO @SQLScript (Line) VALUES ('SET @ApplicationTypeId = ''' + CONVERT(NVARCHAR(36), @ApplicationTypeId) + '''')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''ApplicationInstances'')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[ApplicationInstances] WHERE [Id] = @ApplicationInstanceId)')
		INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
		SET @FromWhere = ' FROM #ApplicationInstances WHERE [Id] = ''' + CONVERT(NVARCHAR(36), @CurrentApplicationInstanceId) + ''''
		SET @InsertSql = '                INSERT INTO [dbo].[ApplicationInstances] ([Id], [Description]'
		SET @ValuesSql = '                VALUES (@ApplicationInstanceId' 
		SET @ValuesSql = @ValuesSql + ', ' + '''' + @Description + ''''
		DECLARE valuesCursorApplicationInstances CURSOR FOR SELECT [ColumnName], [DataType], [CharacterMaxLength] FROM @ColumnNames
		OPEN valuesCursorApplicationInstances
		FETCH NEXT FROM valuesCursorApplicationInstances INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName NOT IN ('Id', 'CreatedDate', 'UpdatedDate', 'UpdatedBy', 'Description'))
					BEGIN
						SET @InsertSql = @InsertSql + ', ' + @CurrentColumnName
						SET @ValuesSql = @ValuesSql + ', ' 
						IF (@DataType = 'bit')
							BEGIN
								SET @SQLText = 'SELECT @BitOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@BitOut BIT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @BitOut = @VarBit OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
							END
						IF (@DataType = 'int')
							BEGIN
								SET @SQLText = 'SELECT @IntOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@IntOut INT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @IntOut = @VarInt OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
							END
						IF (@DataType = 'uniqueidentifier')
							BEGIN
								SET @SQLText = 'SELECT @UniqueIdentifierOut = [' + @CurrentColumnName + ']' + @FromWhere
								IF (@CurrentColumnName = 'TierId' AND @TargetTierId IS NOT NULL)
									BEGIN
										SET @ValuesSql = @ValuesSql + '''' + CONVERT(NVARCHAR(36), @TargetTierId) + ''''
									END
								ELSE
									BEGIN
										SET @SQLText = 'SELECT @UniqueIdentifierOut = [' + @CurrentColumnName + ']' + @FromWhere
										SET @SQLParameters = '@UniqueIdentifierOut UNIQUEIDENTIFIER OUTPUT'
										EXEC sp_executesql @SQLText, @SQLParameters, @UniqueIdentifierOut = @VarUniqueIdentifier OUTPUT
										SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
									END
							END
						IF (@DataType = 'nvarchar')
							BEGIN
								SET @SQLText = 'SELECT @NvarcharOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@NvarcharOut NVARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @NvarcharOut = @VarNvarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
							END
						IF (@DataType = 'varchar')
							BEGIN
								SET @SQLText = 'SELECT @VarcharOut = [' + @CurrentColumnName + ']' + @FromWhere 
								SET @SQLParameters = '@VarcharOut VARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @VarcharOut = @VarVarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
							END
					END				
				FETCH NEXT FROM valuesCursorApplicationInstances INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END
		CLOSE valuesCursorApplicationInstances
		DEALLOCATE valuesCursorApplicationInstances
		SET @InsertSql = @InsertSql + ', [CreatedDate], [UpdatedDate], [UpdatedBy])'
		SET @ValuesSql = @ValuesSql + ', @Now, @Now, ''Administrator'')'
		INSERT INTO @SQLScript (Line) VALUES (@InsertSql)
		INSERT INTO @SQLScript (Line) VALUES (@ValuesSql)
		INSERT INTO @SQLScript (Line) VALUES ('            END')
		INSERT INTO @SQLScript (Line) VALUES ('    END')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('-- Add ApplicationInstanceServerMappings record for ' + @ApplicationTypeDescription)
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''ApplicationInstanceServerMappings'')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @ApplicationServerMappingId) + '''')
		INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[ApplicationInstanceServerMappings] WHERE [Id] = @UniqueId)')
		INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[ApplicationInstanceServerMappings] ([Id], [ApplicationInstanceId], [ServerId], [ApplicationTypeId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
		INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, @ApplicationInstanceId, ''' + CONVERT(NVARCHAR(36), @TargetServerId) + ''', @ApplicationTypeId, 1, @Now, @Now, ''Administrator'')')
		INSERT INTO @SQLScript (Line) VALUES ('            END')
		INSERT INTO @SQLScript (Line) VALUES ('    END')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @ConnectionStringIds AS TABLE 
		(
			[Type]			UNIQUEIDENTIFIER,
			[isActive]		BIT, 
			[Description]	NVARCHAR(100)
		)
		INSERT INTO @ConnectionStringIds([Type], [isActive], [Description])
		SELECT [ConnectionStrings].[ConnectionStringTypeId]
			 , [ApplicationInstanceConnectionStrings].[isActive]
			 , [ConnectionStrings].[Description]
		  FROM [dbo].[ApplicationInstanceConnectionStrings] WITH(NOLOCK) 
		  INNER JOIN [dbo].[ConnectionStrings] WITH(NOLOCK) ON [ConnectionStrings].[Id] = [ApplicationInstanceConnectionStrings].[ConnectionStringId]
		 WHERE [ApplicationInstanceConnectionStrings].[ApplicationInstanceId] = @CurrentApplicationInstanceId
		DECLARE @ConnectionStringTypeDump	UNIQUEIDENTIFIER
		DECLARE @IsActiveDump				BIT
		DECLARE @DescriptionDump			NVARCHAR(100)
		DECLARE ConnectionStringDumpCursor CURSOR FOR SELECT [Type], [isActive], [Description] FROM @ConnectionStringIds
		OPEN ConnectionStringDumpCursor   
		FETCH NEXT FROM ConnectionStringDumpCursor INTO @ConnectionStringTypeDump, @IsActiveDump, @DescriptionDump
		PRINT 'Current list of Connections Strings used by application ' + @ApplicationTypeDescription
		PRINT ' '
		WHILE @@FETCH_STATUS = 0   
			BEGIN 
				PRINT '    @ConnectionStringTypeDump:' + + CONVERT(NVARCHAR(36), @ConnectionStringTypeDump) + ', ' + CONVERT(NVARCHAR(1), @IsActiveDump) + ' - ' + @DescriptionDump
				FETCH NEXT FROM ConnectionStringDumpCursor INTO @ConnectionStringTypeDump, @IsActiveDump, @DescriptionDump
			END   
		CLOSE ConnectionStringDumpCursor   
		DEALLOCATE ConnectionStringDumpCursor
		PRINT ' '
		IF (OBJECT_ID('tempdb..#ConnectionStrings') IS NULL)
			BEGIN
				CREATE TABLE #ConnectionStrings 
				(
					[Id]		UNIQUEIDENTIFIER,
					[Type]		NVARCHAR(50)
				)
			END
		DECLARE @ConnectionStringTypeIdDump	UNIQUEIDENTIFIER
		DECLARE @TypeDump					NVARCHAR(50)
		DECLARE ConnectionStringDump2Cursor CURSOR FOR SELECT [Id], [Type] FROM #ConnectionStrings
		OPEN ConnectionStringDump2Cursor   
		FETCH NEXT FROM ConnectionStringDump2Cursor INTO @ConnectionStringTypeIdDump, @TypeDump
		PRINT 'Current list of Connections Strings available to application ' + @ApplicationTypeDescription
		PRINT ' '
		WHILE @@FETCH_STATUS = 0   
			BEGIN 
				PRINT '    @ConnectionStringTypeIdDump:' + + CONVERT(NVARCHAR(36), @ConnectionStringTypeIdDump) + ' - ' + @TypeDump
				FETCH NEXT FROM ConnectionStringDump2Cursor INTO @ConnectionStringTypeIdDump, @TypeDump
			END   
		CLOSE ConnectionStringDump2Cursor   
		DEALLOCATE ConnectionStringDump2Cursor
		PRINT ' '
		IF EXISTS (SELECT 1 FROM @ConnectionStringIds)
			BEGIN
				INSERT INTO @SQLScript (Line) VALUES ('-- Add ApplicationInstanceConnectionStrings records for ' + @ApplicationTypeDescription + ' application.')
				INSERT INTO @SQLScript (Line) VALUES (' ')
				INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''ApplicationInstanceConnectionStrings'')')
				INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
				DECLARE @CurrentConnectionStringType	UNIQUEIDENTIFIER
				DECLARE @IsActive						BIT
				DECLARE ConnectionStringCursor CURSOR FOR SELECT [Type], [isActive] FROM @ConnectionStringIds
				OPEN ConnectionStringCursor   
				FETCH NEXT FROM ConnectionStringCursor INTO @CurrentConnectionStringType, @IsActive
				WHILE @@FETCH_STATUS = 0   
					BEGIN   
						DECLARE @ApplicationInstanceConnectionStringId UNIQUEIDENTIFIER = NEWID()
						DECLARE @CurrentConnectionStringId UNIQUEIDENTIFIER = (SELECT [Id] FROM #ConnectionStrings WHERE @CurrentConnectionStringType = [Type])
						INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @ApplicationInstanceConnectionStringId) + '''')
						INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[ApplicationInstanceConnectionStrings] WHERE [Id] = @UniqueId)')
						INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
						INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[ApplicationInstanceConnectionStrings] ([Id], [ApplicationInstanceId], [ConnectionStringId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
						INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, @ApplicationInstanceId, ''' + CONVERT(NVARCHAR(36), @CurrentConnectionStringId) + ''', ' + CONVERT(NVARCHAR(1), @IsActive) + ', @Now, @Now, ''Administrator'')')
						INSERT INTO @SQLScript (Line) VALUES ('            END')
						FETCH NEXT FROM ConnectionStringCursor INTO  @CurrentConnectionStringType, @IsActive
					END   
				CLOSE ConnectionStringCursor   
				DEALLOCATE ConnectionStringCursor
				INSERT INTO @SQLScript (Line) VALUES ('    END')
				INSERT INTO @SQLScript (Line) VALUES (' ')
			END
		DELETE FROM @ConnectionStringIds
		DECLARE @TablesToClone AS TABLE
		(
			[TableName]			VARCHAR(128),
			[IdColumnName]		VARCHAR(128),
			[TableIdColumnName] VARCHAR(128)
		)
		INSERT INTO @TablesToClone 
		SELECT FK.TABLE_NAME, ISKCU.COLUMN_NAME, ''
		  FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS C
		  INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS FK ON C.CONSTRAINT_NAME = FK.CONSTRAINT_NAME
		  INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS PK ON C.UNIQUE_CONSTRAINT_NAME = PK.CONSTRAINT_NAME
		  INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ISKCU  ON C.CONSTRAINT_NAME = ISKCU.CONSTRAINT_NAME
		  INNER JOIN (SELECT ISTC.TABLE_NAME, ISKCU2.COLUMN_NAME
					   FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS ISTC 
					   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ISKCU2 ON ISTC.CONSTRAINT_NAME = ISKCU2.CONSTRAINT_NAME
					  WHERE ISTC.CONSTRAINT_TYPE = 'PRIMARY KEY'
					 ) PT ON PT.TABLE_NAME = PK.TABLE_NAME
		 WHERE PK.TABLE_NAME = 'ApplicationInstances'
		   AND FK.TABLE_NAME <> 'ApplicationInstanceConnectionStrings'
		   AND FK.TABLE_NAME <> 'ApplicationInstanceServerMappings'
		DECLARE @TableColumnName			NVARCHAR(128)
		DECLARE @TableDataType				NVARCHAR(128)
		DECLARE @TableCharacterMaxLength	INT
		DECLARE @TableColumnNames AS TABLE 
		(
			[ColumnName]			VARCHAR(128),
			[DataType]				VARCHAR(128),
			[CharacterMaxLength]	INT
		)
		DECLARE @TableName		VARCHAR(128)
		DECLARE @IdColumnName	VARCHAR(128)
		DECLARE tableCursorApplicationInstances CURSOR FOR SELECT [TableName], [IdColumnName] FROM @TablesToClone
		OPEN tableCursorApplicationInstances
		FETCH NEXT FROM tableCursorApplicationInstances INTO @TableName, @IdColumnName
		WHILE @@FETCH_STATUS = 0
			BEGIN
				UPDATE @TablesToClone SET [TableIdColumnName] = (SELECT column_name
																   FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
																  WHERE OBJECTPROPERTY(OBJECT_ID(constraint_name), 'IsPrimaryKey') = 1
																	AND table_name = @TableName)
				 WHERE [TableName] = @TableName
				IF (@TableName = 'DocuSignProcessorConfigurations')
					BEGIN
						UPDATE @TablesToClone SET [TableIdColumnName] = 'Id' WHERE [TableName] = @TableName
					END
				DECLARE @PKColumnName VARCHAR(128) = (SELECT [TableIdColumnName] FROM @TablesToClone WHERE [TableName] = @TableName)
				IF (OBJECT_ID('tempdb..#TableBeingCloned') IS NULL)
					BEGIN
						CREATE TABLE #TableBeingCloned ([LineNumber] INT IDENTITY, [Processed] BIT)
					END
				ELSE
					BEGIN
						DELETE FROM #TableBeingCloned
						IF NOT EXISTS (SELECT 1 FROM tempdb.sys.columns WHERE object_id = object_id('tempdb..#TableBeingCloned') AND name = 'LineNumber')
							BEGIN
								SET @SQLText = 'ALTER TABLE #TableBeingCloned ADD [LineNumber] INT IDENTITY'
								EXEC (@SQLText)
							END
						IF NOT EXISTS (SELECT 1 FROM tempdb.sys.columns WHERE object_id = object_id('tempdb..#TableBeingCloned') AND name = 'Processed')
							BEGIN
								SET @SQLText = 'ALTER TABLE #TableBeingCloned ADD [Processed] BIT'
								EXEC (@SQLText)
							END
						DECLARE @DeleteColumnName VARCHAR(128)
						DECLARE deleteColummCursor CURSOR FOR SELECT name FROM tempdb.sys.columns WHERE object_id = object_id('tempdb..#TableBeingCloned') AND name <> 'LineNumber' AND name <> 'Processed'
						OPEN deleteColummCursor
						FETCH NEXT FROM deleteColummCursor INTO @DeleteColumnName
						WHILE @@FETCH_STATUS = 0
							BEGIN
								SET @SQLText = 'ALTER TABLE #TableBeingCloned DROP COLUMN [' + @DeleteColumnName + '] '
								EXEC (@SQLText)
								FETCH NEXT FROM deleteColummCursor INTO @DeleteColumnName
							END
						CLOSE deleteColummCursor
						DEALLOCATE deleteColummCursor
					END
				DECLARE tableColummCursorTableBeingCloned CURSOR FOR SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = @TableName 
				OPEN tableColummCursorTableBeingCloned
				FETCH NEXT FROM tableColummCursorTableBeingCloned INTO @CurrentColumnName, @DataType, @CharacterMaxLength
				WHILE @@FETCH_STATUS = 0
					BEGIN
					SET @SQLText = 'ALTER TABLE #TableBeingCloned ADD [' + @CurrentColumnName + '] ' + @DataType
					IF (@CharacterMaxLength IS NOT NULL)
						BEGIN
							SET @SQLText = @SQLText + '(' + (SELECT(CONVERT(VARCHAR(4), @CharacterMaxLength))) + ')'
						END
					EXEC (@SQLText)
						FETCH NEXT FROM tableColummCursorTableBeingCloned INTO @CurrentColumnName, @DataType, @CharacterMaxLength
					END
				CLOSE tableColummCursorTableBeingCloned
				DEALLOCATE tableColummCursorTableBeingCloned
				INSERT INTO @TableColumnNames ([ColumnName], [DataType], [CharacterMaxLength]) SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = @TableName
				DECLARE insertCursorTableBeingCloned CURSOR FOR SELECT [ColumnName] FROM @TableColumnNames
				OPEN insertCursorTableBeingCloned
				FETCH NEXT FROM insertCursorTableBeingCloned INTO @CurrentColumnName
				SET @SQLText = 'INSERT INTO #TableBeingCloned ([Processed],'
				WHILE @@FETCH_STATUS = 0
					BEGIN
						SET @SQLText = @SQLText + '[' + @CurrentColumnName + '], '
						FETCH NEXT FROM insertCursorTableBeingCloned INTO @CurrentColumnName
					END
				SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
				SET @SQLText = @SQLText + ')'
				CLOSE insertCursorTableBeingCloned
				DEALLOCATE insertCursorTableBeingCloned
				DECLARE selectCursorTableBeingCloned CURSOR FOR SELECT [ColumnName] FROM @TableColumnNames
				OPEN selectCursorTableBeingCloned
				FETCH NEXT FROM selectCursorTableBeingCloned INTO @CurrentColumnName
				SET @SQLText = @SQLText + ' SELECT 0,'
				WHILE @@FETCH_STATUS = 0
					BEGIN
						SET @SQLText = @SQLText + '[' + @CurrentColumnName + '], '
						FETCH NEXT FROM selectCursorTableBeingCloned INTO @CurrentColumnName
					END
				SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
				SET @SQLText = @SQLText + ' FROM [dbo].[' + @TableName + '] WITH(NOLOCK)'
				SET @SQLText = @SQLText + ' WHERE [' + @TableName + '].[' + @IdColumnName + '] = ''' + CONVERT(NVARCHAR(36), @CurrentApplicationInstanceId) + ''''
				CLOSE selectCursorTableBeingCloned
				DEALLOCATE selectCursorTableBeingCloned
				EXEC (@SQLText)
				IF EXISTS (SELECT 1 FROM #TableBeingCloned)
					BEGIN
						INSERT INTO @SQLScript (Line) VALUES ('-- Add ' + @TableName + ' record(s) for ' + @ApplicationTypeDescription + ' application.')
						INSERT INTO @SQLScript (Line) VALUES (' ')
						INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''' + @TableName + ''')')
						INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
						DECLARE @ProcessingTableId INT
						WHILE (SELECT TOP 1 [LineNumber] FROM #TableBeingCloned WHERE [Processed] = 0) > 0
							BEGIN
								SET @ProcessingTableId = (SELECT TOP 1 [LineNumber] FROM #TableBeingCloned WHERE [Processed] = 0)
								DECLARE @NewApplicationInstanceId UNIQUEIDENTIFIER = NEWID()
								INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @NewApplicationInstanceId) + '''')
								INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[' + @TableName + '] WHERE [' + @PKColumnName + '] = @UniqueId)')
								INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
								SET @FromWhere = ' FROM #TableBeingCloned WHERE [LineNumber] = ' + CONVERT(NVARCHAR(10), @ProcessingTableId) 
								SET @InsertSql = '                INSERT INTO [dbo].[' + @TableName + '] ([' + @PKColumnName + ']'
								SET @ValuesSql = '                VALUES (@UniqueId' 
								DECLARE valuesCursorTableToClone CURSOR FOR SELECT [ColumnName], [DataType], [CharacterMaxLength] FROM @TableColumnNames WHERE [ColumnName] <> @PKColumnName
								OPEN valuesCursorTableToClone
								FETCH NEXT FROM valuesCursorTableToClone INTO @CurrentColumnName, @DataType, @CharacterMaxLength
								WHILE @@FETCH_STATUS = 0
									BEGIN
										SET @InsertSql = @InsertSql + ', [' + @CurrentColumnName + ']'
										SET @ValuesSql = @ValuesSql + ', ' 
										IF (@DataType = 'bit')
											BEGIN
												SET @SQLText = 'SELECT @BitOut = [' + @CurrentColumnName + ']' + @FromWhere
												SET @SQLParameters = '@BitOut BIT OUTPUT'
												EXEC sp_executesql @SQLText, @SQLParameters, @BitOut = @VarBit OUTPUT
												SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
											END
										IF (@DataType = 'int')
											BEGIN
												SET @SQLText = 'SELECT @IntOut = [' + @CurrentColumnName + ']' + @FromWhere
												SET @SQLParameters = '@IntOut INT OUTPUT'
												EXEC sp_executesql @SQLText, @SQLParameters, @IntOut = @VarInt OUTPUT
												SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
											END
										IF (@DataType = 'datetime')
											BEGIN
												IF (@CurrentColumnName = 'CreatedDate' OR @CurrentColumnName = 'UpdatedDate')
													BEGIN
														SET @ValuesSql = @ValuesSql + '@Now'
													END
												ELSE
													BEGIN
														SET @SQLText = 'SELECT @DateTimeOut = [' + @CurrentColumnName + ']' + @FromWhere
														SET @SQLParameters = '@DateTimeOut INT OUTPUT'
														EXEC sp_executesql @SQLText, @SQLParameters, @DateTimeOut = @VarDateTime OUTPUT
														SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarDateTime IS NULL) THEN 'NULL' ELSE '''' + CONVERT(VARCHAR, @VarDateTime, 121) + '''' END)
													END
											END
										IF (@DataType = 'uniqueidentifier')
											BEGIN
												IF (@CurrentColumnName = @IdColumnName)
													BEGIN
														SET @ValuesSql = @ValuesSql + '@ApplicationInstanceId'
													END
												ELSE
													BEGIN
														IF (@CurrentColumnName = 'InternalApiId' AND @TargetInternalApisId IS NOT NULL)
															BEGIN
																SET @ValuesSql = @ValuesSql + '''' + CONVERT(NVARCHAR(36), @TargetInternalApisId) + ''''
															END
														ELSE
															BEGIN
																SET @SQLText = 'SELECT @UniqueIdentifierOut = [' + @CurrentColumnName + ']' + @FromWhere
																SET @SQLParameters = '@UniqueIdentifierOut UNIQUEIDENTIFIER OUTPUT'
																EXEC sp_executesql @SQLText, @SQLParameters, @UniqueIdentifierOut = @VarUniqueIdentifier OUTPUT
																SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
															END
													END
											END
										IF (@DataType = 'nvarchar')
											BEGIN
												IF (@CurrentColumnName = 'UpdatedBy')
													BEGIN
														SET @ValuesSql = @ValuesSql + '''Administrator'''
													END
												ELSE
													BEGIN
														SET @SQLText = 'SELECT @NvarcharOut = [' + @CurrentColumnName + ']' + @FromWhere
														SET @SQLParameters = '@NvarcharOut NVARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
														EXEC sp_executesql @SQLText, @SQLParameters, @NvarcharOut = @VarNvarchar OUTPUT
														SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
													END
											END
										IF (@DataType = 'varchar')
											BEGIN
												SET @SQLText = 'SELECT @VarcharOut = [' + @CurrentColumnName + ']' + @FromWhere 
												SET @SQLParameters = '@VarcharOut VARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
												EXEC sp_executesql @SQLText, @SQLParameters, @VarcharOut = @VarVarchar OUTPUT
												SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
											END
										FETCH NEXT FROM valuesCursorTableToClone INTO @CurrentColumnName, @DataType, @CharacterMaxLength
									END
								CLOSE valuesCursorTableToClone
								DEALLOCATE valuesCursorTableToClone
								SET @InsertSql = @InsertSql + ')'
								SET @ValuesSql = @ValuesSql + ')'
								INSERT INTO @SQLScript (Line) VALUES (@InsertSql)
								INSERT INTO @SQLScript (Line) VALUES (@ValuesSql)
								INSERT INTO @SQLScript (Line) VALUES ('            END')
								UPDATE #TableBeingCloned SET [Processed] = 1 WHERE [LineNumber] = @ProcessingTableId
						END
						INSERT INTO @SQLScript (Line) VALUES ('    END')
						INSERT INTO @SQLScript (Line) VALUES (' ')
					END
				DELETE FROM @TableColumnNames 
				DELETE FROM #TableBeingCloned
				FETCH NEXT FROM tableCursorApplicationInstances INTO @TableName, @IdColumnName
			END 
		CLOSE tableCursorApplicationInstances
		DEALLOCATE tableCursorApplicationInstances
		DROP TABLE #TableBeingCloned
		FETCH NEXT FROM ApplicationCursor INTO @CurrentApplicationInstanceId
	END   
CLOSE ApplicationCursor   
DEALLOCATE ApplicationCursor
INSERT INTO @SQLScript (Line) VALUES ('GO')
INSERT INTO @SQLScript (Line) VALUES (' ')
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
IF (@OutputToTempTable = 1)
	BEGIN
		IF (OBJECT_ID('tempdb..#SQLScript') IS NULL)
			BEGIN
				CREATE TABLE #SQLScript (Id INT IDENTITY, Line VARCHAR(MAX))
			END
		ELSE
			BEGIN
				DELETE FROM #SQLScript
			END
		INSERT INTO #SQLScript (Line)
		SELECT [Line] FROM @SQLScript ORDER BY [Id]
	END
ELSE
	BEGIN
		SELECT [Line] FROM @SQLScript ORDER BY [Id]
	END
DELETE FROM @ColumnNames
DROP TABLE #ApplicationInstances
GO
/****** Object:  StoredProcedure [dbo].[spCloneServer]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCloneServer] 
(
	@SourceServerIP					NVARCHAR(1024),
	@SourceServerDescription		NVARCHAR(512),
	@TargetServerIp					NVARCHAR(1024),
	@TargetServerDescription		NVARCHAR(512),
	@TargetTierId					UNIQUEIDENTIFIER = NULL,
	@TargetInternalApisId			UNIQUEIDENTIFIER = NULL,
	@TargetGroupNameId				UNIQUEIDENTIFIER = NULL,
	@TargetDataPullGroupId			UNIQUEIDENTIFIER = NULL,
	@TargetFdwConnectionStringId	UNIQUEIDENTIFIER = NULL,
	@SourceSqlServerName			NVARCHAR(512) = '',
	@SourceSqlServerIpAddress		NVARCHAR(512) = '',
	@SourceSqlServerPrefix			NVARCHAR(512) = '',
	@TargetSqlServerName			NVARCHAR(512) = '',
	@TargetSqlServerIpAddress		NVARCHAR(512) = '',
	@TargetSqlServerPrefix			NVARCHAR(512) = '',
	@TargetCadenceDatabaseName		NVARCHAR(512) = 'Cadence',
	@OutputToTempTable				BIT = 0
)
AS
print @TargetSqlServerIpAddress + ' | ' + @TargetSqlServerName
DECLARE @SQLScript AS TABLE (Id INT IDENTITY, Line VARCHAR(MAX))
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @Now      DATETIME = GETDATE()')
INSERT INTO @SQLScript (Line) VALUES ('DECLARE @UniqueId UNIQUEIDENTIFIER')
INSERT INTO @SQLScript (Line) VALUES (' ')
DECLARE @TargetServerUriId	UNIQUEIDENTIFIER = NEWID()
INSERT INTO @SQLScript (Line) VALUES ('-- Add UniformResourceIdentifiers record for new server.')
INSERT INTO @SQLScript (Line) VALUES (' ')
INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''UniformResourceIdentifiers'')')
INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @TargetServerUriId) + '''')
INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[UniformResourceIdentifiers] WHERE [Id] = @UniqueId)')
INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[UniformResourceIdentifiers] ([Id], [Description], [Value], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + @TargetServerDescription + ''', ''' + @TargetServerIp + ''', 1, @Now, @Now, ''Administrator'')')
INSERT INTO @SQLScript (Line) VALUES ('            END')
INSERT INTO @SQLScript (Line) VALUES ('    END')
INSERT INTO @SQLScript (Line) VALUES (' ')
DECLARE @SourceServerId UNIQUEIDENTIFIER = (SELECT [Servers].[Id] 
										      FROM [dbo].[Servers] WITH(NOLOCK)
                                              INNER JOIN [dbo].[UniformResourceIdentifiers] WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Servers].[ServerURI] AND [UniformResourceIdentifiers].[Value] = @SourceServerIP)
DECLARE @ApplicationInstancesInfo AS TABLE 
(
	[Id]	UNIQUEIDENTIFIER,
	[Type]	UNIQUEIDENTIFIER,
	[Value] NVARCHAR(50)
)
INSERT INTO @ApplicationInstancesInfo ([Id], [Type], [Value])
SELECT [ApplicationInstances].[Id], [ApplicationTypes].[Id], [ApplicationTypes].[Value]
  FROM [dbo].[ApplicationInstances]                    WITH(NOLOCK)
  INNER JOIN [dbo].[ApplicationInstanceServerMappings] WITH(NOLOCK) ON [ApplicationInstanceServerMappings].[ApplicationInstanceId] = [ApplicationInstances].[Id]
  INNER JOIN [dbo].[ApplicationTypes]				   WITH(NOLOCK) ON [ApplicationTypes].[Id] = [ApplicationInstances].[ApplicationTypeId]
 WHERE [ApplicationInstanceServerMappings].[ServerId] = @SourceServerId
DECLARE @ApplicationIdDump			UNIQUEIDENTIFIER
DECLARE @ApplicationTypeIdDump		UNIQUEIDENTIFIER
DECLARE @ApplicationTypeValueDump	NVARCHAR(100)
DECLARE ApplicationInstanceDumpCursor CURSOR FOR SELECT [Id], [Type], [Value] FROM @ApplicationInstancesInfo
OPEN ApplicationInstanceDumpCursor   
FETCH NEXT FROM ApplicationInstanceDumpCursor INTO @ApplicationIdDump, @ApplicationTypeIdDump, @ApplicationTypeValueDump
PRINT ' '
PRINT 'Current list of applications used by SourceServerId ' + CONVERT(NVARCHAR(36), @SourceServerId)
PRINT ' '
WHILE @@FETCH_STATUS = 0   
	BEGIN 
		PRINT '    @ApplicationIdDump: ' + CONVERT(NVARCHAR(36), @ApplicationIdDump) + ', @ApplicationTypeIdDump: ' + CONVERT(NVARCHAR(36), @ApplicationTypeIdDump) + ' - ' + @ApplicationTypeValueDump
		FETCH NEXT FROM ApplicationInstanceDumpCursor INTO @ApplicationIdDump, @ApplicationTypeIdDump, @ApplicationTypeValueDump
	END   
CLOSE ApplicationInstanceDumpCursor   
DEALLOCATE ApplicationInstanceDumpCursor
PRINT ' '
DECLARE @ConnectionStringInfo AS TABLE 
(
	[Id]		UNIQUEIDENTIFIER,
	[Type]		UNIQUEIDENTIFIER,
	[Value]		NVARCHAR(50),
	[AppId]		UNIQUEIDENTIFIER
)
DECLARE @CurrentApplicationInstanceId UNIQUEIDENTIFIER
DECLARE	applicationInformationCursor CURSOR FOR SELECT [Id] FROM @ApplicationInstancesInfo
OPEN applicationInformationCursor   
FETCH NEXT FROM applicationInformationCursor INTO @CurrentApplicationInstanceId
WHILE @@FETCH_STATUS = 0   
	BEGIN   
		INSERT INTO @ConnectionStringInfo([Id], [Type], [Value], [AppId])
		SELECT [ApplicationInstanceConnectionStrings].[ConnectionStringId]
		     , [ConnectionStrings].[ConnectionStringTypeId]
		     , [ConnectionStringTypes].[Value] 
			 , @CurrentApplicationInstanceId
		  FROM [dbo].[ApplicationInstanceConnectionStrings] WITH(NOLOCK) 
		  INNER JOIN [dbo].[ConnectionStrings] WITH(NOLOCK) ON [ConnectionStrings].[Id] = [ApplicationInstanceConnectionStrings].[ConnectionStringId]
		  INNER JOIN [dbo].[ConnectionStringTypes] WITH(NOLOCK) ON [ConnectionStringTypes].[Id] = [ConnectionStrings].[ConnectionStringTypeId] 
		 WHERE [ApplicationInstanceConnectionStrings].[ApplicationInstanceId] = @CurrentApplicationInstanceId
		FETCH NEXT FROM applicationInformationCursor INTO @CurrentApplicationInstanceId
	END   
CLOSE applicationInformationCursor   
DEALLOCATE applicationInformationCursor
DECLARE @ConnectionStringIdDump			UNIQUEIDENTIFIER
DECLARE @ConnectionStringTypeIdDump		UNIQUEIDENTIFIER
DECLARE @ConnectionStringTypeValueDump	NVARCHAR(50)
DECLARE @AppInstanceIdDump				UNIQUEIDENTIFIER
DECLARE ConnectionStringDumpCursor CURSOR FOR SELECT [Id], [Type], [Value], [AppId] FROM @ConnectionStringInfo
OPEN ConnectionStringDumpCursor   
FETCH NEXT FROM ConnectionStringDumpCursor INTO @ConnectionStringIdDump, @ConnectionStringTypeIdDump, @ConnectionStringTypeValueDump, @AppInstanceIdDump
PRINT 'Current list of all connectionstring instances used by SourceServerId ' + CONVERT(NVARCHAR(36), @SourceServerId)
PRINT ' '
WHILE @@FETCH_STATUS = 0   
	BEGIN 
		PRINT '    @AppInstanceIdDump: ' + CONVERT(NVARCHAR(36), @AppInstanceIdDump) + ', @ConnectionStringIdDump: ' + CONVERT(NVARCHAR(36), @ConnectionStringIdDump) + ', @ConnectionStringTypeIdDump: ' + CONVERT(NVARCHAR(36), @ConnectionStringTypeIdDump) + ' - ' + @ConnectionStringTypeValueDump
		FETCH NEXT FROM ConnectionStringDumpCursor INTO @ConnectionStringIdDump, @ConnectionStringTypeIdDump, @ConnectionStringTypeValueDump, @AppInstanceIdDump
	END   
CLOSE ConnectionStringDumpCursor   
DEALLOCATE ConnectionStringDumpCursor
PRINT ' '
DECLARE @ActiveConnectionStringInfo AS TABLE 
(
	[Id]		UNIQUEIDENTIFIER,
	[Type]		UNIQUEIDENTIFIER,
	[Value]		NVARCHAR(50)
)
DECLARE @CurrentConnectionStringId	UNIQUEIDENTIFIER
DECLARE @CurrentConnectionTypeId	UNIQUEIDENTIFIER
DECLARE @CurrentConnectionTypeValue	NVARCHAR(50)
DECLARE	searchConnectionStringCursor CURSOR FOR SELECT [Id], [Type], [Value] FROM @ConnectionStringInfo
OPEN searchConnectionStringCursor   
FETCH NEXT FROM searchConnectionStringCursor INTO @CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue
WHILE @@FETCH_STATUS = 0   
	BEGIN   
		IF NOT EXISTS (SELECT 1 FROM @ActiveConnectionStringInfo WHERE [Id] = @CurrentConnectionStringId AND [Type] = @CurrentConnectionTypeId)
			BEGIN
				INSERT INTO @ActiveConnectionStringInfo([Id], [Type], [Value]) VALUES (@CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue)
			END
		FETCH NEXT FROM searchConnectionStringCursor INTO @CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue
	END   
CLOSE searchConnectionStringCursor   
DEALLOCATE searchConnectionStringCursor
DECLARE @ActiveConnectionStringIdDump			UNIQUEIDENTIFIER
DECLARE @ActiveConnectionStringTypeIdDump		UNIQUEIDENTIFIER
DECLARE @ActiveConnectionStringTypeValueDump	NVARCHAR(50)
DECLARE ActiveConnectionStringDumpCursor CURSOR FOR SELECT [Id], [Type], [Value] FROM @ActiveConnectionStringInfo
OPEN ActiveConnectionStringDumpCursor   
FETCH NEXT FROM ActiveConnectionStringDumpCursor INTO @ActiveConnectionStringIdDump, @ActiveConnectionStringTypeIdDump, @ActiveConnectionStringTypeValueDump
PRINT 'Current list of unique connectionstring instances used by SourceServerId ' + CONVERT(NVARCHAR(36), @SourceServerId)
PRINT ' '
WHILE @@FETCH_STATUS = 0   
	BEGIN 
		PRINT '    @ConnectionStringIdDump: ' + CONVERT(NVARCHAR(36), @ActiveConnectionStringIdDump) + ', @ConnectionStringTypeIdDump: ' + CONVERT(NVARCHAR(36), @ActiveConnectionStringTypeIdDump) + ' - ' + @ActiveConnectionStringTypeValueDump
		FETCH NEXT FROM ActiveConnectionStringDumpCursor INTO @ActiveConnectionStringIdDump, @ActiveConnectionStringTypeIdDump, @ActiveConnectionStringTypeValueDump
	END   
CLOSE ActiveConnectionStringDumpCursor   
DEALLOCATE ActiveConnectionStringDumpCursor
PRINT ' '
IF (OBJECT_ID('tempdb..#ConnectionStrings') IS NULL)
	BEGIN
		CREATE TABLE #ConnectionStrings 
		(
			[Id]		UNIQUEIDENTIFIER,
			[Type]		UNIQUEIDENTIFIER,
			[Value]		NVARCHAR(50)
		)
	END
ELSE
	BEGIN
		DELETE FROM #ConnectionStrings
	END
DECLARE @SourceCadenceConnectionStringId UNIQUEIDENTIFIER
DECLARE @csDescription					NVARCHAR(100)
DECLARE @csCredentialsId				NVARCHAR(36)
DECLARE @csConnectionStringTypeId		NVARCHAR(36)
DECLARE @csApplicationIntentId			NVARCHAR(36)
DECLARE @csApplicationName				NVARCHAR(512)
DECLARE @csAsynchronousProcessing		NVARCHAR(1)
DECLARE @csAttachDBFilename				NVARCHAR(512)
DECLARE @csBrowsableConnectionString	NVARCHAR(1)
DECLARE @csConnectTimeout				NVARCHAR(10)
DECLARE @csContextConnection			NVARCHAR(1)
DECLARE @csCurrentLanguageId			NVARCHAR(10)
DECLARE @csEncrypt						NVARCHAR(1)
DECLARE @csEnlist						NVARCHAR(1)
DECLARE @csIntegratedSecurity			NVARCHAR(1)
DECLARE @csLoadBalanceTimeout			NVARCHAR(10)
DECLARE @csMaxPoolSize					NVARCHAR(10)
DECLARE @csMinPoolSize					NVARCHAR(10)
DECLARE @csMultipleActiveResultsSets	NVARCHAR(1)
DECLARE @csPacketSize					NVARCHAR(10)
DECLARE @csPersistingSecurityInfo		NVARCHAR(1)
DECLARE @csPooling						NVARCHAR(1)
DECLARE @csReplication					NVARCHAR(1)
DECLARE @csTransactionBindingId			NVARCHAR(36)
DECLARE @csTrustServerCertificate		NVARCHAR(1)
DECLARE @csTypeSystemVersionId			NVARCHAR(36)
DECLARE @csUserInstance					NVARCHAR(1)
DECLARE @csWorkStationId				NVARCHAR(512)
DECLARE @csIsActive						NVARCHAR(1)
IF EXISTS (SELECT 1 FROM @ActiveConnectionStringInfo)
	BEGIN
		DECLARE @HeaderPrinted BIT = 0
		DECLARE connectionStringCursor CURSOR FOR SELECT [Id], [Type], [Value] FROM @ActiveConnectionStringInfo
		OPEN connectionStringCursor   
		FETCH NEXT FROM connectionStringCursor INTO @CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue
		WHILE @@FETCH_STATUS = 0   
			BEGIN   
				IF (@CurrentConnectionTypeId = 'A6936B62-429F-4D1E-8612-078A6C254B64' AND @TargetFdwConnectionStringId IS NOT NULL)
					BEGIN
						PRINT '! Changing @CurrentConnectionStringId: ' + CONVERT(NVARCHAR(36), @CurrentConnectionStringId) + ' to @TargetFdwConnectionStringId: ' + CONVERT(NVARCHAR(36), @TargetFdwConnectionStringId)
						PRINT ' '
						SET @CurrentConnectionStringId = @TargetFdwConnectionStringId
					END
				IF (@CurrentConnectionTypeId = 'C1378574-84DE-4249-8BF5-4F2C8F00758C') 
					BEGIN
						SET @SourceCadenceConnectionStringId = @CurrentConnectionStringId
					END
				IF ((@CurrentConnectionTypeId = 'C1378574-84DE-4249-8BF5-4F2C8F00758C') 
				OR  (@CurrentConnectionTypeId = '8B51F06D-C691-486C-8B82-D98D784A533D') 
				OR  (@CurrentConnectionTypeId = '3C448D3D-3253-43CB-8905-AC3829B87BD8'))
					BEGIN
						SET @csDescription					=						(SELECT [Description]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId)
						SET @csCredentialsId				= CONVERT(NVARCHAR(36), (SELECT [CredentialsId]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csConnectionStringTypeId		= CONVERT(NVARCHAR(36), (SELECT [ConnectionStringTypeId]	FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csApplicationIntentId			= CONVERT(NVARCHAR(36), (SELECT [ApplicationIntentId]		FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csApplicationName				=						(SELECT [ApplicationName]			FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId)
						SET @csAsynchronousProcessing		= CONVERT(NVARCHAR(1),	(SELECT [AsynchronousProcessing]	FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csAttachDBFilename				=						(SELECT [AttachDBFilename]			FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId)
						SET @csBrowsableConnectionString	= CONVERT(NVARCHAR(1),  (SELECT [BrowsableConnectionString] FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csConnectTimeout				= CONVERT(NVARCHAR(10), (SELECT [ConnectTimeout]			FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csContextConnection			= CONVERT(NVARCHAR(1),  (SELECT [ContextConnection]			FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csCurrentLanguageId			= CONVERT(NVARCHAR(10), (SELECT [CurrentLanguageId]			FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csEncrypt						= CONVERT(NVARCHAR(1),  (SELECT [Encrypt]					FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csEnlist						= CONVERT(NVARCHAR(1),	(SELECT [Enlist]					FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csIntegratedSecurity			= CONVERT(NVARCHAR(1),	(SELECT [IntegratedSecurity]		FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csLoadBalanceTimeout			= CONVERT(NVARCHAR(10), (SELECT [LoadBalanceTimeout]		FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csMaxPoolSize					= CONVERT(NVARCHAR(10), (SELECT [MaxPoolSize]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csMinPoolSize					= CONVERT(NVARCHAR(10), (SELECT [MinPoolSize]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csMultipleActiveResultsSets	= CONVERT(NVARCHAR(1),	(SELECT [MultipleActiveResultsSets]	FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csPacketSize					= CONVERT(NVARCHAR(10), (SELECT [PacketSize]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csPersistingSecurityInfo		= CONVERT(NVARCHAR(1),	(SELECT [PersistingSecurityInfo]	FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csPooling						= CONVERT(NVARCHAR(1),	(SELECT [Pooling]					FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csReplication					= CONVERT(NVARCHAR(1),	(SELECT [Replication]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csTransactionBindingId			= CONVERT(NVARCHAR(36), (SELECT [TransactionBindingId]		FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csTrustServerCertificate		= CONVERT(NVARCHAR(1),	(SELECT [TrustServerCertificate]	FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csTypeSystemVersionId			= CONVERT(NVARCHAR(36), (SELECT [TypeSystemVersionId]		FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csUserInstance					= CONVERT(NVARCHAR(1),	(SELECT [UserInstance]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csWorkStationId				=						(SELECT [Workstationid]				FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId)
						SET @csIsActive						= CONVERT(NVARCHAR(1),	(SELECT [IsActive]					FROM [dbo].[ConnectionStrings] WITH(NOLOCK) WHERE [Id] = @CurrentConnectionStringId))
						SET @csDescription = REPLACE(@csDescription, @SourceServerDescription, @TargetServerDescription)
						SET @csDescription = REPLACE(@csDescription, @SourceSqlServerIpAddress, @TargetSqlServerIpAddress)
						SET @csDescription = REPLACE(@csDescription, @SourceSqlServerName, @TargetSqlServerName)
						SET @csDescription = REPLACE(@csDescription, @SourceSqlServerPrefix, @TargetSqlServerPrefix)
						DECLARE @IdToUse UNIQUEIDENTIFIER = NEWID()
						IF (@HeaderPrinted = 0)
							BEGIN
								INSERT INTO @SQLScript (Line) VALUES ('-- Add NEW ConnectionStrings records for needed for new appliance and that will be used by all applications that need Cadence database connectivity.')
								INSERT INTO @SQLScript (Line) VALUES (' ')
								INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''ConnectionStrings'')')
								INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
								SET @HeaderPrinted = 1
							END
						INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @IdToUse) + '''')
						INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[ConnectionStrings] WHERE [Id] = @UniqueId)')
						INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
						INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[ConnectionStrings] ([Id], [Description], [CredentialsId], [ConnectionStringTypeId], [ApplicationIntentId], [ApplicationName], [AsynchronousProcessing], [AttachDBFilename], [BrowsableConnectionString], [ConnectTimeout], [ContextConnection], [CurrentLanguageId], [DataSource], [Encrypt], [Enlist], [InitialCatalog], [IntegratedSecurity], [LoadBalanceTimeout], [MaxPoolSize], [MinPoolSize], [MultipleActiveResultsSets], [PacketSize], [PersistingSecurityInfo], [Pooling], [Replication], [TransactionBindingId], [TrustServerCertificate], [TypeSystemVersionId], [UserInstance], [Workstationid], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
						INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + @csDescription + ''', ''' 
																									  + @csCredentialsId + ''', ''' 
																									  + @csConnectionStringTypeId + ''', ''' 
																									  + @csApplicationIntentId + ''', ''' 
																									  + @csApplicationName + ''', ' 
																									  + @csAsynchronousProcessing + ', ''' 
																									  + @csAttachDBFilename + ''', ' 
																									  + @csBrowsableConnectionString + ', ' 
																									  + @csConnectTimeout + ', ' 
																									  + @csContextConnection + ', ' 
																									  + @csCurrentLanguageId + ', ''' 
																									  + @TargetSqlServerIpAddress + ''', ' 
																									  + @csEncrypt + ', ' 
																									  + @csEnlist + ', ''' 
																									  + @TargetCadenceDatabaseName + ''', ' 
																									  + @csIntegratedSecurity + ', ' 
																									  + @csLoadBalanceTimeout + ', ' 
																									  + @csMaxPoolSize + ', ' 
																									  + @csMinPoolSize + ', ' 
																									  + @csMultipleActiveResultsSets + ', ' 
																									  + @csPacketSize + ', ' 
																									  + @csPersistingSecurityInfo + ', ' 
																									  + @csPooling + ', ' 
																									  + @csReplication + ', '''
																									  + @csTransactionBindingId + ''', ' 
																									  + @csTrustServerCertificate + ', ''' 
																									  + @csTypeSystemVersionId + ''', ' 
																									  + @csUserInstance + ', ''' 
																									  + @csWorkStationId + ''', '
																									  + @csIsActive 
																									  + ', @Now, @Now, ''Administrator'')')
						INSERT INTO @SQLScript (Line) VALUES ('            END')
						INSERT INTO #ConnectionStrings([Id], [Type], [Value]) VALUES (@IdToUse, @CurrentConnectionTypeId, @CurrentConnectionTypeValue)
						PRINT '    @CurrentConnectionStringId: ' + CONVERT(NVARCHAR(36), @CurrentConnectionStringId) + ' Replaced By: ' + CONVERT(NVARCHAR(36), @IdToUse) + ', @CurrentConnectionTypeId: ' + CONVERT(NVARCHAR(36), @CurrentConnectionTypeId) + ' - ' + @CurrentConnectionTypeValue
					END
				ELSE
					BEGIN
						INSERT INTO #ConnectionStrings([Id], [Type], [Value]) VALUES (@CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue)
						PRINT '    @CurrentConnectionStringId: ' + CONVERT(NVARCHAR(36), @CurrentConnectionStringId) + '                                                  , @CurrentConnectionTypeId: ' + CONVERT(NVARCHAR(36), @CurrentConnectionTypeId) + ' - ' + @CurrentConnectionTypeValue
					END
				FETCH NEXT FROM connectionStringCursor INTO @CurrentConnectionStringId, @CurrentConnectionTypeId, @CurrentConnectionTypeValue						
			END   
		CLOSE connectionStringCursor   
		DEALLOCATE connectionStringCursor
		IF(@HeaderPrinted = 1)
			BEGIN
				INSERT INTO @SQLScript (Line) VALUES ('    END')
				INSERT INTO @SQLScript (Line) VALUES (' ')
			END
			PRINT ' '
	END
DECLARE @TargetServerId	UNIQUEIDENTIFIER = NEWID()
DECLARE @NewTierId UNIQUEIDENTIFIER 
IF (@TargetTierId IS NOT NULL)
	BEGIN
		SET @NewTierId = @TargetTierId
	END
ELSE
	BEGIN
		SET @NewTierId = (SELECT [TierId] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
	END
PRINT 'Processing Tier using id:' + CONVERT(NVARCHAR(36), @NewTierId)
DECLARE @NewConnectionStringId		UNIQUEIDENTIFIER = (SELECT [Id] FROM #ConnectionStrings WHERE [Type] = 'C1378574-84DE-4249-8BF5-4F2C8F00758C')
DECLARE @NewXPathConfigEnvironment	BIT = (SELECT [XPathConfigEnvironment] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
DECLARE @NewBookmarkTitlesEditable	BIT = (SELECT [BookmarkTitlesEditable] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
DECLARE @NewisDefault				BIT = (SELECT [isDefault] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
DECLARE @NewClientPackageEditable	BIT = (SELECT [ClientPackageEditable] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
DECLARE @NewCredentialsId			UNIQUEIDENTIFIER = (SELECT [CredentialsId] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @SourceServerId)
INSERT INTO @SQLScript (Line) VALUES ('-- Add Servers record for new server.')
INSERT INTO @SQLScript (Line) VALUES (' ')
INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''Servers'')')
INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @TargetServerId) + '''')
INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[Servers] WHERE [Id] = @UniqueId)')
INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[Servers] ([Id], [ServerURI], [Description], [TierId], [CadenceConnectionStringId], [XPathConfigEnvironment], [BookmarkTitlesEditable], [isDefault], [ClientPackageEditable], [CredentialsId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + CONVERT(NVARCHAR(36), @TargetServerUriId) + ''', ''' 
                                                                              + @TargetServerDescription + ''', ' 
                                                                              + (CASE WHEN (@NewTierId IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @NewTierId) + '''' END) + ', ' 
                                                                              + (CASE WHEN (@NewConnectionStringId IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @NewConnectionStringId) + '''' END) + ', ' 
                                                                              + (CASE WHEN (@NewXPathConfigEnvironment IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @NewXPathConfigEnvironment) END) + ', ' 
                                                                              + (CASE WHEN (@NewBookmarkTitlesEditable IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @NewBookmarkTitlesEditable) END) + ', ' 
                                                                              + (CASE WHEN (@NewisDefault IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @NewisDefault) END) + ', ' 
                                                                              + (CASE WHEN (@NewClientPackageEditable IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @NewClientPackageEditable) END) + ', ' 
                                                                              + (CASE WHEN (@NewCredentialsId IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @NewCredentialsId) END) + '''' 
                                                                              + ', 1, @Now, @Now, ''Administrator'')')
INSERT INTO @SQLScript (Line) VALUES ('            END')
INSERT INTO @SQLScript (Line) VALUES ('    END')
INSERT INTO @SQLScript (Line) VALUES (' ')
PRINT 'Processing Groups' 
DECLARE @ServerGroups AS TABLE ([GroupNameId] UNIQUEIDENTIFIER)
IF (@TargetGroupNameId IS NULL)
	BEGIN
		INSERT INTO @ServerGroups([GroupNameId])
		SELECT [GroupNameId] FROM [dbo].[ServerGroups] WITH(NOLOCK) WHERE [ServerId] = @SourceServerId AND [isActive] = 1
	END
ELSE
	BEGIN
		INSERT INTO @ServerGroups([GroupNameId]) VALUES (@TargetGroupNameId)
	END
IF EXISTS (SELECT 1 FROM @ServerGroups)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-- Add ServerGroups records for new server.')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''ServerGroups'')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		DECLARE @CurrentGroupNameId UNIQUEIDENTIFIER
		DECLARE ServerGroupCursor CURSOR FOR SELECT [GroupNameId] FROM @ServerGroups
		OPEN ServerGroupCursor   
		FETCH NEXT FROM ServerGroupCursor INTO @CurrentGroupNameId
		WHILE @@FETCH_STATUS = 0   
			BEGIN   
				DECLARE @ServerGroupId UNIQUEIDENTIFIER = NEWID()
				INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @ServerGroupId) + '''')
				INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[ServerGroups] WHERE [Id] = @UniqueId)')
				INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
				INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[ServerGroups] ([Id], [ServerId], [GroupNameId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
				INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + CONVERT(NVARCHAR(36), @TargetServerId) + ''', ''' + CONVERT(NVARCHAR(36), @CurrentGroupNameId) + ''', 1, @Now, @Now, ''Administrator'')')
				INSERT INTO @SQLScript (Line) VALUES ('            END')
				FETCH NEXT FROM ServerGroupCursor INTO @CurrentGroupNameId
			END   
		CLOSE ServerGroupCursor   
		DEALLOCATE ServerGroupCursor
		INSERT INTO @SQLScript (Line) VALUES ('    END')
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
PRINT 'Processing DataPull Servers: for @SourceCadenceConnectionStringId = ' + CONVERT(NVARCHAR(36), @SourceCadenceConnectionStringId)
PRINT ' '
DECLARE @SourceDataPullServerId UNIQUEIDENTIFIER = (SELECT [DataPullServers].[Id] FROM [dbo].[DataPullServers] WITH(NOLOCK) WHERE [DataPullServers].[ConnectionStringId] = @SourceCadenceConnectionStringId AND [DataPullServers].[isActive] = 1) 
IF (@SourceDataPullServerId IS NOT NULL OR @TargetDataPullGroupId IS NOT NULL)
	BEGIN
		DECLARE @NewDataPullServerId UNIQUEIDENTIFIER = NEWID()
		INSERT INTO @SQLScript (Line) VALUES ('-- Add DataPullServers record for new server.')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''DataPullServers'')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @NewDataPullServerId) + '''')
		INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[DataPullServers] WHERE [Id] = @UniqueId)')
		INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[DataPullServers] ([Id], [DisplayName], [ConnectionStringId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
		INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + @TargetServerDescription + ''', ''' + CONVERT(NVARCHAR(36), @NewConnectionStringId) + ''', 1, @Now, @Now, ''Administrator'')')
		INSERT INTO @SQLScript (Line) VALUES ('            END')
		INSERT INTO @SQLScript (Line) VALUES ('    END')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @DataPullServerGroups AS TABLE ([DataPullGroupId] UNIQUEIDENTIFIER)
		IF (@TargetDataPullGroupId IS NULL)
			BEGIN
				INSERT INTO @DataPullServerGroups([DataPullGroupId])
				SELECT [DataPullGroupId] FROM [dbo].[DataPullServerGroups] WITH(NOLOCK) WHERE [DataPullServerId] = @SourceDataPullServerId AND [isActive] = 1
			END
		ELSE
			BEGIN
				INSERT INTO @DataPullServerGroups([DataPullGroupId]) VALUES (@TargetDataPullGroupId)
			END
		IF EXISTS (SELECT 1 FROM @DataPullServerGroups)
			BEGIN
				INSERT INTO @SQLScript (Line) VALUES ('-- Add DataPullServerGroups records for new server.')
				INSERT INTO @SQLScript (Line) VALUES (' ')
				INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (SELECT 1 FROM sysobjects obj INNER JOIN sysusers us ON obj.UID = us.UID WHERE obj.xtype = ''u'' AND us.Name = ''dbo'' AND obj.name = ''DataPullServerGroups'')')
				INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
				DECLARE @CurrentDataPullGroupId UNIQUEIDENTIFIER
				DECLARE DataPullServerGroupCursor CURSOR FOR SELECT [DataPullGroupId] FROM @DataPullServerGroups
				OPEN DataPullServerGroupCursor   
				FETCH NEXT FROM DataPullServerGroupCursor INTO @CurrentDataPullGroupId
				WHILE @@FETCH_STATUS = 0   
					BEGIN   
						DECLARE @DataPullServerGroupId UNIQUEIDENTIFIER = NEWID()
						INSERT INTO @SQLScript (Line) VALUES ('        SET @UniqueId = ''' + CONVERT(NVARCHAR(36), @DataPullServerGroupId) + '''')
						INSERT INTO @SQLScript (Line) VALUES ('        IF NOT EXISTS (SELECT 1 FROM [dbo].[DataPullServerGroups] WHERE [Id] = @UniqueId)')
						INSERT INTO @SQLScript (Line) VALUES ('            BEGIN')
						INSERT INTO @SQLScript (Line) VALUES ('                INSERT INTO [dbo].[DataPullServerGroups] ([Id], [DataPullGroupId], [DataPullServerId], [isActive], [CreatedDate], [UpdatedDate], [UpdatedBy])')
						INSERT INTO @SQLScript (Line) VALUES ('                VALUES (@UniqueId, ''' + CONVERT(NVARCHAR(36), @CurrentDataPullGroupId) + ''', ''' + CONVERT(NVARCHAR(36), @NewDataPullServerId) + ''', 1, @Now, @Now, ''Administrator'')')
						INSERT INTO @SQLScript (Line) VALUES ('            END')
						FETCH NEXT FROM DataPullServerGroupCursor INTO @CurrentDataPullGroupId
					END   
				CLOSE DataPullServerGroupCursor   
				DEALLOCATE DataPullServerGroupCursor
				INSERT INTO @SQLScript (Line) VALUES ('    END')
				INSERT INTO @SQLScript (Line) VALUES (' ')
			END
	END
INSERT INTO @SQLScript (Line) VALUES ('GO')
INSERT INTO @SQLScript (Line) VALUES (' ')
PRINT 'Processing Applications' 
PRINT ' '
DECLARE @ApplicationTypeValue NVARCHAR(50)
DECLARE	applicationTypeValueCursor CURSOR FOR SELECT [Value] FROM @ApplicationInstancesInfo
OPEN applicationTypeValueCursor   
FETCH NEXT FROM applicationTypeValueCursor INTO @ApplicationTypeValue
WHILE @@FETCH_STATUS = 0   
	BEGIN   
		IF (@OutputToTempTable = 1)
			BEGIN
				IF (OBJECT_ID('tempdb..#SQLScript') IS NULL)
					BEGIN
						CREATE TABLE #SQLScript (Id INT IDENTITY, Line VARCHAR(MAX))
					END
				ELSE
					BEGIN
						DELETE FROM #SQLScript
					END
				EXEC spCloneApplication @ApplicationType = @ApplicationTypeValue
				                                         , @SourceServerIP = @SourceServerIP
														 , @SourceServerDescription = @SourceServerDescription
														 , @TargetServerIp = @TargetServerIp
														 , @TargetServerDescription = @TargetServerDescription
														 , @TargetServerId = @TargetServerId
														 , @TargetTierId = @TargetTierId
														 , @TargetInternalApisId = @TargetInternalApisId
														 , @SourceSqlServerName = @SourceSqlServerName
														 , @SourceSqlServerIpAddress = @SourceSqlServerIpAddress
														 , @SourceSqlServerPrefix = @SourceSqlServerPrefix
														 , @TargetSqlServerName = @TargetSqlServerName
														 , @TargetSqlServerIpAddress = @TargetSqlServerIpAddress
														 , @TargetSqlServerPrefix = @TargetSqlServerPrefix
														 , @TargetCadenceDatabaseName = @TargetCadenceDatabaseName
														 , @OutputToTempTable = @OutputToTempTable
				INSERT INTO @SQLScript(Line) 
				SELECT [Line] FROM #SQLScript ORDER BY [Id]
				DROP TABLE #SQLScript
			END
		ELSE
			BEGIN
				INSERT INTO @SQLScript(Line) EXEC spCloneApplication @ApplicationType = @ApplicationTypeValue
																   , @SourceServerIP = @SourceServerIP
																   , @SourceServerDescription = @SourceServerDescription
																   , @TargetServerIp = @TargetServerIp
																   , @TargetServerDescription = @TargetServerDescription
														           , @TargetServerId = @TargetServerId
																   , @TargetTierId = @TargetTierId
																   , @TargetInternalApisId= @TargetInternalApisId
																   , @SourceSqlServerName = @SourceSqlServerName
																   , @SourceSqlServerIpAddress = @SourceSqlServerIpAddress
														           , @SourceSqlServerPrefix = @SourceSqlServerPrefix
																   , @TargetSqlServerName = @TargetSqlServerName
																   , @TargetSqlServerIpAddress = @TargetSqlServerIpAddress
															       , @TargetSqlServerPrefix = @TargetSqlServerPrefix
																   , @TargetCadenceDatabaseName = @TargetCadenceDatabaseName
																   , @OutputToTempTable = @OutputToTempTable
			END
		FETCH NEXT FROM applicationTypeValueCursor INTO @ApplicationTypeValue
	END   
CLOSE applicationTypeValueCursor   
DEALLOCATE applicationTypeValueCursor
PRINT 'Processing Completed' 
PRINT ' '
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
SELECT [Line] FROM @SQLScript ORDER BY [Id]
GO
/****** Object:  StoredProcedure [dbo].[spCopyDocusignControlReferences]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCopyDocusignControlReferences] 
AS
DECLARE @SQLScript AS TABLE (Id INT IDENTITY, Line VARCHAR(MAX))
DECLARE @SQLText				NVARCHAR(MAX)
DECLARE @SQLParameters			NVARCHAR(MAX)
DECLARE @FromWhere				NVARCHAR(MAX)
DECLARE @InsertSql				VARCHAR(MAX)
DECLARE @ValuesSql				VARCHAR(MAX)
DECLARE @UpdateSql				VARCHAR(MAX)
DECLARE @VarBit					BIT
DECLARE @VarDateTime			DATETIME
DECLARE @VarInt					INT
DECLARE @VarUniqueIdentifier	UNIQUEIDENTIFIER
DECLARE @VarVarchar				VARCHAR(MAX)
DECLARE @VarNvarchar			NVARCHAR(MAX)
DECLARE @CurrentColumnName		NVARCHAR(128)
DECLARE @DataType				NVARCHAR(128)
DECLARE @CharacterMaxLength		INT
DECLARE @ColumnNames AS TABLE 
(
	[ColumnName]			VARCHAR(128),
	[DataType]				VARCHAR(128),
	[CharacterMaxLength]	INT
)
INSERT INTO @ColumnNames ([ColumnName], [DataType], [CharacterMaxLength]) SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'DocusignControlRadioGroups' 
IF (OBJECT_ID('tempdb..#RadioGroups') IS NULL)
	BEGIN
		CREATE TABLE #RadioGroups ([Id] int)
		DECLARE colummCursorRadioGroups CURSOR FOR SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'DocusignControlRadioGroups' 
		OPEN colummCursorRadioGroups
		FETCH NEXT FROM colummCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName <> 'Id') 
					BEGIN
						SET @SQLText = 'ALTER TABLE #RadioGroups ADD [' + @CurrentColumnName + '] ' + @DataType
						IF (@CharacterMaxLength IS NOT NULL)
							BEGIN
								SET @SQLText = @SQLText + '(' + (SELECT(CONVERT(VARCHAR(4), @CharacterMaxLength))) + ')'
							END
						EXEC (@SQLText)
					END
				FETCH NEXT FROM colummCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END
		CLOSE colummCursorRadioGroups
		DEALLOCATE colummCursorRadioGroups
	END
ELSE
	BEGIN
		DELETE FROM #RadioGroups
	END
DECLARE insertCursorRadioGroups CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN insertCursorRadioGroups
FETCH NEXT FROM insertCursorRadioGroups INTO @CurrentColumnName
SET @SQLText = 'INSERT INTO #RadioGroups ('
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[' + @CurrentColumnName + '], '
		FETCH NEXT FROM insertCursorRadioGroups INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ')'
CLOSE insertCursorRadioGroups
DEALLOCATE insertCursorRadioGroups
DECLARE selectCursorRadioGroups CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN selectCursorRadioGroups
FETCH NEXT FROM selectCursorRadioGroups INTO @CurrentColumnName
SET @SQLText = @SQLText + ' SELECT '
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[DocusignControlRadioGroups].[' + @CurrentColumnName + '], '
		FETCH NEXT FROM selectCursorRadioGroups INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ' FROM [dbo].[DocusignControlRadioGroups] WITH(NOLOCK)'
CLOSE selectCursorRadioGroups
DEALLOCATE selectCursorRadioGroups
EXEC (@SQLText)
DECLARE @CurrentRadioGroup	int
DECLARE RadioGroupCursor CURSOR FOR SELECT [Id] FROM #RadioGroups
OPEN RadioGroupCursor   
FETCH NEXT FROM RadioGroupCursor INTO @CurrentRadioGroup
WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (Select 1 FROM dbo.DocusignControlRadioGroups Where [Id] = ' + Convert(varchar(max),@CurrentRadioGroup) + ')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('        UPDATE dbo.DocusignControlRadioGroups')
		INSERT INTO @SQLScript (Line) VALUES ('        SET')
		SET @ValuesSql = '                VALUES (' + Convert(varchar(max),@CurrentRadioGroup)
		SET @InsertSql = '                ([Id]'
		SET @UpdateSql = ''
		SET @FromWhere = 'FROM dbo.DocusignControlRadioGroups WHERE [Id] = ' + Convert(varchar(max),@CurrentRadioGroup)
		DECLARE valuesCursorRadioGroups CURSOR FOR SELECT [ColumnName], [DataType], [CharacterMaxLength] FROM @ColumnNames
		OPEN valuesCursorRadioGroups
		FETCH NEXT FROM valuesCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName NOT IN ('Id', 'CreatedDate', 'UpdatedDate', 'UpdatedBy', 'Description'))
					BEGIN
						SET @InsertSql = @InsertSql + ', ' + @CurrentColumnName
						IF(LEN(@UpdateSql) > 0)
							BEGIN
								SET @UpdateSql = @UpdateSql + ', ' + @CurrentColumnName + ' = '
							END
						ELSE
							BEGIN
								SET @UpdateSql = '        ' + @CurrentColumnName + ' = '
							END
						SET @ValuesSql = @ValuesSql + ', ' 
						IF (@DataType = 'bit')
							BEGIN
								SET @SQLText = 'SELECT @BitOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@BitOut BIT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @BitOut = @VarBit OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
							END
						IF (@DataType = 'int')
							BEGIN
								SET @SQLText = 'SELECT @IntOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@IntOut INT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @IntOut = @VarInt OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
							END
						IF (@DataType = 'uniqueidentifier')
							BEGIN
								SET @SQLText = 'SELECT @UniqueIdentifierOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@UniqueIdentifierOut UNIQUEIDENTIFIER OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @UniqueIdentifierOut = @VarUniqueIdentifier OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
							END
						IF (@DataType = 'nvarchar')
							BEGIN
								SET @SQLText = 'SELECT @NvarcharOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@NvarcharOut NVARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @NvarcharOut = @VarNvarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
							END
						IF (@DataType = 'varchar')
							BEGIN
								SET @SQLText = 'SELECT @VarcharOut = [' + @CurrentColumnName + ']' + @FromWhere 
								SET @SQLParameters = '@VarcharOut VARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @VarcharOut = @VarVarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
							END
					END				
				FETCH NEXT FROM valuesCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END 
			CLOSE valuesCursorRadioGroups
			DEALLOCATE valuesCursorRadioGroups
			INSERT INTO @SQLScript (Line) VALUES (@UpdateSql)
			INSERT INTO @SQLScript (Line) VALUES ('        WHERE [Id] = ' + Convert(varchar,@CurrentRadioGroup))
			INSERT INTO @SQLScript (Line) VALUES ('    END')
			INSERT INTO @SQLScript (Line) VALUES ('ELSE')
			INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
			INSERT INTO @SQLScript (Line) VALUES ('        SET IDENTITY_INSERT dbo.DocusignControlRadioGroups ON')
			INSERT INTO @SQLScript (Line) VALUES ('            INSERT INTO dbo.DocusignControlRadioGroups')
			INSERT INTO @SQLScript (Line) VALUES (@InsertSql + ')')
			INSERT INTO @SQLScript (Line) VALUES (@ValuesSql + ')')
			INSERT INTO @SQLScript (Line) VALUES ('        SET IDENTITY_INSERT dbo.DocusignControlRadioGroups OFF')
			INSERT INTO @SQLScript (Line) VALUES ('    END')
			INSERT INTO @SQLScript (Line) VALUES (' ')
			FETCH NEXT FROM RadioGroupCursor INTO @CurrentRadioGroup
	END	
CLOSE RadioGroupCursor
DEALLOCATE RadioGroupCursor
DELETE FROM @ColumnNames
INSERT INTO @ColumnNames ([ColumnName], [DataType], [CharacterMaxLength]) SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'DocusignControlReferences' 
IF (OBJECT_ID('tempdb..#References') IS NULL)
	BEGIN
		CREATE TABLE #References ([Id] int)
		DECLARE colummCursorRadioGroups CURSOR FOR SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS  WHERE TABLE_NAME = 'DocusignControlReferences' 
		OPEN colummCursorRadioGroups
		FETCH NEXT FROM colummCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName <> 'Id') 
					BEGIN
						SET @SQLText = 'ALTER TABLE #References ADD [' + @CurrentColumnName + '] ' + @DataType
						IF (@CharacterMaxLength IS NOT NULL)
							IF (@CharacterMaxLength < 0)
								BEGIN
									SET @SQLText = @SQLText + '(max)'
								END
							ELSE
								BEGIN
									SET @SQLText = @SQLText + '(' + (SELECT(CONVERT(VARCHAR(4), @CharacterMaxLength))) + ')'
								END
						EXEC (@SQLText)
					END
				FETCH NEXT FROM colummCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END
		CLOSE colummCursorRadioGroups
		DEALLOCATE colummCursorRadioGroups
	END
ELSE
	BEGIN
		DELETE FROM #References
	END
DECLARE insertCursorRadioGroups CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN insertCursorRadioGroups
FETCH NEXT FROM insertCursorRadioGroups INTO @CurrentColumnName
SET @SQLText = 'INSERT INTO #References ('
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[' + @CurrentColumnName + '], '
		FETCH NEXT FROM insertCursorRadioGroups INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ')'
CLOSE insertCursorRadioGroups
DEALLOCATE insertCursorRadioGroups
DECLARE selectCursorRadioGroups CURSOR FOR SELECT [ColumnName] FROM @ColumnNames
OPEN selectCursorRadioGroups
FETCH NEXT FROM selectCursorRadioGroups INTO @CurrentColumnName
SET @SQLText = @SQLText + ' SELECT '
WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @SQLText = @SQLText + '[DocusignControlReferences].[' + @CurrentColumnName + '], '
		FETCH NEXT FROM selectCursorRadioGroups INTO @CurrentColumnName
	END
SET @SQLText = LEFT(@SQLText, LEN(@SQLText) - 1) 
SET @SQLText = @SQLText + ' FROM [dbo].[DocusignControlReferences] WITH(NOLOCK)'
CLOSE selectCursorRadioGroups
DEALLOCATE selectCursorRadioGroups
EXEC (@SQLText)
DECLARE @CurrentReference	int
DECLARE RadioGroupCursor CURSOR FOR SELECT [Id] FROM #References
OPEN RadioGroupCursor   
FETCH NEXT FROM RadioGroupCursor INTO @CurrentReference
WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('IF EXISTS (Select 1 FROM dbo.DocusignControlReferences Where [Id] = ' + Convert(varchar(max),@CurrentReference) + ')')
		INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
		INSERT INTO @SQLScript (Line) VALUES ('        UPDATE dbo.DocusignControlReferences')
		INSERT INTO @SQLScript (Line) VALUES ('        SET')
		SET @ValuesSql = '                VALUES (' + Convert(varchar,@CurrentReference)
		SET @InsertSql = '                ([Id]'
		SET @UpdateSql = ''
		SET @FromWhere = 'FROM dbo.DocusignControlReferences WHERE [Id] = ' + Convert(varchar(max),@CurrentReference)
		DECLARE valuesCursorRadioGroups CURSOR FOR SELECT [ColumnName], [DataType], [CharacterMaxLength] FROM @ColumnNames
		OPEN valuesCursorRadioGroups
		FETCH NEXT FROM valuesCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
		WHILE @@FETCH_STATUS = 0
			BEGIN
				IF (@CurrentColumnName NOT IN ('Id', 'CreatedDate', 'UpdatedDate', 'UpdatedBy', 'Description'))
					BEGIN
						SET @InsertSql = @InsertSql + ', ' + @CurrentColumnName
						IF(LEN(@UpdateSql) > 0)
							BEGIN
								SET @UpdateSql = @UpdateSql + ', ' + @CurrentColumnName + ' = '
							END
						ELSE
							BEGIN
								SET @UpdateSql = '        ' + @CurrentColumnName + ' = '
							END
						SET @ValuesSql = @ValuesSql + ', ' 
						IF (@DataType = 'bit')
							BEGIN
								SET @SQLText = 'SELECT @BitOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@BitOut BIT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @BitOut = @VarBit OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarBit IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(1), @VarBit) END)
							END
						IF (@DataType = 'int')
							BEGIN
								SET @SQLText = 'SELECT @IntOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@IntOut INT OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @IntOut = @VarInt OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarInt IS NULL) THEN '0' ELSE CONVERT(NVARCHAR(10), @VarInt) END)
							END
						IF (@DataType = 'uniqueidentifier')
							BEGIN
								SET @SQLText = 'SELECT @UniqueIdentifierOut = [' + @CurrentColumnName + ']' + @FromWhere
								SET @SQLParameters = '@UniqueIdentifierOut UNIQUEIDENTIFIER OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @UniqueIdentifierOut = @VarUniqueIdentifier OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarUniqueIdentifier IS NULL) THEN 'NULL' ELSE '''' + CONVERT(NVARCHAR(36), @VarUniqueIdentifier) + '''' END)
							END
						IF (@DataType = 'nvarchar')
							BEGIN
								SET @SQLText = 'SELECT @NvarcharOut = [' + @CurrentColumnName + ']' + @FromWhere
								IF(@CharacterMaxLength < 0)
									BEGIN
										SET @SQLParameters = '@NvarcharOut NVARCHAR(max) OUTPUT'
									END
								ELSE
									BEGIN
										SET @SQLParameters = '@NvarcharOut NVARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
									END
								EXEC sp_executesql @SQLText, @SQLParameters, @NvarcharOut = @VarNvarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarNvarchar IS NULL) THEN 'NULL' ELSE '''' + @VarNvarchar + '''' END) 
							END
						IF (@DataType = 'varchar')
							BEGIN
								SET @SQLText = 'SELECT @VarcharOut = [' + @CurrentColumnName + ']' + @FromWhere 
								SET @SQLParameters = '@VarcharOut VARCHAR(' + CONVERT(NVARCHAR(10), @CharacterMaxLength) + ') OUTPUT'
								EXEC sp_executesql @SQLText, @SQLParameters, @VarcharOut = @VarVarchar OUTPUT
								SET @ValuesSql = @ValuesSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
								SET @UpdateSql = @UpdateSql + (CASE WHEN (@VarVarchar IS NULL) THEN 'NULL' ELSE '''' + @VarVarchar + '''' END) 
							END
					END				
				FETCH NEXT FROM valuesCursorRadioGroups INTO @CurrentColumnName, @DataType, @CharacterMaxLength
			END 
			CLOSE valuesCursorRadioGroups
			DEALLOCATE valuesCursorRadioGroups
			INSERT INTO @SQLScript (Line) VALUES (@UpdateSql)
			INSERT INTO @SQLScript (Line) VALUES ('        WHERE [Id] = ' + Convert(varchar,@CurrentReference))
			INSERT INTO @SQLScript (Line) VALUES ('    END')
			INSERT INTO @SQLScript (Line) VALUES ('ELSE')
			INSERT INTO @SQLScript (Line) VALUES ('    BEGIN')
			INSERT INTO @SQLScript (Line) VALUES ('        SET IDENTITY_INSERT dbo.DocusignControlReferences ON')
			INSERT INTO @SQLScript (Line) VALUES ('            INSERT INTO dbo.DocusignControlReferences')
			INSERT INTO @SQLScript (Line) VALUES (@InsertSql + ')')
			INSERT INTO @SQLScript (Line) VALUES (@ValuesSql + ')')
			INSERT INTO @SQLScript (Line) VALUES ('        SET IDENTITY_INSERT dbo.DocusignControlReferences OFF')
			INSERT INTO @SQLScript (Line) VALUES ('    END')
			INSERT INTO @SQLScript (Line) VALUES (' ')
			FETCH NEXT FROM RadioGroupCursor INTO @CurrentReference
	END	
CLOSE RadioGroupCursor
DEALLOCATE RadioGroupCursor
SELECT Line from @SQLScript Order By [Id]
DROP TABLE #RadioGroups
DROP TABLE #References
GO
/****** Object:  StoredProcedure [dbo].[spDeleteServerConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spDeleteServerConfiguration] (@TargetServerIp NVARCHAR(1024)) AS
DECLARE @SQLScript AS TABLE (Id INT IDENTITY, Line VARCHAR(MAX))
PRINT @TargetServerIp
DECLARE @TargetServerId UNIQUEIDENTIFIER = (SELECT [Servers].[Id] 
										      FROM [dbo].[Servers] WITH(NOLOCK)
                                              INNER JOIN [dbo].[UniformResourceIdentifiers] WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Servers].[ServerURI] AND [UniformResourceIdentifiers].[Value] = @TargetServerIp)
DECLARE @UniformResouceIdentifierId UNIQUEIDENTIFIER = (SELECT [Id] FROM [dbo].[UniformResourceIdentifiers] WHERE [Value] = @TargetServerIp)
IF (@TargetServerId IS NULL AND @UniformResouceIdentifierId IS NULL)
	BEGIN
		RETURN
	END
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
DECLARE @SQLText		NVARCHAR(MAX)
DECLARE @SQLParameters	NVARCHAR(MAX)
DECLARE @ApplicationInstances AS TABLE ([ApplicationInstanceId] UNIQUEIDENTIFIER)
INSERT INTO @ApplicationInstances ([ApplicationInstanceId])
SELECT [ApplicationInstances].[Id]
  FROM [dbo].[ApplicationInstances] WITH(NOLOCK)
  INNER JOIN [dbo].[ApplicationInstanceServerMappings] WITH(NOLOCK) ON [ApplicationInstanceServerMappings].[ApplicationInstanceId] = [ApplicationInstances].[Id]
 WHERE [ApplicationInstanceServerMappings].[ServerId] = @TargetServerId
IF (@TargetServerId IS NOT NULL)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('DECLARE @ApplicationInstanceId   UNIQUEIDENTIFIER')
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DECLARE @CurrentApplicationInstanceId	UNIQUEIDENTIFIER
DECLARE @ConnectionStrings AS TABLE 
(
	[Id]			UNIQUEIDENTIFIER,
	[Description]	NVARCHAR(100)
)
DECLARE @TierId				UNIQUEIDENTIFIER
DECLARE @TierDisplayName	NVARCHAR(50)
DECLARE @Tiers AS TABLE 
(
	[Id]			UNIQUEIDENTIFIER,
	[DisplayName]	NVARCHAR(50)
)
DECLARE @Groups AS TABLE 
(
	[Id]	UNIQUEIDENTIFIER,
	[Name]	NVARCHAR(50)
)
DECLARE @DataPullServers AS TABLE 
(
	[Id]			UNIQUEIDENTIFIER,
	[DisplayName]	NVARCHAR(50)
)
DECLARE @DataPullGroups AS TABLE 
(
	[Id]	UNIQUEIDENTIFIER,
	[Name]	NVARCHAR(50)
)
DECLARE ApplicationCursor CURSOR FOR SELECT [ApplicationInstanceId] FROM @ApplicationInstances
OPEN ApplicationCursor   
FETCH NEXT FROM ApplicationCursor INTO @CurrentApplicationInstanceId
WHILE @@FETCH_STATUS = 0   
	BEGIN   
		DECLARE @ApplicationTypeId	UNIQUEIDENTIFIER = (SELECT [ApplicationTypeId] FROM [dbo].[ApplicationInstances] WHERE [Id] = @CurrentApplicationInstanceId)
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @ApplicationTypeDescription NVARCHAR(50) = (SELECT [Value] FROM [dbo].[ApplicationTypes] WITH(NOLOCK) WHERE [ApplicationTypes].[Id] = @ApplicationTypeId)
		DECLARE @ApplicationInstanceId		UNIQUEIDENTIFIER = NEWID()
		DECLARE @ApplicationServerMappingId	UNIQUEIDENTIFIER = NEWID()
		DECLARE @TablesToClean AS TABLE 
		(
			[TableName]		VARCHAR(128),
			[IdColumnName]	VARCHAR(128)
		)
		INSERT INTO @TablesToClean ([TableName], [IdColumnName])
		SELECT FK.TABLE_NAME, ISKCU.COLUMN_NAME
		  FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS C
		  INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS FK ON C.CONSTRAINT_NAME = FK.CONSTRAINT_NAME
		  INNER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS PK ON C.UNIQUE_CONSTRAINT_NAME = PK.CONSTRAINT_NAME
		  INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ISKCU  ON C.CONSTRAINT_NAME = ISKCU.CONSTRAINT_NAME
		  INNER JOIN (SELECT ISTC.TABLE_NAME, ISKCU2.COLUMN_NAME
					   FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS ISTC 
					   INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE ISKCU2 ON ISTC.CONSTRAINT_NAME = ISKCU2.CONSTRAINT_NAME
					  WHERE ISTC.CONSTRAINT_TYPE = 'PRIMARY KEY'
					 ) PT ON PT.TABLE_NAME = PK.TABLE_NAME
		 WHERE PK.TABLE_NAME = 'ApplicationInstances'
		INSERT INTO @SQLScript (Line) VALUES ('SET @ApplicationInstanceId = ''' + CONVERT(NVARCHAR(36), @CurrentApplicationInstanceId) + ''' -- ' + @ApplicationTypeDescription)
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @TableName			VARCHAR(128)
		DECLARE @TableColumnName	NVARCHAR(128)
		DECLARE tableCursorApplicationInstances CURSOR FOR SELECT [TableName], [IdColumnName] FROM @TablesToClean
		OPEN tableCursorApplicationInstances
		FETCH NEXT FROM tableCursorApplicationInstances INTO @TableName, @TableColumnName
		WHILE @@FETCH_STATUS = 0
			BEGIN
				DECLARE @FoundRecords INT 
				SET @SQLText = 'SELECT @FoundRecords = COUNT(*) FROM ' + @TableName + ' WHERE [' + @TableColumnName + '] = ''' + CONVERT(VARCHAR(36), @CurrentApplicationInstanceId) + ''''
				SET @SQLParameters = '@FoundRecords INT OUTPUT'
				EXEC sp_executesql @SQLText, @SQLParameters, @FoundRecords = @FoundRecords OUTPUT
				IF (@FoundRecords > 0)
					BEGIN
						INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM ' + @TableName + ' WHERE [' + @TableColumnName + '] = @ApplicationInstanceId')
					END
				FETCH NEXT FROM tableCursorApplicationInstances INTO @TableName, @TableColumnName
			END
		CLOSE tableCursorApplicationInstances
		DEALLOCATE tableCursorApplicationInstances
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DELETE FROM @TablesToClean
		INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[ApplicationInstances] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @CurrentApplicationInstanceId) + '''')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		FETCH NEXT FROM ApplicationCursor INTO @CurrentApplicationInstanceId
	END
CLOSE ApplicationCursor   
DEALLOCATE ApplicationCursor
INSERT INTO @ConnectionStrings([Id], [Description])
SELECT [ConnectionStrings].[Id]
	 , [ConnectionStrings].[Description]
  FROM [dbo].[ApplicationInstanceConnectionStrings] WITH(NOLOCK) 
  INNER JOIN [dbo].[ConnectionStrings] WITH(NOLOCK) ON [ConnectionStrings].[Id] = [ApplicationInstanceConnectionStrings].[ConnectionStringId]
  WHERE [ApplicationInstanceConnectionStrings].[ApplicationInstanceId] = @CurrentApplicationInstanceId
  AND NOT EXISTS (SELECT 1 FROM @ConnectionStrings WHERE [Id] = [ConnectionStrings].[Id])
  AND [ConnectionStrings].[Id] <> '8A01629C-6EB8-47DD-A2E7-1C2557667FAB' -- Billing Server
INSERT INTO @DataPullServers ([Id], [DisplayName])
SELECT [Id], [DisplayName] FROM [dbo].[DataPullServers] WHERE [ConnectionStringId] IN (SELECT [Id] FROM @ConnectionStrings)
IF EXISTS (SELECT 1 FROM @DataPullServers)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @DPServerId		UNIQUEIDENTIFIER
		DECLARE @DPDisplayName	NVARCHAR(50)
		DECLARE DPServerCursor CURSOR FOR SELECT [Id], [DisplayName]  FROM @DataPullServers
		OPEN DPServerCursor   
		FETCH NEXT FROM DPServerCursor INTO @DPServerId, @DPDisplayName
		WHILE @@FETCH_STATUS = 0   
			BEGIN 
				INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[DataPullServerGroups] WHERE [DataPullServerId] = ''' + CONVERT(VARCHAR(36), @DPServerId) + '''')
				INSERT INTO @DataPullGroups ([Id], [Name])
				SELECT [Id], [Name] FROM [dbo].[DataPullGroups] WHERE [DataPullServerId] = @DPServerId
				IF EXISTS (SELECT 1 FROM @DataPullGroups)
					BEGIN
						INSERT INTO @SQLScript (Line) VALUES ('--WARNING! - DataPullServerId ''' + CONVERT(VARCHAR(36), @DPServerId) + ''' is used as a Source in a DataPullGroups record!' )
						INSERT INTO @SQLScript (Line) VALUES (' ')
						DECLARE @DPGroupId		UNIQUEIDENTIFIER
						DECLARE @DPGroupName	NVARCHAR(50)
						DECLARE DPGServerCursor CURSOR FOR SELECT [Id], [Name] FROM @DataPullGroups
						OPEN DPGServerCursor   
						FETCH NEXT FROM DPGServerCursor INTO @DPGroupId, @DPGroupName
						WHILE @@FETCH_STATUS = 0   
							BEGIN 
								INSERT INTO @SQLScript (Line) VALUES ('UPDATE [dbo].[DataPullServerGroups] SET [DataPullServerId] = NULL WHERE [Id] = ''' + CONVERT(VARCHAR(36), @DPGroupId) + ''' -- ' + @DPGroupName)
								INSERT INTO @SQLScript (Line) VALUES (' ')
								FETCH NEXT FROM DPGServerCursor INTO @DPGroupId, @DPGroupName
							END   
						CLOSE DPGServerCursor   
						DEALLOCATE DPServerCursor
					END
				DELETE FROM @DataPullGroups
				INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[DataPullServers] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @DPServerId) + ''' -- ' + @DPDisplayName)
				FETCH NEXT FROM DPServerCursor INTO @DPServerId, @DPDisplayName
			END   
		CLOSE DPServerCursor   
		DEALLOCATE DPServerCursor
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DELETE FROM @DataPullServers 
IF (@TargetServerId IS NOT NULL)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('UPDATE [dbo].[Servers] SET [CadenceConnectionStringId] = NULL WHERE [Id] = ''' + CONVERT(VARCHAR(36), @TargetServerId) + '''')
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DECLARE @ConnectionStringId	UNIQUEIDENTIFIER
DECLARE @CSDescription		NVARCHAR(100)
DECLARE @CanDelete INT = 2
DECLARE connectionStringCursor CURSOR FOR SELECT [Id], [Description] FROM @ConnectionStrings
OPEN connectionStringCursor   
FETCH NEXT FROM connectionStringCursor INTO @ConnectionStringId, @CSDescription
WHILE @@FETCH_STATUS = 0   
	BEGIN 
		SET @CanDelete = 1
		INSERT INTO @Tiers ([Id], [DisplayName])
		SELECT [Id], [DisplayName] FROM [dbo].[Tiers] WHERE [CadenceConnectionStringId] = @ConnectionStringId
		IF EXISTS (SELECT 1 FROM @Tiers)
			BEGIN
				INSERT INTO @SQLScript (Line) VALUES ('--WARNING! - ConnectionStringId ''' + CONVERT(VARCHAR(36), @ConnectionStringId) + ''' is used as a [CadenceConnectionStringId] in Tiers and will have to be replaced in the Tiers table!' )
				INSERT INTO @SQLScript (Line) VALUES (' ')
				DECLARE tierConnectionStringCursor CURSOR FOR SELECT [Id], [DisplayName]  FROM @Tiers
				OPEN tierConnectionStringCursor   
				FETCH NEXT FROM tierConnectionStringCursor INTO @TierId, @TierDisplayName
				WHILE @@FETCH_STATUS = 0   
					BEGIN 
						INSERT INTO @SQLScript (Line) VALUES ('UPDATE [dbo].[Tiers] SET [CadenceConnectionStringId] = NULL WHERE [Id] = ''' + CONVERT(VARCHAR(36), @TierId) + ''' -- ' + @TierDisplayName)
						FETCH NEXT FROM tierConnectionStringCursor INTO @TierId, @TierDisplayName
					END   
				CLOSE tierConnectionStringCursor   
				DEALLOCATE tierConnectionStringCursor
				INSERT INTO @SQLScript (Line) VALUES (' ')
			END
		DELETE FROM @Tiers
		INSERT INTO @Tiers ([Id], [DisplayName])
		SELECT [Id], [DisplayName] FROM [dbo].[Tiers] WHERE [WarehouseConnectionStringId] = @ConnectionStringId
		IF EXISTS (SELECT 1 FROM @Tiers)
			BEGIN
				SET @CanDelete = 0
				INSERT INTO @SQLScript (Line) VALUES ('--WARNING! - ConnectionStringId ''' + CONVERT(VARCHAR(36), @ConnectionStringId) + ''' is used as a [WarehouseConnectionStringId] in Tiers and must be managed manually!' )
				INSERT INTO @SQLScript (Line) VALUES (' ')
			END
		DELETE FROM @Tiers
		IF (@CanDelete = 1)
			BEGIN
				IF (@ConnectionStringId = 'EC8810E3-73D5-4E46-A12E-DEC655F6CA47' 
				 OR @ConnectionStringId = 'F5F0E8C9-074A-4E09-B793-D84925ABCDC2' 
				 OR @ConnectionStringId = 'FAF156BE-EEB8-49A6-AACD-F8C4560602DB'
				 OR @ConnectionStringId = '4C1E2B87-627C-4AE1-839D-6C1DF05219F3'
				 OR @ConnectionStringId = 'A4E4858D-86E3-4837-B7F2-92B961DFEC93')
					BEGIN
						INSERT INTO @SQLScript (Line) VALUES ('BEGIN TRY')
						INSERT INTO @SQLScript (Line) VALUES ('    DELETE FROM [dbo].[ConnectionStrings] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @ConnectionStringId) + ''' -- ' + @CSDescription)
						INSERT INTO @SQLScript (Line) VALUES ('END TRY')
						INSERT INTO @SQLScript (Line) VALUES ('BEGIN CATCH')
						INSERT INTO @SQLScript (Line) VALUES ('   SELECT ERROR_NUMBER() AS [ErrorNumber], ERROR_SEVERITY() AS [ErrorSeverity], ERROR_STATE() AS [ErrorState], ERROR_PROCEDURE() AS [ErrorProcedure], ERROR_LINE() AS [ErrorLine], ERROR_MESSAGE() AS [ErrorMessage], ''' + @CSDescription + '''')
						INSERT INTO @SQLScript (Line) VALUES ('END CATCH')
					END
				ELSE
					BEGIN
						INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[ConnectionStrings] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @ConnectionStringId) + ''' -- ' + @CSDescription)
					END
			END
		FETCH NEXT FROM connectionStringCursor INTO @ConnectionStringId, @CSDescription
	END   
CLOSE connectionStringCursor   
DEALLOCATE connectionStringCursor
IF (@CanDelete = 1)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DELETE FROM @ConnectionStrings
INSERT INTO @Groups ([Id], [Name])
SELECT [Id], [Name] FROM [dbo].[GroupNames] WHERE [MasterEnvironmentId] = @TargetServerId 
IF EXISTS (SELECT 1 FROM @Groups)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE @GroupId	UNIQUEIDENTIFIER
		DECLARE @GroupName	NVARCHAR(50)
		DECLARE groupCursor CURSOR FOR SELECT [Id], [Name]  FROM @Groups
		OPEN groupCursor   
		FETCH NEXT FROM groupCursor INTO @GroupId, @GroupName
		WHILE @@FETCH_STATUS = 0   
			BEGIN 
				INSERT INTO @SQLScript (Line) VALUES ('--WARNING! - GroupNameId ''' + CONVERT(VARCHAR(36), @GroupId) + ''' uses this ServerId as a MasterEnvironmentId!' )
				INSERT INTO @SQLScript (Line) VALUES (' ')
				INSERT INTO @SQLScript (Line) VALUES ('UPDATE [dbo].[GroupNames] SET [MasterEnvironmentId] = NULL WHERE [Id] = ''' + CONVERT(VARCHAR(36), @GroupId) + ''' -- ' + @GroupName)
				INSERT INTO @SQLScript (Line) VALUES (' ')
				FETCH NEXT FROM groupCursor INTO @GroupId, @GroupName
			END   
		CLOSE groupCursor   
		DEALLOCATE groupCursor
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DELETE FROM @Groups 
INSERT INTO @Tiers ([Id], [DisplayName])
SELECT [Id], [DisplayName] FROM [dbo].[Tiers] WHERE [MasterEnvironmentId] = @TargetServerId 
IF EXISTS (SELECT 1 FROM @Tiers)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		DECLARE tierCursor CURSOR FOR SELECT [Id], [DisplayName]  FROM @Tiers
		OPEN tierCursor   
		FETCH NEXT FROM tierCursor INTO @TierId, @TierDisplayName
		WHILE @@FETCH_STATUS = 0   
			BEGIN 
				INSERT INTO @SQLScript (Line) VALUES ('--WARNING! - TierId ''' + CONVERT(VARCHAR(36), @TierId) + ''' uses this ServerId as a MasterEnvironmentId!' )
				INSERT INTO @SQLScript (Line) VALUES (' ')
				INSERT INTO @SQLScript (Line) VALUES ('UPDATE [dbo].[Tiers] SET [MasterEnvironmentId] = NULL WHERE [Id] = ''' + CONVERT(VARCHAR(36), @TierId) + ''' -- ' + @TierDisplayName)
				INSERT INTO @SQLScript (Line) VALUES (' ')
				FETCH NEXT FROM tierCursor INTO @TierId, @TierDisplayName
			END   
		CLOSE tierCursor   
		DEALLOCATE tierCursor
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
DELETE FROM @Tiers 
IF (@TargetServerId IS NOT NULL)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[Servers] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @TargetServerId) + ''' -- Delete Servers Record' )
	END
IF (@UniformResouceIdentifierId IS NOT NULL)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('DELETE FROM [dbo].[UniformResourceIdentifiers] WHERE [Id] = ''' + CONVERT(VARCHAR(36), @UniformResouceIdentifierId) + ''' -- Delete UniformResourceIdentifiers Record' )
	END
INSERT INTO @SQLScript (Line) VALUES (' ')
IF (@TargetServerId IS NOT NULL)
	BEGIN
		INSERT INTO @SQLScript (Line) VALUES ('-----------------------------------------------------------------------------------------------------------')
		INSERT INTO @SQLScript (Line) VALUES (' ')
		INSERT INTO @SQLScript (Line) VALUES ('GO')
		INSERT INTO @SQLScript (Line) VALUES (' ')
	END
INSERT INTO @SQLScript (Line) VALUES ('')
INSERT INTO @SQLScript (Line) VALUES (' ')
SELECT [Line] FROM @SQLScript ORDER BY [Id]
GO
/****** Object:  StoredProcedure [dbo].[spgAppliances]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgAppliances] 
(
		@ApplicationTypeValue	NVARCHAR(50) = NULL, 
		@ServerId				UNIQUEIDENTIFIER = NULL
)
AS

DECLARE @AllOrOne BIT = 0

IF (@ApplicationTypeValue IS NOT NULL)
	BEGIN

		-- Determine the application type

		DECLARE @ApplicationTypeId UNIQUEIDENTIFIER
		EXEC [dbo].[spgApplicationTypeId] @ApplicationTypeValue, @ApplicationTypeId OUTPUT

		IF (@ApplicationTypeId = '435F8FD7-393F-43AB-995D-4D5CEED80BC0' OR @ApplicationTypeId = '29F242A1-EA9C-41B5-B2E2-B6E22BF3434A')
			BEGIN

				-- Composition or MISMO web services require that only the local server configuration be returned

				IF (@ServerId IS NOT NULL)
					BEGIN
						SET @AllOrOne = 1
					END
			END
	END

IF (@AllOrOne = 0)
	BEGIN

		-- Return all server information by group

		SELECT [ServerGroups].[ServerId] AS [Key], 
			   [GroupNames].[Name] AS [GroupName],
			   [Tiers].[Id] AS [TierId],
			   [Servers].[Description],
			   ServerURI.[Value] AS [Uri],
			   [Servers].[CadenceConnectionStringId],
			   [Credentials].[Domain],
			   [Servers].[BookmarkTitlesEditable],
			   [Servers].[XPathConfigEnvironment],
			   [Servers].[isDefault],
			   [Servers].[ClientPackageEditable],
			   [ServerGroups].[CreatedDate],
			   [ServerGroups].[UpdatedBy],
			   [ServerGroups].[UpdatedDate],			   
			   [GroupNames].[MasterEnvironmentId] As [MasterEnvironmentId]
		  FROM [dbo].[ServerGroups] WITH(NOLOCK)
		  INNER JOIN [dbo].[GroupNames]								WITH(NOLOCK) ON [GroupNames].[Id] = [ServerGroups].[GroupNameId]	AND [GroupNames].[isActive] = 1
		  INNER JOIN [dbo].[Servers]								WITH(NOLOCK) ON [Servers].[Id] = [ServerGroups].[ServerId]			AND [Servers].[isActive] = 1
		  INNER JOIN [dbo].[Credentials]							WITH(NOLOCK) ON [Credentials].[Id] = [Servers].[CredentialsId]		AND [Credentials].[isActive] = 1
		  INNER JOIN [dbo].[Tiers]									WITH(NOLOCK) ON [Tiers].[Id] = [Servers].[TierId]					AND [Tiers].[isActive] = 1
		  INNER JOIN [dbo].[UniformResourceIdentifiers] ServerURI	WITH(NOLOCK) ON ServerURI.[Id] = [Servers].[ServerURI]				AND ServerURI.[isActive] = 1
		 WHERE [ServerGroups].[isActive] = 1
		 ORDER BY [GroupNames].[Name], ServerURI.[Value]

	END
ELSE
	BEGIN

		-- Just return the one server's information (There may be more than one instance)

		SELECT TOP 1 [ServerGroups].[ServerId] AS [Key], 
			         [GroupNames].[Name] AS [GroupName],
			         [Tiers].[Id] AS [TierId],
					 [Servers].[Description],
					 ServerURI.[Value] AS [Uri],
					 [Servers].[CadenceConnectionStringId],
					 [Credentials].[Domain],
					 [Servers].[BookmarkTitlesEditable],
					 [Servers].[XPathConfigEnvironment],
					 [Servers].[isDefault],
					 [Servers].[ClientPackageEditable],
					 [ServerGroups].[CreatedDate],
					 [ServerGroups].[UpdatedBy],
					 [ServerGroups].[UpdatedDate],					 
					 [GroupNames].[MasterEnvironmentId] As [MasterEnvironmentId]
		  FROM [dbo].[Servers] WITH(NOLOCK)
		  INNER JOIN [dbo].[ServerGroups]							WITH(NOLOCK) ON [Servers].[Id] = [ServerGroups].[ServerId]			AND [Servers].[isActive] = 1
		  INNER JOIN [dbo].[GroupNames]								WITH(NOLOCK) ON [GroupNames].[Id] = [ServerGroups].[GroupNameId]	AND [GroupNames].[isActive] = 1
		  INNER JOIN [dbo].[Credentials]							WITH(NOLOCK) ON [Credentials].[Id] = [Servers].[CredentialsId]		AND [Credentials].[isActive] = 1
		  INNER JOIN [dbo].[Tiers]									WITH(NOLOCK) ON [Tiers].[Id] = [Servers].[TierId]					AND [Tiers].[isActive] = 1
		  INNER JOIN [dbo].[UniformResourceIdentifiers] ServerURI	WITH(NOLOCK) ON ServerURI.[Id] = [Servers].[ServerURI]				AND ServerURI.[isActive] = 1
		 WHERE [ServerGroups].[isActive] = 1
		   AND [Servers].[Id] = @ServerId

	END

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstance]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstance] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstances].[Id] AS [ApplicationInstanceId],
       [ApplicationInstances].[Description],
	   [ApplicationTypes].[Value] AS [ApplicationType],
	   [ApplicationInstances].[RefreshFrequencyInSeconds],
	   [ApplicationInstances].[TierId],
	   [ApplicationInstances].[AuditLogConnectionStringId],
	   [ApplicationInstances].[MaxAppErrorCount],
	   [ApplicationInstances].[MaxAppIdleTimeInSeconds],
	   [ApplicationInstances].[CreatedDate],
	   [ApplicationInstances].[UpdatedBy],
	   [ApplicationInstances].[UpdatedDate]
  FROM [dbo].[ApplicationInstances]   WITH(NOLOCK) 
  INNER JOIN [dbo].[ApplicationTypes] WITH(NOLOCK) ON [ApplicationTypes].[Id] = [ApplicationInstances].[ApplicationTypeId] AND [ApplicationTypes].[isActive] = 1
 WHERE [ApplicationInstances].[Id] = @ApplicationInstanceId
   AND [ApplicationInstances].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceConnectionStrings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceConnectionStrings] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceConnectionStrings].[Id] AS [ApplicationInstanceConnectionStringId],
       [ApplicationInstanceConnectionStrings].[ConnectionStringId],
       [ConnectionStrings].[Description],
	   [ConnectionStringTypes].[Value] AS [ConnectionStringType],
	   [ConnectionStringMetaDatas].[Value] AS [MetaData],
       [SQLBuilderApplicationIntents].[Value] AS [ApplicationIntent],
       [ConnectionStrings].[ApplicationName],
       [ConnectionStrings].[AsynchronousProcessing],
       [ConnectionStrings].[AttachDBFilename],
       [ConnectionStrings].[BrowsableConnectionString],
       [ConnectionStrings].[ConnectTimeout],
       [ConnectionStrings].[ContextConnection],
       [ConnectionStrings].[CurrentLanguageId],
       languages.[alias] AS [CurrentLanguage],
       [ConnectionStrings].[DataSource],
       [ConnectionStrings].[Encrypt],
       [ConnectionStrings].[Enlist],
       [ConnectionStrings].[InitialCatalog],
       [ConnectionStrings].[IntegratedSecurity],
       [ConnectionStrings].[LoadBalanceTimeout],
       [ConnectionStrings].[MaxPoolSize],
       [ConnectionStrings].[MinPoolSize],
       [ConnectionStrings].[MultipleActiveResultsSets],
       [ConnectionStrings].[NetworkLibrary],
       [ConnectionStrings].[PacketSize],
       [Credentials].[Password],
       [ConnectionStrings].[PersistingSecurityInfo],
       [ConnectionStrings].[Pooling],
       [ConnectionStrings].[Replication],
       [SQLBuilderTransactionBindings].[Value] AS [TransactionBinding],
       [ConnectionStrings].[TrustServerCertificate],
       [SQLBuilderTypeSystemVersions].[Value] AS [TypeSystemVersion],
       [Credentials].[Domain] AS [UserDomain],
       [Credentials].[UserName],
       [ConnectionStrings].[UserInstance],
       [ConnectionStrings].[WorkstationId],
       [ConnectionStrings].[CreatedDate],
       [ConnectionStrings].[UpdatedBy],
       [ConnectionStrings].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceConnectionStrings]	WITH(NOLOCK)
  INNER JOIN [dbo].[ConnectionStrings]				WITH(NOLOCK) ON [ConnectionStrings].[Id] = [ApplicationInstanceConnectionStrings].[ConnectionStringId]	AND [ConnectionStrings].[isActive] = 1
  INNER JOIN [dbo].[ConnectionStringTypes]			WITH(NOLOCK) ON [ConnectionStringTypes].[Id] = [ConnectionStrings].[ConnectionStringTypeId]	
  INNER JOIN [dbo].[ConnectionStringMetaDatas]		WITH(NOLOCK) ON [ConnectionStringMetaDatas].[Id] = [ConnectionStringTypes].[MetaDataId]	
  INNER JOIN [dbo].[SQLBuilderApplicationIntents]	WITH(NOLOCK) ON [SQLBuilderApplicationIntents].[Id] = [ConnectionStrings].[ApplicationIntentId]
  INNER JOIN [dbo].[SQLBuilderTransactionBindings]	WITH(NOLOCK) ON [SQLBuilderTransactionBindings].[Id] = [ConnectionStrings].[TransactionBindingId]
  INNER JOIN [dbo].[SQLBuilderTypeSystemVersions]	WITH(NOLOCK) ON [SQLBuilderTypeSystemVersions].[Id] = [ConnectionStrings].[TypeSystemVersionId]
  INNER JOIN [dbo].[Credentials]					WITH(NOLOCK) ON [Credentials].[Id] = [ConnectionStrings].[CredentialsId]								AND [Credentials].[isActive] = 1
  INNER JOIN sys.syslanguages languages				WITH(NOLOCK) ON languages.[langid] = [ConnectionStrings].[CurrentLanguageId]
 WHERE [ApplicationInstanceConnectionStrings].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceConnectionStrings].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceCredentials]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceCredentials] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceCredentials].[Id] AS [ApplicationInstanceCredentialsId],
       [ApplicationInstanceCredentials].[CredentialsId],
       [Credentials].[Description],
       [Credentials].[Domain],
       [Credentials].[Password],
       [Credentials].[UserName],
       [Credentials].[CreatedDate],
       [Credentials].[UpdatedBy],
       [Credentials].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceCredentials] WITH(NOLOCK)
  INNER JOIN [dbo].[Credentials] WITH(NOLOCK) ON [Credentials].[Id] = [ApplicationInstanceCredentials].[CredentialsId] AND [Credentials].[isActive] = 1
 WHERE [ApplicationInstanceCredentials].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceCredentials].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceEndPoints]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgApplicationInstanceEndPoints] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS
SELECT [ApplicationInstanceEndPoints].[Id] AS [ApplicationInstanceEndpointId],
       [ApplicationInstanceEndPoints].[EndpointId],
	   [ApplicationInstanceEndPoints].[IsDefault],
       [Endpoints].[Name],
       [Endpoints].[ServiceType],
       ISNULL([UniformResourceIdentifiers].[Id], '00000000-0000-0000-0000-000000000000') AS [UniformResourceIdentifierId],
       ISNULL([UniformResourceIdentifiers].[Description], '') AS [UniformResourceIdentifierDescription],
       ISNULL([UniformResourceIdentifiers].[Value], '') AS [UniformResourceIdentifierValue],
       [Credentials].[Domain],
       [Credentials].[Password],
       [Credentials].[UserName],
       [Endpoints].[CreatedDate],
       [Endpoints].[UpdatedBy],
       [Endpoints].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceEndPoints] WITH(NOLOCK)
  INNER JOIN [dbo].[Endpoints]							WITH(NOLOCK) ON [Endpoints].[Id] = [ApplicationInstanceEndPoints].[EndpointId]					AND [Endpoints].[isActive] = 1
  INNER JOIN [dbo].[Credentials]						WITH(NOLOCK) ON [Credentials].[Id] = [Endpoints].[CredentialsId]								AND [Credentials].[isActive] = 1
  LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Endpoints].[UniformResourceIdentifierId]	AND [UniformResourceIdentifiers].[isActive] = 1
 WHERE [ApplicationInstanceEndPoints].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceEndPoints].[isActive] = 1
GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceGroupedDataPullServers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceGroupedDataPullServers] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceDataPullServerGroups].[Id] AS [ApplicationInstanceDataPullServerGroupsId],
       [DataPullGroups].[Order],
       [DataPullGroups].[Name],
       ISNULL([DataPullGroups].[DataPullServerId], '00000000-0000-0000-0000-000000000000') AS [SourceDataPullServerId],
	   sourceServer.[DisplayName] AS [SourceDataPullServerDisplayName],
	   sourceServer.[ConnectionStringId] AS [SourceDataPullServerConnectionStringId],
       thisServer.[Id] AS [DataPullServerId],
       thisServer.[DisplayName],
       thisServer.[ConnectionStringId],
       [ConnectionStrings].[Description],
       [SQLBuilderApplicationIntents].[Value] AS [ApplicationIntent],
       [ConnectionStrings].[ApplicationName],
       [ConnectionStrings].[AsynchronousProcessing],
       [ConnectionStrings].[AttachDBFilename],
       [ConnectionStrings].[BrowsableConnectionString],
       [ConnectionStrings].[ConnectTimeout],
       [ConnectionStrings].[ContextConnection],
       [ConnectionStrings].[CurrentLanguageId],
       languages.[alias] AS [CurrentLanguage],
       [ConnectionStrings].[DataSource],
       [ConnectionStrings].[Encrypt],
       [ConnectionStrings].[Enlist],
       [ConnectionStrings].[InitialCatalog],
       [ConnectionStrings].[IntegratedSecurity],
       [ConnectionStrings].[LoadBalanceTimeout],
       [ConnectionStrings].[MaxPoolSize],
       [ConnectionStrings].[MinPoolSize],
       [ConnectionStrings].[MultipleActiveResultsSets],
       [ConnectionStrings].[NetworkLibrary],
       [ConnectionStrings].[PacketSize],
       [Credentials].[Password],
       [ConnectionStrings].[PersistingSecurityInfo],
       [ConnectionStrings].[Pooling],
       [ConnectionStrings].[Replication],
       [SQLBuilderTransactionBindings].[Value] AS [TransactionBinding],
       [ConnectionStrings].[TrustServerCertificate],
       [SQLBuilderTypeSystemVersions].[Value] AS [TypeSystemVersion],
       [Credentials].[Domain] AS [UserDomain],
       [Credentials].[UserName],
       [ConnectionStrings].[UserInstance],
       [ConnectionStrings].[WorkstationId],
       thisServer.[CreatedDate],
       thisServer.[UpdatedBy],
       thisServer.[UpdatedDate]
  FROM [dbo].[ApplicationInstanceDataPullServerGroups] WITH(NOLOCK)
  INNER JOIN [dbo].[DataPullGroups]					WITH(NOLOCK) ON [DataPullGroups].[Id] = [ApplicationInstanceDataPullServerGroups].DataPullGroupId	AND [DataPullGroups].[isActive] = 1
  INNER JOIN [dbo].[DataPullServerGroups]			WITH(NOLOCK) ON [DataPullServerGroups].[DataPullGroupId] = [DataPullGroups].[Id]					AND [DataPullServerGroups].[isActive] = 1
  INNER JOIN [dbo].[DataPullServers] sourceServer   WITH(NOLOCK) ON sourceServer.[Id] = [DataPullServerGroups].[DataPullServerId]						AND sourceServer.[isActive] = 1
  INNER JOIN [dbo].[DataPullServers] thisServer     WITH(NOLOCK) ON thisServer.[Id] = [DataPullServerGroups].[DataPullServerId]							AND thisServer.[isActive] = 1
  INNER JOIN [dbo].[ConnectionStrings]				WITH(NOLOCK) ON [ConnectionStrings].[Id] = thisServer.[ConnectionStringId]							AND [ConnectionStrings].[isActive] = 1
  INNER JOIN [dbo].[SQLBuilderApplicationIntents]	WITH(NOLOCK) ON [SQLBuilderApplicationIntents].[Id] = [ConnectionStrings].[ApplicationIntentId]
  INNER JOIN [dbo].[SQLBuilderTransactionBindings]	WITH(NOLOCK) ON [SQLBuilderTransactionBindings].[Id] = [ConnectionStrings].[TransactionBindingId]
  INNER JOIN [dbo].[SQLBuilderTypeSystemVersions]	WITH(NOLOCK) ON [SQLBuilderTypeSystemVersions].[Id] = [ConnectionStrings].[TypeSystemVersionId]
  INNER JOIN [dbo].[Credentials]					WITH(NOLOCK) ON [Credentials].[Id] = [ConnectionStrings].[CredentialsId]							AND [Credentials].[isActive] = 1
  INNER JOIN sys.syslanguages languages             WITH(NOLOCK) ON languages.[langid] = [ConnectionStrings].[CurrentLanguageId]
 WHERE [ApplicationInstanceDataPullServerGroups].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceDataPullServerGroups].[isActive] = 1
 ORDER BY [DataPullGroups].[Order], thisServer.[DisplayName]

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceId]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceId] 
(
	@ApplicationTypeValue	NVARCHAR(50), 
	@IpAddressValue			NVARCHAR(1024),
	@ApplicationInstanceId	UNIQUEIDENTIFIER OUTPUT
)
AS

DECLARE @ApplicationTypeId UNIQUEIDENTIFIER
EXEC [dbo].[spgApplicationTypeId] @ApplicationTypeValue, @ApplicationTypeId OUTPUT

DECLARE @ServerId UNIQUEIDENTIFIER
EXEC [dbo].[spgServerId] @IpAddressValue, @ServerId OUTPUT

SET @ApplicationInstanceId = (SELECT [ApplicationInstanceServerMappings].[ApplicationInstanceId] 
                                FROM [dbo].[ApplicationInstanceServerMappings] WITH(NOLOCK) 
							   WHERE [ApplicationInstanceServerMappings].[ApplicationTypeId] = @ApplicationTypeId 
							     AND [ApplicationInstanceServerMappings].[ServerId] = @ServerId
							     AND [ApplicationInstanceServerMappings].[isActive] = 1)

-- If @ApplicationInstanceId is NULL, it might be because we are trying to retrieve a configuration that is not restricted to a specific server, such as Tools

IF (@ApplicationInstanceId IS NULL AND @IpAddressValue IS NULL)
	BEGIN
		SET @ApplicationInstanceId = (SELECT [ApplicationInstanceServerMappings].[ApplicationInstanceId] 
                                        FROM [dbo].[ApplicationInstanceServerMappings] WITH(NOLOCK) 
									   WHERE [ApplicationInstanceServerMappings].[ApplicationTypeId] = @ApplicationTypeId 
									     AND [ApplicationInstanceServerMappings].ServerId IS NULL
										 AND [ApplicationInstanceServerMappings].[isActive] = 1)	
	END

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceInternalApi]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceInternalApi] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceInternalApis].[Id] AS [ApplicationInstanceInternalApiId],
       [ApplicationInstanceInternalApis].[InternalApiId],
       [InternalApis].[MaximumEventRequestRangeHours],
       ISNULL([UniformResourceIdentifiers].[Id], '00000000-0000-0000-0000-000000000000') AS [UniformResourceIdentifierId],
       ISNULL([UniformResourceIdentifiers].[Description], '') AS [UniformResourceIdentifierDescription],
       ISNULL([UniformResourceIdentifiers].[Value], '') AS [UniformResourceIdentifierValue],
       [InternalApis].[CreatedDate],
       [InternalApis].[UpdatedBy],
       [InternalApis].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceInternalApis] WITH(NOLOCK)
  INNER JOIN [dbo].[InternalApis]						WITH(NOLOCK) ON [InternalApis].[Id] = [ApplicationInstanceInternalApis].[InternalApiId]				AND [InternalApis].[isActive] = 1
  LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [InternalApis].[UniformResourceIdentifierId]	AND [UniformResourceIdentifiers].[isActive] = 1
 WHERE [ApplicationInstanceInternalApis].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceInternalApis].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceLoggingConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceLoggingConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceLoggingConfigurations].[Id] AS [ApplicationInstanceLoggingConfigurationId],
       [ApplicationInstanceLoggingConfigurations].[LoggingConfigurationId],
       [LoggingConfigurations].[Description],
       [LoggingConfigurations].[ConversionPattern],
       [LoggingConfigurations].[MaximumFileSize],
       [LoggingConfigurations].[MaxSizeRollBackups],
       ISNULL([UniformResourceIdentifiers].[Id], '00000000-0000-0000-0000-000000000000') AS [UniformResourceIdentifierId],
       ISNULL([UniformResourceIdentifiers].[Description], '') AS [UniformResourceIdentifierDescription],
       ISNULL([UniformResourceIdentifiers].[Value], '') AS [UniformResourceIdentifierValue],
       [LoggingConfigurations].[CreatedDate],
       [LoggingConfigurations].[UpdatedBy],
       [LoggingConfigurations].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceLoggingConfigurations] WITH(NOLOCK)
  INNER JOIN [dbo].[LoggingConfigurations]				WITH(NOLOCK) ON [LoggingConfigurations].[Id] = [ApplicationInstanceLoggingConfigurations].[LoggingConfigurationId]	AND [LoggingConfigurations].[isActive] = 1
  LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [LoggingConfigurations].[LogFileURI]							AND [UniformResourceIdentifiers].[isActive] = 1
 WHERE [ApplicationInstanceLoggingConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceLoggingConfigurations].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceMISMOReverseIndicators]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceMISMOReverseIndicators] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceMISMOReverseIndicators].[Id] AS [ApplicationInstanceMISMOReverseIndicatorId],
       [ApplicationInstanceMISMOReverseIndicators].[MISMOReverseIndicatorId],
       [MISMOReverseIndicators].[xAttribute],
       [MISMOReverseIndicators].[xElement],
       [MISMOReverseIndicators].[Value],
       [MISMOReverseIndicators].[CreatedDate],
       [MISMOReverseIndicators].[UpdatedBy],
       [MISMOReverseIndicators].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceMISMOReverseIndicators] WITH(NOLOCK)
  INNER JOIN [dbo].[MISMOReverseIndicators] WITH(NOLOCK) ON [MISMOReverseIndicators].[Id] = [ApplicationInstanceMISMOReverseIndicators].[MISMOReverseIndicatorId] AND [MISMOReverseIndicators].[isActive] = 1
 WHERE [ApplicationInstanceMISMOReverseIndicators].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceMISMOReverseIndicators].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceProcessingSteps]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceProcessingSteps] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceProcessingSteps].[Id] AS [ApplicationInstanceProcessingStepId],
       [ApplicationInstanceProcessingSteps].[ProcessingStepId],
       [ProcessingSteps].[Name],
       [ProcessingSteps].[CreatedDate],
       [ProcessingSteps].[UpdatedBy],
       [ProcessingSteps].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceProcessingSteps]
  INNER JOIN [dbo].[ProcessingSteps] WITH(NOLOCK) ON [ProcessingSteps].[Id] = [ApplicationInstanceProcessingSteps].[ProcessingStepId] AND [ProcessingSteps].[isActive] = 1
 WHERE [ApplicationInstanceProcessingSteps].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceProcessingSteps].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationInstanceUniformResourceIdentifiers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationInstanceUniformResourceIdentifiers] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

SELECT [ApplicationInstanceUniformResourceIdentifiers].[Id] AS [ApplicationInstanceUniformResourceIdentifierId],
       [ApplicationInstanceUniformResourceIdentifiers].[UniformResourceIdentifierId],
       [UniformResourceIdentifiers].[Description],
       [UniformResourceIdentifiers].[Value],
       [UniformResourceIdentifiers].[CreatedDate],
       [UniformResourceIdentifiers].[UpdatedBy],
       [UniformResourceIdentifiers].[UpdatedDate]
  FROM [dbo].[ApplicationInstanceUniformResourceIdentifiers] WITH(NOLOCK)
  INNER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [ApplicationInstanceUniformResourceIdentifiers].[UniformResourceIdentifierId] AND [UniformResourceIdentifiers].[isActive] = 1
 WHERE [ApplicationInstanceUniformResourceIdentifiers].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [ApplicationInstanceUniformResourceIdentifiers].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgApplicationSettings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgApplicationSettings]
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS
IF NOT EXISTS(SELECT 1 FROM [dbo].[ApplicationSettings] WHERE [ApplicationSettings].[ApplicationInstanceId] = @ApplicationInstanceId AND [ApplicationSettings].[isActive] = 1)
	BEGIN
		SELECT TOP(1) [ApplicationSettings].[Id] AS [Id],
		       [ApplicationSettings].[ItemName] AS [Name],
			   [ApplicationSettings].[ItemValue] AS [Value],
		       [ApplicationSettings].[IsActive],
			   [ApplicationSettings].[CreatedDate],
			   [ApplicationSettings].[UpdatedBy],
			   [ApplicationSettings].[UpdatedDate]
		  FROM [dbo].[ApplicationSettings] WITH(NOLOCK)
		 WHERE 1 = 0
	END
ELSE
	BEGIN
		SELECT [ApplicationSettings].[Id] AS [Id],
		       [ApplicationSettings].[ItemName] AS [Name],
			   [ApplicationSettings].[ItemValue] AS [Value],
		       [ApplicationSettings].[IsActive],
			   [ApplicationSettings].[CreatedDate],
			   [ApplicationSettings].[UpdatedBy],
			   [ApplicationSettings].[UpdatedDate]
		  FROM [dbo].[ApplicationSettings] WITH(NOLOCK)
		 WHERE [ApplicationSettings].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [ApplicationSettings].[IsActive] = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[spgApplicationTypeId]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgApplicationTypeId] 
(
	@ApplicationTypeValue	NVARCHAR(50), 
	@ApplicationTypeId		UNIQUEIDENTIFIER OUTPUT
)
AS

SET @ApplicationTypeId= (SELECT [ApplicationTypes].[Id] 
                           FROM [dbo].[ApplicationTypes] WITH(NOLOCK) 
						  WHERE [ApplicationTypes].[Value] = @ApplicationTypeValue 
						    AND [ApplicationTypes].[isActive] = 1)

GO
/****** Object:  StoredProcedure [dbo].[spgClientCredentials]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgClientCredentials]
(
	@TierId UNIQUEIDENTIFIER = NULL
)
AS
IF (@TierId IS NOT NULL)
	BEGIN
		IF ((SELECT COUNT([TierId]) FROM [dbo].[BrandESignProviderByTier] WHERE [TierId] = @TierId) = 0)
			BEGIN
				SET @TierId = NULL
			END
	END
IF (@TierId IS NULL)
	BEGIN
		SELECT [ClientCredentials].[ClientCode],
			   [Credentials].[Description], 
			   [Credentials].[UserName], 
			   [Credentials].[Password],
			   [ClientCredentials].[RestrictOffshoreAccess],
			   NULL AS [ESignAccountId],
			   NULL AS [ESignUserId],
			   NULL AS [ESignUserPassword],
			   NULL AS [ESignEmailSubjectSigner],
			   NULL AS [ESignEmailBodySigner],
			   NULL AS [ESignEmailSubjectViewer],
			   NULL AS [ESignEmailBodyViewer],
			   [ClientCredentials].[CreatedDate],
			   [ClientCredentials].[UpdatedBy],
			   [ClientCredentials].[UpdatedDate],
			   CAST('CA76FD62-E6CC-4ADA-8CEF-2959150530A6' AS UNIQUEIDENTIFIER) AS [ESignProviderId],
			   0 AS [VendorCode],
			   CAST(0 AS BIT) AS OptionalPipelineRunout
		  FROM [dbo].[ClientCredentials]	WITH(NOLOCK) 
		  INNER JOIN [dbo].[Credentials]	WITH(NOLOCK) ON [Credentials].[Id] = [ClientCredentials].[CredentialsId] AND [Credentials].[isActive] = 1
		  ORDER BY [ClientCredentials].[ClientCode]
	END
ELSE
	BEGIN
		SELECT [ClientCredentials].[ClientCode],
			   [Credentials].[Description], 
			   [Credentials].[UserName], 
			   [Credentials].[Password],
			   [ClientCredentials].[RestrictOffshoreAccess],
   			   [BrandESignProviderByTier].[ESignAccountId],
			   [BrandESignProviderByTier].[ESignUserId],
			   [BrandESignProviderByTier].[ESignUserPassword],
			   [BrandESignProviderByTier].[ESignEmailSubjectSigner],
			   [BrandESignProviderByTier].[ESignEmailBodySigner],
			   [BrandESignProviderByTier].[ESignEmailSubjectViewer],
			   [BrandESignProviderByTier].[ESignEmailBodyViewer],
   			   [ClientCredentials].[CreatedDate],
			   [ClientCredentials].[UpdatedBy],
			   [ClientCredentials].[UpdatedDate],
			   [ESignProviders].[Id] AS [ESignProviderId],
			   [ESignProviders].[VendorCode],
			   [BrandESignProviderByTier].[OptionalPipelineRunout]
		  FROM [dbo].[ClientCredentials]				WITH(NOLOCK) 
		  INNER JOIN [dbo].[Credentials]				WITH(NOLOCK) ON [Credentials].[Id] = [ClientCredentials].[CredentialsId] AND [Credentials].[isActive] = 1
		  INNER JOIN [dbo].[ClientBrands]				WITH(NOLOCK) ON [ClientCredentials].[Id] = [ClientBrands].[ClientId] AND [ClientBrands].[BrandName] IS NULL
		  INNER JOIN [dbo].[BrandESignProviderByTier]	WITH(NOLOCK) ON [ClientBrands].[Id] = [BrandESignProviderByTier].[BrandId] AND [BrandESignProviderByTier].[TierId] = @TierId
		  INNER JOIN [dbo].[ESignProviders]				WITH(NOLOCK) ON [ESignProviders].[Id] = [BrandESignProviderByTier].[ESignProviderId]
          ORDER BY [ClientCredentials].[ClientCode]
	END
GO
/****** Object:  StoredProcedure [dbo].[spgClientDataPrivacyConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgClientDataPrivacyConfiguration] 
AS


SELECT	[ClientDataPrivacy].[Id] AS [ClientDataPrivacyId],
		[ClientDataPrivacy].[ActiveDirectoryGroupOrUser],
		[ClientDataPrivacy].[IsUserName],
		[ClientDataPrivacy].[CreatedDate],
		[ClientDataPrivacy].[UpdatedBy],
		[ClientDataPrivacy].[UpdatedDate]				
FROM ClientDataPrivacy WITH(NOLOCK)
WHERE [ClientDataPrivacy].[IsActive] = 1 

GO
/****** Object:  StoredProcedure [dbo].[spgClientDetails]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgClientDetails]
AS
Select	ClientCredentials.Id,
		ClientCredentials.ClientCode,
		Credentials.Description,
		Credentials.Domain,
		Credentials.UserName,
		Credentials.isActive
from ClientCredentials
INNER JOIN Credentials ON ClientCredentials.CredentialsId = Credentials.Id
ORDER BY Credentials.Description
GO
/****** Object:  StoredProcedure [dbo].[spgConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgConfiguration] 
(
	@ApplicationTypeValue	NVARCHAR(50),
	@IpAddressValue			NVARCHAR(1024)
)
AS

DECLARE @Success BIT = 0

-- Begin by converting given values into a specific ApplicationInstanceId & ServerId

DECLARE @ApplicationInstanceId UNIQUEIDENTIFIER
EXEC [dbo].[spgApplicationInstanceId] @ApplicationTypeValue, @IpAddressValue, @ApplicationInstanceId OUTPUT

DECLARE @ServerId UNIQUEIDENTIFIER
EXEC [dbo].[spgServerId] @IpAddressValue, @ServerId OUTPUT

-- Now test to see that we have interpreted the values correctly

IF(@ApplicationInstanceId IS NULL)
	BEGIN
		SELECT @Success AS [Success], 'Cannot interpret configuration request.' AS [Message]
		RETURN -1
	END

SET @Success = 1

SELECT @Success AS [Success], 'Successfully interpreted configuration request.' AS [Message]

DECLARE @TierId UNIQUEIDENTIFIER = (SELECT [TierId] FROM [dbo].[Servers] WITH(NOLOCK) WHERE [Id] = @ServerId)

-- Determined specfic application instance.  Return common results

EXEC [dbo].[spgApplicationInstance] @ApplicationInstanceId
EXEC [dbo].[spgConnectionStrings] 
EXEC [dbo].[spgAppliances] @ApplicationTypeValue, @ServerId
EXEC [dbo].[spgClientCredentials] @TierId
EXEC [dbo].[spgESignProviders]
EXEC [dbo].[spgTiers]
EXEC [dbo].[spgClientDataPrivacyConfiguration]

-- If Server specific, provide what is known about the Server

EXEC [dbo].[spgServer] @ServerId = @ServerId

-- Next, process common intersection tables

EXEC [dbo].[spgApplicationInstanceConnectionStrings] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceCredentials] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceEndPoints] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceInternalApi] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceLoggingConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceMISMOReverseIndicators] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceProcessingSteps] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceUniformResourceIdentifiers] @ApplicationInstanceId
EXEC [dbo].[spgApplicationInstanceGroupedDataPullServers] @ApplicationInstanceId

-- Finally, provide the application specific configuration information

EXEC [dbo].[spgDigitalSignaturesClientConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgDocumentGenerationConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgEncomiaMonitorConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgExternalProcessorConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgInternalApiConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgPrintAndShipConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgPublicApiConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgSignedDocumentConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgToolsConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgTransactionProcessorConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgDocuSignProcessorConfiguration] @ApplicationInstanceId
EXEC [dbo].[spgDocumentCleanUpConfiguration] @ApplicationInstanceId



GO
/****** Object:  StoredProcedure [dbo].[spgConnectionStrings]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgConnectionStrings] AS

IF EXISTS(SELECT 1 FROM [dbo].[ConnectionStrings] WHERE [ConnectionStrings].[isActive] = 1)
	BEGIN
		SELECT [ConnectionStrings].[Id] AS [ConnectionStringId],
			   [ConnectionStrings].[Description],
	           [ConnectionStringTypes].[Value] AS [ConnectionStringType],
	           [ConnectionStringMetaDatas].[Value] AS [MetaData],
			   [SQLBuilderApplicationIntents].[Value] AS [ApplicationIntent],
			   [ConnectionStrings].[ApplicationName],
			   [ConnectionStrings].[AsynchronousProcessing],
			   [ConnectionStrings].[AttachDBFilename],
			   [ConnectionStrings].[BrowsableConnectionString],
			   [ConnectionStrings].[ConnectTimeout],
			   [ConnectionStrings].[ContextConnection],
			   [ConnectionStrings].[CurrentLanguageId],
			   languages.[alias] AS [CurrentLanguage],
			   [ConnectionStrings].[DataSource],
			   [ConnectionStrings].[Encrypt],
			   [ConnectionStrings].[Enlist],
			   [ConnectionStrings].[InitialCatalog],
			   [ConnectionStrings].[IntegratedSecurity],
			   [ConnectionStrings].[LoadBalanceTimeout],
			   [ConnectionStrings].[MaxPoolSize],
			   [ConnectionStrings].[MinPoolSize],
			   [ConnectionStrings].[MultipleActiveResultsSets],
			   [ConnectionStrings].[NetworkLibrary],
			   [ConnectionStrings].[PacketSize],
			   [Credentials].[Password],
			   [ConnectionStrings].[PersistingSecurityInfo],
			   [ConnectionStrings].[Pooling],
			   [ConnectionStrings].[Replication],
			   [SQLBuilderTransactionBindings].[Value] AS [TransactionBinding],
			   [ConnectionStrings].[TrustServerCertificate],
			   [SQLBuilderTypeSystemVersions].[Value] AS [TypeSystemVersion],
			   [Credentials].[Domain] AS [UserDomain],
			   [Credentials].[UserName],
			   [ConnectionStrings].[UserInstance],
			   [ConnectionStrings].[WorkstationId],
			   [ConnectionStrings].[CreatedDate],
			   [ConnectionStrings].[UpdatedBy],
			   [ConnectionStrings].[UpdatedDate]
		  FROM [dbo].[ConnectionStrings] WITH(NOLOCK)
          INNER JOIN [dbo].[ConnectionStringTypes]			WITH(NOLOCK) ON [ConnectionStringTypes].[Id] = [ConnectionStrings].[ConnectionStringTypeId]	
          INNER JOIN [dbo].[ConnectionStringMetaDatas]		WITH(NOLOCK) ON [ConnectionStringMetaDatas].[Id] = [ConnectionStringTypes].[MetaDataId]	
		  INNER JOIN [dbo].[SQLBuilderApplicationIntents]	WITH(NOLOCK) ON [SQLBuilderApplicationIntents].[Id] = [ConnectionStrings].[ApplicationIntentId]
		  INNER JOIN [dbo].[SQLBuilderTransactionBindings]	WITH(NOLOCK) ON [SQLBuilderTransactionBindings].[Id] = [ConnectionStrings].[TransactionBindingId]
		  INNER JOIN [dbo].[SQLBuilderTypeSystemVersions]	WITH(NOLOCK) ON [SQLBuilderTypeSystemVersions].[Id] = [ConnectionStrings].[TypeSystemVersionId]
		  INNER JOIN [dbo].[Credentials]					WITH(NOLOCK) ON [Credentials].[Id] = [ConnectionStrings].[CredentialsId] AND [Credentials].[isActive] = 1
		  INNER JOIN sys.syslanguages languages             WITH(NOLOCK) ON languages.[langid] = [ConnectionStrings].[CurrentLanguageId]
		 WHERE [ConnectionStrings].[isActive] = 1
		 ORDER BY [ConnectionStrings].[Description]
	END

GO
/****** Object:  StoredProcedure [dbo].[spgDigitalSignaturesClientConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgDigitalSignaturesClientConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[DigitalSignaturesClientConfigurations] WHERE [DigitalSignaturesClientConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [DigitalSignaturesClientConfigurations].[isActive] = 1)
	BEGIN
SELECT [DigitalSignaturesClientConfigurations].[Id] AS [DigitalSignaturesClientConfigurationsId],
       [UniformResourceIdentifiers].[Id] AS [CadenceServerURIId],
       [UniformResourceIdentifiers].[Description] AS [CadenceServerURIDescription],
       [UniformResourceIdentifiers].[Value] AS [CadenceServerURIValue],
       [DigitalSignaturesClientConfigurations].[CreatedDate],
       [DigitalSignaturesClientConfigurations].[UpdatedBy],
       [DigitalSignaturesClientConfigurations].[UpdatedDate]
  FROM [dbo].[DigitalSignaturesClientConfigurations] WITH(NOLOCK)
  INNER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [DigitalSignaturesClientConfigurations].[CadenceServerURI] AND [UniformResourceIdentifiers].[isActive] = 1
 WHERE [DigitalSignaturesClientConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
   AND [DigitalSignaturesClientConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgDocumentGenerationConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgDocumentGenerationConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[DocumentGenerationConfigurations] WHERE [DocumentGenerationConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [DocumentGenerationConfigurations].[isActive] = 1)
	BEGIN
		SELECT [DocumentGenerationConfigurations].[Id] AS [DocumentGenerationConfigurationsId],
			   [DocumentGenerationConfigurations].[FmfGeneratorName],
			   [DocumentGenerationConfigurations].[FromEmailAdr],
			   [DocumentGenerationConfigurations].[FromFirstName],
			   [DocumentGenerationConfigurations].[FromLastName],
			   [DocumentGenerationConfigurations].[FromName],
			   [UniformResourceIdentifiers].[Id] AS [CompositionURLId],
			   [UniformResourceIdentifiers].[Description] AS [CompositionURLDescription],
			   [UniformResourceIdentifiers].[Value] AS [CompositionURLValue],
			   [DocumentGenerationConfigurations].[CreatedDate],
			   [DocumentGenerationConfigurations].[UpdatedBy],
			   [DocumentGenerationConfigurations].[UpdatedDate]
		  FROM [dbo].[DocumentGenerationConfigurations] WITH(NOLOCK)
		  INNER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [DocumentGenerationConfigurations].[CompositionURL] AND [UniformResourceIdentifiers].[isActive] = 1
		 WHERE [DocumentGenerationConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [DocumentGenerationConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgDocuSignProcessorConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgDocuSignProcessorConfiguration] 
(
  @ApplicationInstanceId UNIQUEIDENTIFIER
)
AS
IF EXISTS(SELECT 1 FROM [dbo].[DocuSignProcessorConfigurations] WHERE [DocuSignProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [DocuSignProcessorConfigurations].[isActive] = 1)
  BEGIN
    SELECT [DocuSignProcessorConfigurations].[Id] AS [DocuSignProcessorConfigurationsId],
           [DocuSignProcessorConfigurations].[Interval],
           [DocuSignProcessorConfigurations].[MaximumProcessingRetries],
           [DocuSignProcessorConfigurations].[MaximumProcessingMinutes],
           [DocuSignProcessorConfigurations].[SignatureTabXOffset],
           [DocuSignProcessorConfigurations].[SignatureTabYOffset],
           [DocuSignProcessorConfigurations].[DateTimeTabXOffset],
           [DocuSignProcessorConfigurations].[DateTimeTabYOffset],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabXOffset],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabYOffset],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabAnchorString],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabFont],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabFontSize],
           [DocuSignProcessorConfigurations].[EnvelopeIdTabTabLabel],
           [DocuSignProcessorConfigurations].[SignatureNoDateTabXOffset],
           [DocuSignProcessorConfigurations].[SignatureNoDateTabYOffset],
           [DocuSignProcessorConfigurations].[SigningDateTabXOffset],
           [DocuSignProcessorConfigurations].[SigningDateTabYOffset],
           [DocuSignProcessorConfigurations].[SignatureTab4506CXOffset],
           [DocuSignProcessorConfigurations].[SignatureTab4506CYOffset],
           [DocuSignProcessorConfigurations].[CreatedDate],
           [DocuSignProcessorConfigurations].[UpdatedBy],
           [DocuSignProcessorConfigurations].[UpdatedDate]
      FROM [dbo].[DocuSignProcessorConfigurations] WITH(NOLOCK)
     WHERE [DocuSignProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
       AND [DocuSignProcessorConfigurations].[isActive] = 1
  END
GO
/****** Object:  StoredProcedure [dbo].[spgEncomiaMonitorConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgEncomiaMonitorConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[EncomiaMonitorConfigurations] WHERE [EncomiaMonitorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [EncomiaMonitorConfigurations].[isActive] = 1)
	BEGIN
		SELECT [EncomiaMonitorConfigurations].[Id] AS [EncomiaMonitorConfigurationsId],
			   [EncomiaMonitorConfigurations].[LogWarnings],
			   [EncomiaMonitorConfigurations].[PollingFrequencyInSeconds],
			   [EncomiaMonitorConfigurations].[UseEventLog],
			   [EncomiaMonitorConfigurations].[MaxRequestsToProcess],
			   [EncomiaMonitorConfigurations].[ProcessingTimeout],
			   [EncomiaMonitorConfigurations].[CreatedDate],
			   [EncomiaMonitorConfigurations].[UpdatedBy],
			   [EncomiaMonitorConfigurations].[UpdatedDate]
		  FROM [dbo].[EncomiaMonitorConfigurations] WITH(NOLOCK)
		 WHERE [EncomiaMonitorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [EncomiaMonitorConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgESignProviders]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgESignProviders]
AS

SELECT [ESignProviders].[Id] AS [ESignId],
	   [ESignProviders].[VendorCode], 
	   [ESignProviders].[Description], 
	   [ESignProviders].[IntegrationKey],
   	   [ESignProviders].[CreatedDate],
	   [ESignProviders].[UpdatedBy],
	   [ESignProviders].[UpdatedDate]
  FROM [dbo].[ESignProviders] WITH(NOLOCK) 
 WHERE [ESignProviders].[isActive] = 1
 ORDER BY [ESignProviders].[VendorCode]

GO
/****** Object:  StoredProcedure [dbo].[spgExternalProcessorConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgExternalProcessorConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[ExternalProcessorConfigurations] WHERE [ExternalProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [ExternalProcessorConfigurations].[isActive] = 1)
	BEGIN
		SELECT [ExternalProcessorConfigurations].[Id] AS [ExternalProcessorConfigurationsId],
		       [ExternalProcessorConfigurations].[Interval],
		       [ExternalProcessorConfigurations].[MaximumProcessingRetries],
			   [ExternalProcessorConfigurations].[MaximumProcessingMinutes],
			   [ExternalProcessorConfigurations].[CreatedDate],
			   [ExternalProcessorConfigurations].[UpdatedBy],
			   [ExternalProcessorConfigurations].[UpdatedDate]
		  FROM [dbo].[ExternalProcessorConfigurations] WITH(NOLOCK)
		 WHERE [ExternalProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [ExternalProcessorConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgGridEndpoints]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgGridEndpoints] 
(
	@TierId UNIQUEIDENTIFIER = NULL
)	AS
	BEGIN
		DECLARE @GridId int = (SELECT [GridId] FROM [TIERS] WITH(NOLOCK) WHERE [Id] = @TierId)
		SELECT	[Tiers].[Id] AS [TierId],
				[Endpoints].[ServiceType] AS [ServiceType],
				[UniformResourceIdentifiers].[Value] AS [Uri],
				[UniformResourceIdentifiers].[Description] AS [UriDescription],
				[Credentials].[Domain] AS [Domain],
				[Credentials].[UserName] AS [UserName],
				[Credentials].[Password] AS [Password],
				[Grid].[Description] AS [GridDescription],
				[Grid].[Id] AS [GridId]
			FROM [dbo].[Tiers] WITH(NOLOCK)
			INNER JOIN [dbo].[Grid]
				WITH(NOLOCK) ON [Grid].[Id] = [Tiers].[GridId] AND [Grid].[isActive] = 1
			INNER JOIN [dbo].[TierEndpoints]
				WITH(NOLOCK) ON [TierEndpoints].[TierId] = [Tiers].[Id]	AND [TierEndpoints].[isActive] = 1
			INNER JOIN [dbo].[Endpoints]
				WITH(NOLOCK) ON [TierEndpoints].[EndpointId] = [Endpoints].[Id] AND [Endpoints].[isActive] = 1
			INNER JOIN [dbo].[UniformResourceIdentifiers]
				WITH(NOLOCK) ON [Endpoints].[UniformResourceIdentifierId] = [UniformResourceIdentifiers].[Id] AND [UniformResourceIdentifiers].[isActive] = 1
			LEFT OUTER JOIN [dbo].[Credentials]
				WITH(NOLOCK) ON [Endpoints].[CredentialsId] = [Credentials].[Id] AND [Credentials].[isActive] = 1
			WHERE [Tiers].[GridId] = @GridId
				AND [Tiers].[Id] != @TierId
				AND [Tiers].[isActive] = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[spgHostedServices]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgHostedServices]
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS
IF NOT EXISTS(SELECT 1 FROM [dbo].[HostedServices] WHERE [HostedServices].[ServiceHostInstanceId] = @ApplicationInstanceId AND [HostedServices].[isActive] = 1)
	BEGIN
		SELECT Top(1) [HostedServices].[AppDomainId],
				   [HostedServices].[ServiceHostInstanceId],
				   [HostedServices].[Namespace],
				   [HostedServices].[AssemblyName],
				   [HostedServices].[IsActive],
				   [HostedServices].[CreatedDate],
				   [HostedServices].[UpdatedDate],
				   [HostedServices].[UpdatedBy] 
		FROM [dbo].[HostedServices] WITH(NOLOCK)
		WHERE 1 = 0
	END
ELSE
	BEGIN
		SELECT [HostedServices].[AppDomainId],
		       [HostedServices].[ServiceHostInstanceId],
			   [HostedServices].[Namespace],
		       [HostedServices].[AssemblyName],
			   [HostedServices].[IsActive],
			   [HostedServices].[CreatedDate],
			   [HostedServices].[UpdatedDate],
			   [HostedServices].[UpdatedBy]
		  FROM [dbo].[HostedServices] WITH(NOLOCK)
		 WHERE [HostedServices].[ServiceHostInstanceId] = @ApplicationInstanceId 
		   AND [HostedServices].[IsActive] = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[spgInternalApiConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgInternalApiConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS
IF EXISTS(SELECT 1 FROM [dbo].[InternalApiConfigurations] WHERE [InternalApiConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [InternalApiConfigurations].[isActive] = 1)
	BEGIN
		SELECT [InternalApiConfigurations].[Id] AS [InternalApiConfigurationsId],
			   [InternalApiConfigurations].[DocumentRetentionDays],
			   [UniformResourceIdentifiers].[Id] AS [DocumentsDirectoryId],
			   [UniformResourceIdentifiers].[Description] AS [DocumentsDirectoryDescription],
			   [UniformResourceIdentifiers].[Value] AS [DocumentsDirectoryValue],
			   [shareUri].[Value] AS FileShareUri,
			   [Credentials].[Domain],
			   [Credentials].[Password],
			   [Credentials].[UserName],
			   [InternalApiConfigurations].[CreatedDate],
			   [InternalApiConfigurations].[UpdatedBy],
			   [InternalApiConfigurations].[UpdatedDate],
			   [InternalApiConfigurations].[AdditionalDocumentMaxSize]
		  FROM [dbo].[InternalApiConfigurations] WITH(NOLOCK)
		  INNER JOIN [dbo].[Credentials]				WITH(NOLOCK) ON [Credentials].[Id] = [InternalApiConfigurations].[CredentialsId]						AND [Credentials].[isActive] = 1
		  INNER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [InternalApiConfigurations].[DocumentsDirectory]	AND [UniformResourceIdentifiers].[isActive] = 1
		  INNER JOIN [dbo].[UniformResourceIdentifiers]	AS shareUri WITH(NOLOCK) ON [shareUri].[Id] = [InternalApiConfigurations].[FileShareUri]	AND [shareUri].[isActive] = 1
		 WHERE [InternalApiConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [InternalApiConfigurations].[isActive] = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[spgInternalApiConfigurationById]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgInternalApiConfigurationById] 
(
	@InternalApiConfigurationId UNIQUEIDENTIFIER
)
AS
IF EXISTS(SELECT 1 FROM [dbo].[InternalApiConfigurations] WHERE [InternalApiConfigurations].[Id] = @InternalApiConfigurationId AND [InternalApiConfigurations].[isActive] = 1)
	BEGIN
		SELECT [InternalApiConfigurations].[Id] AS [InternalApiConfigurationsId],
			   [InternalApiConfigurations].[DocumentRetentionDays],
			   [UniformResourceIdentifiers].[Id] AS [DocumentsDirectoryId],
			   [UniformResourceIdentifiers].[Description] AS [DocumentsDirectoryDescription],
			   [UniformResourceIdentifiers].[Value] AS [DocumentsDirectoryValue],
			   [Credentials].[Domain],
			   [Credentials].[Password],
			   [Credentials].[UserName],
			   [InternalApiConfigurations].[CreatedDate],
			   [InternalApiConfigurations].[UpdatedBy],
			   [InternalApiConfigurations].[UpdatedDate],
			   [InternalApiConfigurations].[AdditionalDocumentMaxSize]
		  FROM [dbo].[InternalApiConfigurations] WITH(NOLOCK)
		  INNER JOIN [dbo].[Credentials]				WITH(NOLOCK) ON [Credentials].[Id] = [InternalApiConfigurations].[CredentialsId]						AND [Credentials].[isActive] = 1
		  INNER JOIN [dbo].[UniformResourceIdentifiers]	WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [InternalApiConfigurations].[DocumentsDirectory]	AND [UniformResourceIdentifiers].[isActive] = 1
		 WHERE [InternalApiConfigurations].[Id] = @InternalApiConfigurationId
		   AND [InternalApiConfigurations].[isActive] = 1
	END
GO
/****** Object:  StoredProcedure [dbo].[spgLoanDataErrorTypes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgLoanDataErrorTypes]
AS
SELECT [LoanDataErrorTypes].[Id],
      [LoanDataErrorTypes].[Value],
      [LoanDataErrorTypes].[SearchString],
      [LoanDataErrorTypes].[isActive],
      [LoanDataErrorTypes].[CreatedDate],
      [LoanDataErrorTypes].[UpdatedDate],
      [LoanDataErrorTypes].[UpdatedBy]
  FROM [dbo].[LoanDataErrorTypes]WITH(NOLOCK) 
 WHERE [LoanDataErrorTypes].[isActive] = 1
GO
/****** Object:  StoredProcedure [dbo].[spgNodes]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 


CREATE PROCEDURE [dbo].[spgNodes] AS
	SELECT	[Nodes].[Id] AS NodeId,
			[Nodes].[Description],
			[UniformResourceIdentifiers].[Value] AS URI,
			Nodes.TierId,
			Tiers.DisplayName AS [TierDescription]
		FROM [dbo].[Nodes] WITH(NOLOCK)
        INNER JOIN [dbo].[UniformResourceIdentifiers]
			WITH(NOLOCK) ON [UniformResourceIdentifiers].[Id] = [Nodes].[Address]	
		INNER JOIN dbo.Tiers WITH(NOLOCK) ON Tiers.Id = Nodes.TierId
		ORDER BY [Nodes].[Description]

GO
/****** Object:  StoredProcedure [dbo].[spgPublicApiConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgPublicApiConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[PublicApiConfigurations] WHERE [PublicApiConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [PublicApiConfigurations].[isActive] = 1)
	BEGIN
		SELECT [PublicApiConfigurations].[Id] AS [PublicApiConfigurationsId],
			   [APITesterConfigurations].[apiTestDownloadDocumentGuid],
			   [APITesterConfigurations].[apiTestDownloadPackageGuid],
			   [APITesterConfigurations].[apiTestMC231DocumentGuid],
			   [APITesterConfigurations].[apiTestMC231MessageGuid],
			   [APITesterConfigurations].[apiTestMC231RequestGuid],
			   [APITesterConfigurations].[apiTestMismo26DocumentGuid],
			   [APITesterConfigurations].[apiTestMismo26MessageGuid],
			   [APITesterConfigurations].[apiTestMismo26RequestGuid],
			   [APITesterConfigurations].[apiTestOwnerEmail],
			   [APITesterConfigurations].[apiTestPackageGuid],
			   [APITesterConfigurations].[apiTestPackageName],
			   [APITesterConfigurations].[apiTestUserName],
			   [PublicApiConfigurations].[CreatedDate],
			   [PublicApiConfigurations].[UpdatedBy],
			   [PublicApiConfigurations].[UpdatedDate]
		  FROM [dbo].[PublicApiConfigurations] WITH(NOLOCK)
		  INNER JOIN [dbo].[APITesterConfigurations] WITH(NOLOCK) ON [APITesterConfigurations].[Id] = [PublicApiConfigurations].[ApiTesterConfigurationId] AND [APITesterConfigurations].[isActive] = 1
		 WHERE [PublicApiConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [PublicApiConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgServer]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgServer] 
(
	@ServerId UNIQUEIDENTIFIER
)
AS

SELECT [Servers].[Id] AS [ServerId],
	   [Servers].[Description],
	   ServerURI.[Id] AS [ServerUriId],
	   ServerURI.[Description] AS [ServerUriDescription],
	   ServerURI.[Value] AS [ServerUriLocation],
	   [Servers].[CadenceConnectionStringId],
	   [Servers].[XPathConfigEnvironment],
	   [Servers].[BookmarkTitlesEditable],
	   [Servers].[isDefault],
	   [Servers].[ClientPackageEditable],
	   [Credentials].[Id] AS [CredentialsId],
	   [Credentials].[Description] AS [CredentialsDescription],
	   [Credentials].[Domain] AS [CredentialsDomain],
	   [Credentials].[UserName] AS [CredentialsUserName],
	   [Credentials].[Password] AS [CredentialsPassword],
	   [Servers].[CreatedDate],
	   [Servers].[UpdatedBy],
	   [Servers].[UpdatedDate]
  FROM [dbo].[Servers] WITH(NOLOCK)
  INNER JOIN [dbo].[Credentials]								WITH(NOLOCK) ON [Credentials].[Id] = [Servers].[CredentialsId]	AND [Credentials].[isActive] = 1
  LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers] ServerURI	WITH(NOLOCK) ON ServerURI.[Id] = [Servers].[ServerURI]			AND ServerURI.[isActive] = 1
 WHERE [Servers].[Id] = @ServerId 
   AND [Servers].[isActive] = 1

GO
/****** Object:  StoredProcedure [dbo].[spgServerId]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgServerId] 
(
	@IpAddressValue					NVARCHAR(1024), 
	@ServerId	UNIQUEIDENTIFIER OUTPUT
)
AS

DECLARE @UniformResourceIdentifier UNIQUEIDENTIFIER
EXEC [dbo].[spgUniformResourceIdentifierId] @IpAddressValue, @UniformResourceIdentifier OUTPUT

SET @ServerId = (SELECT [Servers].[Id] 
                   FROM [dbo].[Servers] WITH(NOLOCK) 
				  WHERE [Servers].[ServerURI] = @UniformResourceIdentifier 
			        AND [Servers].[isActive] = 1)

GO
/****** Object:  StoredProcedure [dbo].[spgTiers]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgTiers] AS
SELECT [Tiers].[Id] AS [TierId], 
		[Tiers].[DisplayName],
		[Tiers].[CadenceConnectionStringId],
		[Tiers].[WarehouseConnectionStringId],
		ISNULL([InternalApis].[UniformResourceIdentifierId], '00000000-0000-0000-0000-000000000000') AS [InternalUriId],
		ISNULL([InternalApis].[MaximumEventRequestRangeHours], 24) AS [InternalMaxEventRequestRangeHours],
		ISNULL(iApi.[Description], '') AS [InternalApiUriDescription],
		ISNULL(iApi.[Value], '') AS [InternalApiUriValue],
		ISNULL(pApi.[Description], '') AS [PublicUriDescription],
		ISNULL(pApi.[Value], '') AS [PublicUriValue],
		ISNULL(toolsApi.[Description], '') AS [ToolsInternalAPIDescription],
		ISNULL(toolsApi.[Value], '') AS [ToolsInternalAPIUriValue],
		[Credentials].[Description] AS [DefaultClientCredentialsDescription],
		[Credentials].[Domain] AS [DefaultClientCredentialsDomain],
		[Credentials].[UserName] AS [DefaultClientCredentialsUserName],
		[Credentials].[Password] AS [DefaultClientCredentialsPassword],
		[Tiers].[SecureDeliveryTier],
		[Tiers].[CreatedDate],
		[Tiers].[UpdatedBy],
		[Tiers].[UpdatedDate],
		[Tiers].[MasterEnvironmentId] As [MasterEnvironmentId],
		[Tiers].[MonitorConnectionStringId]
	FROM [dbo].[Tiers] WITH(NOLOCK) 
	LEFT OUTER JOIN [dbo].[InternalApis]					WITH(NOLOCK) ON [InternalApis].[Id] = [Tiers].[InternalApiId]				AND [InternalApis].[isActive] = 1
	LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers] iApi	WITH(NOLOCK) ON [InternalApis].[UniformResourceIdentifierId] = iApi.[Id]	AND iApi.[isActive] = 1
	LEFT OUTER JOIN [dbo].[UniformResourceIdentifiers] pApi	WITH(NOLOCK) ON pApi.Id=[Tiers].[PublicApiUri]								AND pApi.[isActive] = 1
	LEFT OUTER JOIN [dbo].[Credentials]						WITH(NOLOCK) ON [Credentials].[Id]=[Tiers].[DefaultClientCredentialsId]		AND [Credentials].[isActive] = 1
	LEFT OUTER JOIN (SELECT tep.TierId, tu.Description, tu.Value FROM [TierEndpoints] tep JOIN Endpoints te ON te.Id = tep.EndpointId JOIN UniformResourceIdentifiers tu ON tu.Id = te.UniformResourceIdentifierId WHERE te.ServiceType = 11 AND te.isActive = 1 AND tep.IsActive = 1 AND tu.isActive = 1) AS toolsApi ON toolsApi.TierId = [Tiers].[Id]
	WHERE [Tiers].[isActive] = 1
	ORDER BY [Tiers].[DisplayName] 
GO
/****** Object:  StoredProcedure [dbo].[spgToolsConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgToolsConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[ToolsConfigurations] WHERE [ToolsConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [ToolsConfigurations].[isActive] = 1)
	BEGIN
		SELECT [ToolsConfigurations].[Id] AS [ToolsConfigurationsId],
			   [ToolsConfigurations].[ActivateWindows8],
			   [ToolsConfigurations].[IsXPathGenerateButtonEnabled],
			   [ToolsConfigurations].[UseMortgageFlex],
			   [ToolsConfigurations].[DefaultCadenceConnectionStringId], 
			   [ToolsConfigurations].[CreatedDate],
			   [ToolsConfigurations].[UpdatedBy],
			   [ToolsConfigurations].[UpdatedDate]
		  FROM [dbo].[ToolsConfigurations] WITH(NOLOCK)
		 WHERE [ToolsConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [ToolsConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgTransactionProcessorConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgTransactionProcessorConfiguration] 
(
	@ApplicationInstanceId UNIQUEIDENTIFIER
)
AS

IF EXISTS(SELECT 1 FROM [dbo].[TransactionProcessorConfigurations] WHERE [TransactionProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId AND [TransactionProcessorConfigurations].[isActive] = 1)
	BEGIN
		SELECT [TransactionProcessorConfigurations].[Id] AS [TransactionProcessorConfigurationsId],
			   [TransactionProcessorConfigurations].[ConcurrentRequests],
			   [TransactionProcessorConfigurations].[CreatedDate],
			   [TransactionProcessorConfigurations].[UpdatedBy],
			   [TransactionProcessorConfigurations].[UpdatedDate]
		  FROM [dbo].[TransactionProcessorConfigurations] WITH(NOLOCK)
		 WHERE [TransactionProcessorConfigurations].[ApplicationInstanceId] = @ApplicationInstanceId 
		   AND [TransactionProcessorConfigurations].[isActive] = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[spgUniformResourceIdentifierId]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create stored procedure 

CREATE PROCEDURE [dbo].[spgUniformResourceIdentifierId] 
(
	@IpAddressValue					NVARCHAR(1024), 
	@UniformResourceIdentifierId	UNIQUEIDENTIFIER OUTPUT
)
AS

SET @UniformResourceIdentifierId = (SELECT [UniformResourceIdentifiers].[Id] 
                                      FROM [dbo].[UniformResourceIdentifiers] WITH(NOLOCK) 
									 WHERE [UniformResourceIdentifiers].[Value] = @IpAddressValue 
									   AND [UniformResourceIdentifiers].[isActive] = 1)

GO
/****** Object:  StoredProcedure [dbo].[spgUserGroupConfiguration]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spgUserGroupConfiguration] 
AS
SELECT [UserGroups].[Id] AS [UserGroupId],
       [UserGroups].[GroupName],
       [UserGroups].[CreatedDate],
       [UserGroups].[UpdatedBy],
       [UserGroups].[UpdatedDate]				
FROM [UserGroups] WITH(NOLOCK)
WHERE [UserGroups].[IsActive] = 1 
GO
/****** Object:  StoredProcedure [dbo].[spiBrandEsignProviders]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spiBrandEsignProviders] (
			@BrandId int,
			@ESignProviderId uniqueidentifier
)
AS
IF NOT EXISTS(select 1 from BrandESignProviderByTier
	WHERE BrandId = @BrandId)
BEGIN
	DECLARE @Now         DATETIME = GETDATE()                                   
	INSERT INTO [dbo].[BrandESignProviderByTier] (BrandId, TierId, ESignProviderId, CreatedDate, UpdatedDate, UpdatedBy, OptionalPipelineRunout, ESignAccountId, ESignUserId, ESignUserPassword, ESignEmailSubjectSigner, ESignEmailBodySigner, ESignEmailSubjectViewer, ESignEmailBodyViewer)
	SELECT [ClientBrands].[Id],
		   [Tiers].[Id],
			  @ESignProviderId, -- DocuSign
			  @Now,
			  @Now,
			  'Administrator',
			  0,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL
	  FROM [dbo].[ClientBrands] WITH(NOLOCK)
	  CROSS JOIN [dbo].[Tiers]
	 WHERE [ClientBrands].[Id] = @BrandId
END
GO
/****** Object:  StoredProcedure [dbo].[spiClientEsignProviders]    Script Date: 3/17/2025 11:16:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spiClientEsignProviders] (
			@ClientCode nvarchar(50),
			@ESignProviderId uniqueidentifier
)
AS
IF NOT EXISTS(select 1 from ClientESignProviderByTier
	INNER JOIN ClientCredentials ON ClientCredentials.Id = ClientESignProviderByTier.ClientId
	WHERE ClientCredentials.ClientCode = @ClientCode)
BEGIN
	DECLARE @Now         DATETIME = GETDATE()                                   
	INSERT INTO [dbo].[ClientESignProviderByTier] (ClientId, TierId, ESignProviderId, CreatedDate, UpdatedDate, UpdatedBy, OptionalPipelineRunout, ESignAccountId, ESignUserId, ESignUserPassword, ESignEmailSubjectSigner, ESignEmailBodySigner, ESignEmailSubjectViewer, ESignEmailBodyViewer)
	SELECT [ClientCredentials].[Id],
		   [Tiers].[Id],
			  @ESignProviderId, -- DocuSign
			  @Now,
			  @Now,
			  'Administrator',
			  0,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL,
			  NULL
	  FROM [dbo].[ClientCredentials] WITH(NOLOCK)
	  CROSS JOIN [dbo].[Tiers]
	 WHERE [ClientCredentials].[ClientCode] = @ClientCode
END
GO
USE [master]
GO
ALTER DATABASE [DCConfigurationIntegration] SET  READ_WRITE 
GO
