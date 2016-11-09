CREATE TABLE [dbo].[OrderHea]
(
[RECNUM] [int] NOT NULL IDENTITY(1, 1),
[Order_Number] [int] NOT NULL CONSTRAINT [DF__OrderHea__Order___5629CD9C] DEFAULT ((0)),
[Customer_Number] [int] NOT NULL CONSTRAINT [DF__OrderHea__Custom__571DF1D5] DEFAULT ((0)),
[Order_Date] [datetime] NOT NULL CONSTRAINT [DF__OrderHea__Order___5812160E] DEFAULT ('1753-01-01'),
[Terms] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderHea__Terms__59063A47] DEFAULT (''),
[Ship_Via] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderHea__Ship_V__59FA5E80] DEFAULT (''),
[Ordered_By] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderHea__Ordere__5AEE82B9] DEFAULT (''),
[SalesPerson_ID] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderHea__SalesP__5BE2A6F2] DEFAULT (''),
[Order_Total] [numeric] (10, 2) NOT NULL CONSTRAINT [DF__OrderHea__Order___5CD6CB2B] DEFAULT ((0)),
[Last_Detail_Num] [smallint] NOT NULL CONSTRAINT [DF__OrderHea__Last_D__5DCAEF64] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderHea] ADD CONSTRAINT [OrderHea001_PK] PRIMARY KEY CLUSTERED  ([Order_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [OrderHea002] ON [dbo].[OrderHea] ([Customer_Number], [Order_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [OrderHea003] ON [dbo].[OrderHea] ([Order_Date], [Order_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [OrderHea000] ON [dbo].[OrderHea] ([RECNUM]) ON [PRIMARY]
GO
