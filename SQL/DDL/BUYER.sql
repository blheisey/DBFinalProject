SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bh176331].[BUYER](
    [Buyer_ID] [char](5) NOT NULL,
    [Name] [varchar](40) NOT NULL,
)
SET ANSI_PADDING ON
GO 
ALTER TABLE [BUYER] ADD  CONSTRAINT [PK_BUYER_Buyer_ID] PRIMARY KEY CLUSTERED 
(
	[Buyer_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [BUYER]  WITH CHECK ADD  CONSTRAINT [CK_BUYER_ID_FORMAT] CHECK (Buyer_ID LIKE '[0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [BUYER] CHECK CONSTRAINT [CK_BUYER_ID_FORMAT]
GO
SET ANSI_PADDING ON
GO
ALTER TABLE [BUYER]  WITH CHECK ADD  CONSTRAINT [CK_BUYER_NAME_FORMAT] CHECK (Name NOT LIKE '%[^A-Za-z ]%')
GO



