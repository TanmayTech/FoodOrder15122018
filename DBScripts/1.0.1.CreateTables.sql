USE [myDataBase]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16-12-2018 00:16:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[Price] [money] NOT NULL,
	[Discount] [int] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 16-12-2018 00:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 16-12-2018 00:16:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserGUID] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [bigint] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ModifiedBy] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Amul Taaza X 500ml', N'Amul Taaza X 500ml description', 40.0000, 0, 1, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Amul Taaza X 1L', N'Amul Taaza X 1L description', 78.0000, 2, 1, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Katraj X 500ml', N'Katraj X 500ml description', 35.0000, 0, 1, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (6, N'Yogurt', N'Yogurt description', 20.0000, 0, 4, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (7, N'Cheese', N'Cheese description', 50.0000, 0, 4, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (8, N'Butter ', N'Butter description', 75.0000, 5, 4, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (11, N'White Bread 400 gm ', N'White Bread 400 gm X 2 description', 25.0000, 0, 5, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (12, N'White Eggs 1 dozen', N'White Eggs 1 dozen description', 50.0000, 5, 5, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductDescription], [Price], [Discount], [ProductCategoryID], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (13, N'Blueberry Cupcake', N'Blueberry Cupcake', 50.0000, 0, 5, 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [CategoryDescription], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Milk', N'All Milk Product listed under this category', 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [CategoryDescription], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (4, N'Dairy', N'All Dairy Products listed here', 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[ProductCategory] ([ProductCategoryID], [CategoryName], [CategoryDescription], [IsActive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5, N'Bakery', N'All Bakery Products listed here', 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1, CAST(N'2018-12-14T00:00:00.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
