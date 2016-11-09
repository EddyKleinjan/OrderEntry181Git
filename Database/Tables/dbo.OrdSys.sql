CREATE TABLE [dbo].[OrdSys]
(
[Order_Number] [int] NOT NULL CONSTRAINT [DF__OrdSys__Order_Nu__2A4B4B5E] DEFAULT ((0)),
[Cust_Number] [int] NOT NULL CONSTRAINT [DF__OrdSys__Cust_Num__2B3F6F97] DEFAULT ((0)),
[Vendor_Number] [int] NOT NULL CONSTRAINT [DF__OrdSys__Vendor_N__2C3393D0] DEFAULT ((0))
) ON [PRIMARY]
GO
