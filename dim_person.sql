USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_person]    Script Date: 2/1/2018 4:06:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_person](
	[personid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](100) NULL,
	[lastname] [varchar](100) NULL,
	[state_town] [varchar](20) NULL,
	[phonenumber] [varchar](15) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[personid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


