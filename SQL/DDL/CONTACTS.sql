SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bh176331].[CONTACTS](
    [Buyer_ID] DECIMAL(5, 0) NOT NULL,
    [Agent_ID] DECIMAL(5, 0) NOT NULL,
    [Agent_name] [varchar](40) NOT NULL,
    [Phone_number] [varchar](15) NOT NULL,
    [Email] [varchar](320) NOT NULL,
    [Message] [varchar](255) NULL,
    FOREIGN KEY (Buyer_ID) REFERENCES BUYER(Buyer_ID) ON DELETE CASCADE,
    FOREIGN KEY (Agent_ID, Agent_name) REFERENCES AGENT(Agent_ID, Name) ON DELETE CASCADE
)

ALTER TABLE [CONTACTS] ADD  CONSTRAINT [PK_CONTACTS] PRIMARY KEY CLUSTERED 
(
	[Buyer_ID] ASC,
    [Agent_ID] ASC,
    [Agent_name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO 

SET ANSI_PADDING ON
GO
ALTER TABLE [CONTACTS] WITH CHECK ADD CONSTRAINT [CK_CONTACTS_PHONE_NUMBER_FORMAT] CHECK (Phone_number NOT LIKE '%[^0-9+ -]%')
GO
ALTER TABLE [CONTACTS] CHECK CONSTRAINT [CK_CONTACTS_PHONE_NUMBER_FORMAT]
GO

SET ANSI_PADDING ON
GO
ALTER TABLE [CONTACTS] WITH CHECK ADD CONSTRAINT [CK_CONTACTS_EMAIL_FORMAT] CHECK ( 
      Email NOT LIKE '% %' AND 
       Email NOT LIKE '%.%@%' AND 
       Email NOT LIKE '%..%' AND 
       Email NOT LIKE '%@%-%.' AND 
       Email NOT LIKE '%.' AND 
       Email NOT LIKE '@%' AND 
       Email NOT LIKE '%@')

GO
ALTER TABLE [CONTACTS] CHECK CONSTRAINT [CK_CONTACTS_EMAIL_FORMAT]
GO



