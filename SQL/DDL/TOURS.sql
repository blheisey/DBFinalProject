SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bh176331].[TOURS](
    [Buyer_ID] DECIMAL(5, 0) NOT NULL,
    [House_ID] DECIMAL(5, 0) NOT NULL,
    [Date] DATE NOT NULL,
    [Time] TIME NOT NULL,
    FOREIGN KEY (Buyer_ID) REFERENCES BUYER(Buyer_ID) ON DELETE CASCADE,
    FOREIGN KEY (House_ID) REFERENCES HOUSE(House_ID) ON DELETE CASCADE
)

ALTER TABLE [TOURS] ADD  CONSTRAINT [PK_TOURS] PRIMARY KEY CLUSTERED 
(
	[Buyer_ID] ASC,
    [House_ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO