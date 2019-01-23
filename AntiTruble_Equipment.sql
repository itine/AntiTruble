USE [AntiTruble_Equipment]
GO
/****** Object:  Table [dbo].[EquipmentDefects]    Script Date: 23.01.2019 22:51:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentDefects](
	[DefectId] [bigint]  NOT NULL IDENTITY(1,1),
	[DefectName] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[EquipmentId] [bigint] NULL,
 CONSTRAINT [PK_EquipmentDefects] PRIMARY KEY CLUSTERED 
(
	[DefectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipments]    Script Date: 23.01.2019 22:51:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipments](
	[EquipmentId] [bigint]  NOT NULL IDENTITY(1,1),
	[Name] [nvarchar](50) NULL,
	[EquipmentType] [tinyint] NULL,
	[OwnerId] [bigint] NULL,
 CONSTRAINT [PK_Equipments] PRIMARY KEY CLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
