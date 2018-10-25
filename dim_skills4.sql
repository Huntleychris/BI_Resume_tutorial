USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_skills]    Script Date: 10/24/2018 6:34:44 PM ******/
DROP TABLE if exists [dbo].[dim_skills]


/****** Object:  Table [dbo].[dim_skills]    Script Date: 10/24/2018 6:34:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_skills](
	[workskillid] [int] IDENTITY(1,1) NOT NULL,
	[companyid] [int] ,
	[description] [varchar](1500) NULL,
	[yearsexperience] Date NULL,
	[CalculatedYearsOfExp]  AS (CONVERT([decimal](4,2),datediff(month,[yearsexperience],getdate()))/(12)),
PRIMARY KEY CLUSTERED 
(
	[workskillid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




