SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bh176331].[PROPERTY](
    [Property_ID] [char](5) NOT NULL,
    [Distance_to_city_limits] DECIMAL(4, 1) NOT NULL,
    [House_number] [varchar](10) NOT NULL,
    [Street_name] [varchar](50) NOT NULL,
    [State_name] [varchar](14) NOT NULL,
    [City] [varchar](50) NOT NULL,
    [Zip_code] [varchar](10) NOT NULL,
    [Price] DECIMAL(15, 2) NOT NULL,
    [Date] DATE NOT NULL,
    [Status] [varchar](10) NOT NULL,
)
SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY] ADD  CONSTRAINT [PK_PROPERTY_ID] PRIMARY KEY CLUSTERED 
(
	[Property_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_PROPERTY_ID_FORMAT] CHECK (Property_ID LIKE '[0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PROPERTY_ID_FORMAT]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY] WITH CHECK ADD CONSTRAINT [CK_PROPERTY_ID_NN] CHECK (Property_ID >= 0)
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PROPERTY_ID_NN]
GO

ALTER TABLE [PROPERTY] WITH CHECK ADD CONSTRAINT [CK_PROPERTY_DISTANCE_NN] CHECK (Distance_to_city_limits >= 0)
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PROPERTY_DISTANCE_NN]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_PROPERTY_HOUSE_NUMBER_FORMAT] CHECK (House_number LIKE '[0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PROPERTY_HOUSE_NUMBER_FORMAT]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY] WITH CHECK ADD CONSTRAINT [CK_PROPERTY_HOUSE_NUMBER_NN] CHECK (House_number >= 0)
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PROPERTY_HOUSE_NUMBER_NN]
GO

SET ANSI_PADDING ON
GO
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_STREET_NAME_FORMAT] CHECK (Street_name NOT LIKE '%[^A-Za-z ]%')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_STREET_NAME_FORMAT]
GO

SET ANSI_PADDING ON
GO
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_STATE_NAME_FORMAT] CHECK (State_name NOT LIKE '%[^A-Za-z ]%')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_STATE_NAME_FORMAT]
GO

SET ANSI_PADDING ON
GO
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_CITY_FORMAT] CHECK (City NOT LIKE '%[^A-Za-z ]%')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_CITY_FORMAT]
GO 

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_ZIP_CODE_FORMAT] CHECK (Zip_code LIKE '[0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_ZIP_CODE_FORMAT]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY]  WITH CHECK ADD  CONSTRAINT [CK_PRICE_FORMAT] CHECK (Price LIKE '[0-9][0-9][0-9][0-9][0-9]')
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PRICE_FORMAT]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY] WITH CHECK ADD CONSTRAINT [CK_PRICE_NN] CHECK (Price >= 0)
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_PRICE_NN]
GO

SET ANSI_PADDING ON
GO 
ALTER TABLE [PROPERTY] WITH CHECK ADD CONSTRAINT [CK_STATUS_VALUE] CHECK (Status IN ('Active', 'Pending', 'Sold'))
GO
ALTER TABLE [PROPERTY] CHECK CONSTRAINT [CK_STATUS_VALUE]
GO




