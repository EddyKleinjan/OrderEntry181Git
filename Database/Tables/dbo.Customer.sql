CREATE TABLE [dbo].[Customer]
(
[RECNUM] [int] NOT NULL IDENTITY(1, 1),
[Customer_Number] [int] NOT NULL CONSTRAINT [DF__Customer__Custom__412EB0B6] DEFAULT ((0)),
[Name] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Name__4222D4EF] DEFAULT (''),
[Address] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Addres__4316F928] DEFAULT (''),
[City] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__City__440B1D61] DEFAULT (''),
[State] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__State__44FF419A] DEFAULT (''),
[Zip] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Zip__45F365D3] DEFAULT (''),
[Phone_Number] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Phone___46E78A0C] DEFAULT (''),
[Fax_Number] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Fax_Nu__47DBAE45] DEFAULT (''),
[EMail_Address] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__EMail___48CFD27E] DEFAULT (''),
[Credit_Limit] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Credit__49C3F6B7] DEFAULT ((0)),
[Purchases] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Purcha__4AB81AF0] DEFAULT ((0)),
[Balance] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__Customer__Balanc__4BAC3F29] DEFAULT ((0)),
[Comments] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Commen__4CA06362] DEFAULT (''),
[Status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Customer__Status__4D94879B] DEFAULT ('')
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
