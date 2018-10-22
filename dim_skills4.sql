USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_skills]    Script Date: 2/1/2018 4:06:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS dim_skills
CREATE TABLE [dbo].[dim_skills](
	[workskillid] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](1500) NULL,
	[yearsexperience] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[workskillid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


