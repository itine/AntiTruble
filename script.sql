USE [AntiTruble]
GO
/****** Object:  Table [dbo].[EquipmentDefects]    Script Date: 22.01.2019 22:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentDefects](
	[DefectId] [bigint] NOT NULL,
	[DefectName] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[Status] [tinyint] NULL,
	[EquipmentId] [bigint] NULL,
 CONSTRAINT [PK_EquipmentDefects] PRIMARY KEY CLUSTERED 
(
	[DefectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipments]    Script Date: 22.01.2019 22:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipments](
	[EquipmentId] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[EquipmentType] [tinyint] NULL,
	[DefectId] [bigint] NULL,
	[OwnerId] [bigint] NULL,
 CONSTRAINT [PK_Equipments] PRIMARY KEY CLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 22.01.2019 22:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [bigint] NOT NULL,
	[FIO] [nvarchar](100) NULL,
	[Password] [nvarchar](20) NULL,
	[Role] [tinyint] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[DateBirth] [date] NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repairs]    Script Date: 22.01.2019 22:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repairs](
	[RepairId] [bigint] NOT NULL,
	[RepairType] [tinyint] NULL,
	[Status] [tinyint] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Client] [bigint] NULL,
	[Master] [bigint] NULL,
 CONSTRAINT [PK_Repairs] PRIMARY KEY CLUSTERED 
(
	[RepairId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
