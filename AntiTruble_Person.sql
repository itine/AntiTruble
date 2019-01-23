USE [AntiTruble_Person]
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 23.01.2019 22:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [bigint] NOT NULL IDENTITY(1,1),
	[FIO] [nvarchar](100) NULL,
	[Password] [nvarchar](20) NULL,
	[Role] [tinyint] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Address] [nvarchar](50) NULL,
	[Balance] [money] NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
