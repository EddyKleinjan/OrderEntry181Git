CREATE TABLE [dbo].[OrderDtl]
(
[RECNUM] [int] NOT NULL IDENTITY(1, 1),
[Order_Number] [int] NOT NULL CONSTRAINT [DF__OrderDtl__Order___619B8048] DEFAULT ((0)),
[Detail_Number] [smallint] NOT NULL CONSTRAINT [DF__OrderDtl__Detail__628FA481] DEFAULT ((0)),
[Item_ID] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderDtl__Item_I__6383C8BA] DEFAULT (''),
[Qty_Ordered] [int] NOT NULL CONSTRAINT [DF__OrderDtl__Qty_Or__6477ECF3] DEFAULT ((0)),
[Price] [numeric] (8, 2) NOT NULL CONSTRAINT [DF__OrderDtl__Price__656C112C] DEFAULT ((0)),
[Extended_Price] [numeric] (10, 2) NOT NULL CONSTRAINT [DF__OrderDtl__Extend__66603565] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDtl] ADD CONSTRAINT [OrderDtl001_PK] PRIMARY KEY CLUSTERED  ([Order_Number], [Detail_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [OrderDtl000] ON [dbo].[OrderDtl] ([RECNUM]) ON [PRIMARY]
GO
