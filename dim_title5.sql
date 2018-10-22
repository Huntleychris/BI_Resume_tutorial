USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_title]    Script Date: 2/1/2018 4:06:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS  dim_title
CREATE TABLE [dbo].[dim_title](
	[titleid] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[titleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


