USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[fact_resume]    Script Date: 2/1/2018 4:06:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fact_resume](
	[personid] [int] NULL,
	[Locationid] [int] NULL,
	[companyid] [int] NULL,
	[titleid] [int] NULL,
	[workbegan] [int] NULL,
	[workended] [int] NULL,
	[workskillid] [int] NULL,
	[workactivitiesid] [int] NULL,
	[Checksum_factResume]  AS (checksum([personid],[Locationid],[companyid],[titleid],[workbegan],[workended],[workskillid],[workactivitiesid])),
	[workbegandate] [date] NULL,
	[workenddate] [date] NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([companyid])
REFERENCES [dbo].[dim_company] ([companyid])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([Locationid])
REFERENCES [dbo].[dim_location] ([locationid])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([personid])
REFERENCES [dbo].[dim_person] ([personid])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([titleid])
REFERENCES [dbo].[dim_title] ([titleid])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([workactivitiesid])
REFERENCES [dbo].[dim_workactivities] ([workactivitiesid])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([workbegan])
REFERENCES [dbo].[dimdate] ([DateKey])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([workended])
REFERENCES [dbo].[dimdate] ([DateKey])
GO

ALTER TABLE [dbo].[fact_resume]  WITH CHECK ADD FOREIGN KEY([workskillid])
REFERENCES [dbo].[dim_skills] ([workskillid])
GO

