CREATE TABLE [dbo].[Customer]
(
[RECNUM] [int] NOT NULL IDENTITY(1, 1),
[Customer_Number] [int] NOT NULL CONSTRAINT [DF__Customer__Custom__04E4BC85] DEFAULT ((0)),
[Name] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Name__05D8E0BE] DEFAULT (''),
[Address] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Addres__06CD04F7] DEFAULT (''),
[City] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__City__07C12930] DEFAULT (''),
[State] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__State__08B54D69] DEFAULT (''),
[Zip] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Zip__09A971A2] DEFAULT (''),
[Phone_Number] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Phone___0A9D95DB] DEFAULT (''),
[Fax_Number] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Fax_Nu__0B91BA14] DEFAULT (''),
[EMail_Address] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__EMail___0C85DE4D] DEFAULT (''),
[Credit_Limit] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Credit__0D7A0286] DEFAULT ((0)),
[Purchases] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Purcha__0E6E26BF] DEFAULT ((0)),
[Balance] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Balanc__0F624AF8] DEFAULT ((0)),
[Comments] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Commen__10566F31] DEFAULT (''),
[Status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Status__114A936A] DEFAULT (''),
[BSN] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__BSN__123EB7A3] DEFAULT ('')
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [Customer001_PK] PRIMARY KEY CLUSTERED  ([Customer_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Customer003] ON [dbo].[Customer] ([Balance], [Customer_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Customer002] ON [dbo].[Customer] ([Name], [Customer_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [Customer000] ON [dbo].[Customer] ([RECNUM]) ON [PRIMARY]
GO
