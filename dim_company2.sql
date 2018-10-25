USE [PowerBIResumeDemo]
GO

ALTER TABLE [dbo].[dim_company] DROP CONSTRAINT [FK_dim_company_zipcodes]
GO

/****** Object:  Table [dbo].[dim_company]    Script Date: 10/24/2018 7:36:04 PM ******/
DROP TABLE [dbo].[dim_company]
GO

/****** Object:  Table [dbo].[dim_company]    Script Date: 10/24/2018 7:36:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_company](
	[companyid] [int] IDENTITY(1,1) NOT NULL,
	[companyname] [varchar](200) NULL,
	[title] varchar(200) NULL,
	[zip] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[companyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dim_company]  WITH CHECK ADD  CONSTRAINT [FK_dim_company_zipcodes] FOREIGN KEY([zip])
REFERENCES [dbo].[zipcodes] ([zip])
GO

ALTER TABLE [dbo].[dim_company] CHECK CONSTRAINT [FK_dim_company_zipcodes]
GO


