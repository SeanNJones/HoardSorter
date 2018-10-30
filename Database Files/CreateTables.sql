USE [HoardSorter]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/29/2018 1:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/29/2018 1:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/29/2018 1:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/29/2018 1:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/29/2018 1:28:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardCollection]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardCollection](
	[CardCollectionID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NOT NULL,
	[ToTrade] [bit] NULL,
	[Wanted] [bit] NULL,
	[OwnedQty] [int] NULL,
	[TradeQty] [int] NULL,
	[WantQty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardDetails]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardDetails](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[CardName] [varchar](50) NOT NULL,
	[ConvertedManaCost] [int] NULL,
	[Text] [varchar](500) NULL,
	[Power] [varchar](50) NULL,
	[Toughness] [varchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[collectorID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Collections] PRIMARY KEY CLUSTERED 
(
	[collectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Color] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_3] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorIdent]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorIdent](
	[ColorID] [int] NOT NULL,
	[CardID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deck]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deck](
	[DeckID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DeckTypeID] [int] NOT NULL,
 CONSTRAINT [PK_Deck] PRIMARY KEY CLUSTERED 
(
	[DeckID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckCards]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckCards](
	[DeckCardID] [int] IDENTITY(1,1) NOT NULL,
	[DeckID] [int] NOT NULL,
	[CardID] [int] NOT NULL,
	[CardQty] [int] NOT NULL,
 CONSTRAINT [PK_DeckCards] PRIMARY KEY CLUSTERED 
(
	[DeckCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeckType]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeckType](
	[DeckTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DeckType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DeckType] PRIMARY KEY CLUSTERED 
(
	[DeckTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rarity]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rarity](
	[RarityID] [int] IDENTITY(1,1) NOT NULL,
	[RarityName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rarity] PRIMARY KEY CLUSTERED 
(
	[RarityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RarityIdent]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RarityIdent](
	[RarityID] [int] NOT NULL,
	[CardID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardSet]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardSet](
	[SetID] [int] IDENTITY(1,1) NOT NULL,
	[SetName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Set] PRIMARY KEY CLUSTERED 
(
	[SetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SetIdent]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SetIdent](
	[CardID] [int] NOT NULL,
	[SetID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[TypeID] [int] IDENTITY(1,1) NOT NULL,
	[PrimaryType] [varchar](50) NOT NULL,
	[SecondaryType] [varchar](50) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeIdent]    Script Date: 10/29/2018 1:28:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeIdent](
	[TypeID] [int] NOT NULL,
	[CardID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CardCollection]  WITH CHECK ADD  CONSTRAINT [FK_CardCollection_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[CardCollection] CHECK CONSTRAINT [FK_CardCollection_CardDetails]
GO
ALTER TABLE [dbo].[CardDetails]  WITH CHECK ADD  CONSTRAINT [FK_CardDetails_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[CardDetails] CHECK CONSTRAINT [FK_CardDetails_CardDetails]
GO
ALTER TABLE [dbo].[ColorIdent]  WITH CHECK ADD  CONSTRAINT [FK_ColorIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[ColorIdent] CHECK CONSTRAINT [FK_ColorIdent_CardDetails]
GO
ALTER TABLE [dbo].[ColorIdent]  WITH CHECK ADD  CONSTRAINT [FK_ColorIdent_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[ColorIdent] CHECK CONSTRAINT [FK_ColorIdent_Color]
GO
ALTER TABLE [dbo].[Deck]  WITH CHECK ADD  CONSTRAINT [FK_Deck_DeckType] FOREIGN KEY([DeckTypeID])
REFERENCES [dbo].[DeckType] ([DeckTypeID])
GO
ALTER TABLE [dbo].[Deck] CHECK CONSTRAINT [FK_Deck_DeckType]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [CardID] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [CardID]
GO
ALTER TABLE [dbo].[DeckCards]  WITH CHECK ADD  CONSTRAINT [FK_DeckCards_Deck] FOREIGN KEY([DeckID])
REFERENCES [dbo].[Deck] ([DeckID])
GO
ALTER TABLE [dbo].[DeckCards] CHECK CONSTRAINT [FK_DeckCards_Deck]
GO
ALTER TABLE [dbo].[DeckType]  WITH CHECK ADD  CONSTRAINT [FK_DeckType_DeckType] FOREIGN KEY([DeckTypeID])
REFERENCES [dbo].[DeckType] ([DeckTypeID])
GO
ALTER TABLE [dbo].[DeckType] CHECK CONSTRAINT [FK_DeckType_DeckType]
GO
ALTER TABLE [dbo].[RarityIdent]  WITH CHECK ADD  CONSTRAINT [FK_RarityIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[RarityIdent] CHECK CONSTRAINT [FK_RarityIdent_CardDetails]
GO
ALTER TABLE [dbo].[RarityIdent]  WITH CHECK ADD  CONSTRAINT [FK_RarityIdent_Rarity] FOREIGN KEY([RarityID])
REFERENCES [dbo].[Rarity] ([RarityID])
GO
ALTER TABLE [dbo].[RarityIdent] CHECK CONSTRAINT [FK_RarityIdent_Rarity]
GO
ALTER TABLE [dbo].[SetIdent]  WITH CHECK ADD  CONSTRAINT [FK_SetIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[SetIdent] CHECK CONSTRAINT [FK_SetIdent_CardDetails]
GO
ALTER TABLE [dbo].[SetIdent]  WITH CHECK ADD  CONSTRAINT [FK_SetIdent_Set] FOREIGN KEY([SetID])
REFERENCES [dbo].[CardSet] ([SetID])
GO
ALTER TABLE [dbo].[SetIdent] CHECK CONSTRAINT [FK_SetIdent_Set]
GO
ALTER TABLE [dbo].[TypeIdent]  WITH CHECK ADD  CONSTRAINT [FK_TypeIdent_CardDetails] FOREIGN KEY([CardID])
REFERENCES [dbo].[CardDetails] ([CardID])
GO
ALTER TABLE [dbo].[TypeIdent] CHECK CONSTRAINT [FK_TypeIdent_CardDetails]
GO
ALTER TABLE [dbo].[TypeIdent]  WITH CHECK ADD  CONSTRAINT [FK_TypeIdent_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
GO
ALTER TABLE [dbo].[TypeIdent] CHECK CONSTRAINT [FK_TypeIdent_Type]
GO
