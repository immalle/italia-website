/****** Object:  Table [dbo].[tblAccounts]    Script Date: 03/20/2013 13:59:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccounts]') AND type in (N'U'))
DROP TABLE [dbo].[tblAccounts]
GO
/****** Object:  Table [dbo].[tblFotos]    Script Date: 03/20/2013 13:59:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFotos]') AND type in (N'U'))
DROP TABLE [dbo].[tblFotos]
GO
/****** Object:  Table [dbo].[tblGastenboek]    Script Date: 03/20/2013 13:59:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGastenboek]') AND type in (N'U'))
DROP TABLE [dbo].[tblGastenboek]
GO
/****** Object:  Table [dbo].[tblNieuws]    Script Date: 03/20/2013 13:59:00 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNieuws]') AND type in (N'U'))
DROP TABLE [dbo].[tblNieuws]
GO
/****** Object:  Table [dbo].[tblNieuws]    Script Date: 03/20/2013 13:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNieuws]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNieuws](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [nvarchar](30) COLLATE Latin1_General_CI_AS NULL,
	[Nieuws] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Datum] [datetime] NOT NULL,
 CONSTRAINT [PK_tblNieuws_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblNieuws] ON
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (15, NULL, NULL, CAST(0x0000000000000000 AS DateTime))
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (16, N'testje', N'dit is een test', CAST(0x0000A17900000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblNieuws] OFF
/****** Object:  Table [dbo].[tblGastenboek]    Script Date: 03/20/2013 13:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGastenboek]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGastenboek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [varchar](30) COLLATE Latin1_General_CI_AS NULL,
	[Bericht] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Datum] [datetime] NULL,
 CONSTRAINT [PK_tblGastenboek] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblGastenboek] ON
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (43, N'dinges', N'test', CAST(0x0000A1D200000000 AS DateTime))
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (44, N'Test', N'Dinges', CAST(0x0000A1D200000000 AS DateTime))
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (46, N'testje', N'blablabla', CAST(0x0000A18700000000 AS DateTime))
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (47, N'test', N'testt', CAST(0x0000A18700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblGastenboek] OFF
/****** Object:  Table [dbo].[tblFotos]    Script Date: 03/20/2013 13:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFotos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFotos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Dag] [datetime] NULL,
 CONSTRAINT [PK_tblFotos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblFotos] ON
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (32, N'2013-3-20-9-48-17.png', CAST(0x0000A17900000000 AS DateTime))
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (33, N'2013-3-20-9-48-25.jpg', CAST(0x0000A17400000000 AS DateTime))
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (34, N'2013-3-20-9-48-35.jpg', CAST(0x0000A17400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[tblFotos] OFF
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 03/20/2013 13:59:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccounts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAccounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Gebruikersnaam] [varchar](20) COLLATE Latin1_General_CI_AS NULL,
	[Wachtwoord] [varchar](20) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_tblAccounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tblAccounts] ON
INSERT [dbo].[tblAccounts] ([ID], [Gebruikersnaam], [Wachtwoord]) VALUES (1, N'Admin', N'Assisi29maart')
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
