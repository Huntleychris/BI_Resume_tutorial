USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_company]    Script Date: 10/21/2018 5:22:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS  dim_company

CREATE TABLE [dbo].[dim_company](
	[companyid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [varchar](200) NULL,
	[zip] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[companyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


