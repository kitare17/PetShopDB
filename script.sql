USE [PetShopDB]
GO
/****** Object:  Table [dbo].[tblDiscount]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscount](
	[DiscountID] [varchar](10) NOT NULL,
	[DiscountName] [nvarchar](50) NULL,
	[DiscountPercent] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFood](
	[FoodID] [varchar](10) NOT NULL,
	[FoodName] [nvarchar](50) NOT NULL,
	[FoodType] [nvarchar](50) NOT NULL,
	[FoodPrice] [decimal](10, 0) NOT NULL,
	[FoodAmount] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OrderID] [varchar](10) NOT NULL,
	[OrDate] [date] NULL,
	[DiscountID] [varchar](10) NULL,
	[UserName] [varchar](50) NULL,
	[OrderStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[OrderID] [varchar](10) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[BuyAmount] [decimal](3, 0) NULL,
 CONSTRAINT [pk_product] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPet]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPet](
	[PetID] [varchar](10) NOT NULL,
	[PetName] [nvarchar](50) NOT NULL,
	[PetColor] [nvarchar](50) NULL,
	[PetType] [nvarchar](50) NULL,
	[PetPrice] [decimal](10, 0) NOT NULL,
	[PetAmount] [decimal](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[ServiceID] [varchar](10) NOT NULL,
	[ServiceName] [nvarchar](50) NOT NULL,
	[ServicePrice] [decimal](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 04/03/2023 10:14:12 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserName] [varchar](50) NOT NULL,
	[UserPass] [varchar](50) NOT NULL,
	[UserFullName] [nvarchar](50) NOT NULL,
	[UserAge] [int] NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserPhone] [varchar](10) NOT NULL,
	[UserAdress] [nvarchar](50) NOT NULL,
	[UserRole] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblOrder] ADD  DEFAULT ((0)) FOR [OrderStatus]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [fk_customer] FOREIGN KEY([UserName])
REFERENCES [dbo].[tblUser] ([UserName])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [fk_customer]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [fk_pro] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[tblDiscount] ([DiscountID])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [fk_pro]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_food] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblFood] ([FoodID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [fk_food]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [fk_order]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_pet] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblPet] ([PetID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [fk_pet]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [fk_service] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [fk_service]
GO
