USE [PowerBIResumeDemo]
GO

ALTER TABLE [dbo].[dim_workactivities] DROP CONSTRAINT [FK__dim_worka__compa__4E88ABD4]
GO

/****** Object:  Table [dbo].[dim_workactivities]    Script Date: 10/24/2018 7:58:58 PM ******/
DROP TABLE [dbo].[dim_workactivities]
GO

/****** Object:  Table [dbo].[dim_workactivities]    Script Date: 10/24/2018 7:58:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_workactivities](
	[workactivitiesid] [int] IDENTITY(1,1) NOT NULL,
	[activitydescription] [varchar](max) NULL,
	[companyid] [int] NULL,
	[workbegin] Date null,
	[workend] date null

PRIMARY KEY CLUSTERED 
(
	[workactivitiesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[dim_workactivities]  WITH CHECK ADD FOREIGN KEY([companyid])
REFERENCES [dbo].[dim_company] ([companyid])
GO


