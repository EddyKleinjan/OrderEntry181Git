CREATE TABLE [dbo].[CodeType]
(
[RECNUM] [int] NOT NULL IDENTITY(1, 1),
[Type] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__CodeType__Type__6A30C649] DEFAULT (''),
[Description] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__CodeType__Descri__6B24EA82] DEFAULT (''),
[Comment] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__CodeType__Commen__6C190EBB] DEFAULT ('')
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[CodeType] ADD CONSTRAINT [CodeType001_PK] PRIMARY KEY CLUSTERED  ([Type]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [CodeType000] ON [dbo].[CodeType] ([RECNUM]) ON [PRIMARY]
GO
