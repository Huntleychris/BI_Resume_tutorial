USE [PowerBIResumeDemo]
GO

/****** Object:  Table [dbo].[dim_company]    Script Date: 2/1/2018 4:02:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_location](
	[locationid] [int] IDENTITY(1,1) NOT NULL,
	[locationname] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

