SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bh176331].[PROPERTY_UTILITIES](
    [Property_ID] DECIMAL(5, 0) NOT NULL,
    [Utility] VARCHAR(50) NOT NULL,
    FOREIGN KEY (Property_ID) REFERENCES PROPERTY(Property_ID) ON DELETE CASCADE
)

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY_UTILITIES] ADD  CONSTRAINT [PK_PROPERTY_UTILITIES] PRIMARY KEY CLUSTERED 
(
	[Property_ID] ASC,
    [Utility] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

SET ANSI_PADDING ON
GO
ALTER TABLE [PROPERTY_UTILITIES]  WITH CHECK ADD  CONSTRAINT [CK_UTILITY_NAME_FORMAT] CHECK (Utility NOT LIKE '%[^A-Za-z ]%')
GO
ALTER TABLE [PROPERTY_UTILITIES] CHECK CONSTRAINT [CK_UTILITY_NAME_FORMAT]
GO



