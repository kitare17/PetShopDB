USE [master]
GO
/****** Object:  Database [PetShopDB]    Script Date: 3/11/2023 5:04:59 PM ******/
CREATE DATABASE [PetShopDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PetShopDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PetShopDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PetShopDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PetShopDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PetShopDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PetShopDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PetShopDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PetShopDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PetShopDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PetShopDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PetShopDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PetShopDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PetShopDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PetShopDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PetShopDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PetShopDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PetShopDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PetShopDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PetShopDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PetShopDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PetShopDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PetShopDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PetShopDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PetShopDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PetShopDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PetShopDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PetShopDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PetShopDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PetShopDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PetShopDB] SET  MULTI_USER 
GO
ALTER DATABASE [PetShopDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PetShopDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PetShopDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PetShopDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PetShopDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PetShopDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PetShopDB] SET QUERY_STORE = OFF
GO
USE [PetShopDB]
GO
/****** Object:  Table [dbo].[tblDiscount]    Script Date: 3/11/2023 5:04:59 PM ******/
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
/****** Object:  Table [dbo].[tblFood]    Script Date: 3/11/2023 5:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFood](
	[FoodID] [varchar](10) NOT NULL,
	[FoodName] [nvarchar](100) NOT NULL,
	[FoodType] [varchar](20) NOT NULL,
	[FoodPrice] [decimal](10, 0) NOT NULL,
	[FoodAmount] [decimal](3, 0) NULL,
 CONSTRAINT [PK__tblFood__856DB3CB30DA8982] PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 3/11/2023 5:04:59 PM ******/
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
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 3/11/2023 5:04:59 PM ******/
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
/****** Object:  Table [dbo].[tblPet]    Script Date: 3/11/2023 5:04:59 PM ******/
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
/****** Object:  Table [dbo].[tblService]    Script Date: 3/11/2023 5:04:59 PM ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 3/11/2023 5:04:59 PM ******/
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
	[UserAdress] [nvarchar](100) NOT NULL,
	[UserRole] [varchar](5) NULL,
 CONSTRAINT [PK__tblUser__C9F2845712AC1108] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0001', N'Thức ăn chay cho chó Natural Core eco10 gói 1kg', N'dogFood', CAST(200000 AS Decimal(10, 0)), CAST(45 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0002', N'Thức ăn cho chó lớn Pedigree hương gà và rau củ túi 1.5kg', N'dogFood', CAST(1500000 AS Decimal(10, 0)), CAST(86 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0003', N'Nước khoáng Bowwow cung cấp đạm và canxi cho chó chai 500ml', N'dogFood', CAST(300000 AS Decimal(10, 0)), CAST(75 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0004', N'Thức ăn cho chó con Natural Core vị thịt cừu gói 1kg', N'dogFood', CAST(175000 AS Decimal(10, 0)), CAST(75 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0005', N'Thức ăn hạt mềm cho chó trưởng thành Zenith gói 3kg', N'dogFood', CAST(50000 AS Decimal(10, 0)), CAST(50 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0006', N'Thức ăn cho chó Natural Core Eco6 vị cá hồi gói 2.4kg', N'dogFood', CAST(67000 AS Decimal(10, 0)), CAST(33 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0007', N'Thức ăn cho chó Nutrience thịt gà, cá biển và rau củ quả túi 5kg', N'dogFood', CAST(30000 AS Decimal(10, 0)), CAST(75 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0008', N'Thức ăn vặt cho chó Pedigree vị gan nướng túi 80g', N'dogFood', CAST(210000 AS Decimal(10, 0)), CAST(68 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0009', N'Hộp 12 gói pate cho chó MARIA xương ống và gan bò 70g', N'dogFood', CAST(900000 AS Decimal(10, 0)), CAST(85 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0010', N'Thức ăn cho chó con Nutrience thịt gà và rau củ quả bao 2.27kg', N'dogFood', CAST(400000 AS Decimal(10, 0)), CAST(77 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0011', N'Thức ăn hạt mềm cho chó già Zenith gói 3kg', N'dogFood', CAST(8000000 AS Decimal(10, 0)), CAST(86 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0012', N'Thức ăn cho chó Natural Core thịt gà và cá hồi gói 2kg', N'dogFood', CAST(300000 AS Decimal(10, 0)), CAST(68 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0013', N'Thức ăn hạt mềm cho chó Origi-7 vị thịt bò gói 2kg', N'dogFood', CAST(700000 AS Decimal(10, 0)), CAST(38 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0014', N'Xúc xích cho chó Bowwow phô mai gói 14 cây x 17g', N'dogFood', CAST(500000 AS Decimal(10, 0)), CAST(88 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0015', N'Thức ăn hạt khô cho chó lớn FIB gói 400g', N'dogFood', CAST(530000 AS Decimal(10, 0)), CAST(82 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0016', N'Thức ăn hạt khô cho chó nhỏ FIB gói 400g', N'dogFood', CAST(530000 AS Decimal(10, 0)), CAST(82 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0017', N'Thức ăn vặt cho chó Pedigree vị thịt heo muối túi 60g', N'dogFood', CAST(150000 AS Decimal(10, 0)), CAST(78 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0018', N'Thức ăn cho mèo Nutrience cá biển và rau củ quả túi 2.27kg', N'catFood', CAST(124000 AS Decimal(10, 0)), CAST(78 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0019', N'Thức ăn cho mèo trưởng thành Me-O vị cá ngừ túi 1.2kg', N'catFood', CAST(250000 AS Decimal(10, 0)), CAST(78 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0020', N'6 gói sốt cho mèo Whiskas vị cá ngừ gói 85g', N'catFood', CAST(55000 AS Decimal(10, 0)), CAST(78 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0021', N'5 cây thức ăn hỗ hợp hoàn chỉnh cho mèo Cherman vị cá ngừ 12g', N'catFood', CAST(75000 AS Decimal(10, 0)), CAST(22 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0022', N'Thức ăn cho mèo Zenith gói 1.2kg', N'catFood', CAST(90000 AS Decimal(10, 0)), CAST(70 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0023', N'Thức ăn cho mèo Minino vị cá ngừ gói 1.3kg', N'catFood', CAST(150000 AS Decimal(10, 0)), CAST(28 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0024', N'Thức ăn cho mèo trưởng thành Me-O vị cá ngừ và gà xé túi 70g', N'catFood', CAST(120000 AS Decimal(10, 0)), CAST(48 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0025', N'Thức ăn cho mèo con Whiskas hương cá biển túi 1.1kg', N'catFood', CAST(120000 AS Decimal(10, 0)), CAST(34 AS Decimal(3, 0)))
INSERT [dbo].[tblFood] ([FoodID], [FoodName], [FoodType], [FoodPrice], [FoodAmount]) VALUES (N'F0026', N'Pate cho mèo Cherman vị cá ngừ và cá hồi gói 85g', N'catFood', CAST(152000 AS Decimal(10, 0)), CAST(28 AS Decimal(3, 0)))
GO
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0001', N'Alaska', N'Vàng Đen', N'dog', CAST(15000000 AS Decimal(10, 0)), CAST(22 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0002', N'Chó ngao Anh', N'Đen', N'dog', CAST(70000000 AS Decimal(10, 0)), CAST(7 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0003', N'Dogo Argentino', N'Trắng Đen', N'dog', CAST(10000000 AS Decimal(10, 0)), CAST(3 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0004', N'Chó săn Afghanistan', N'Nâu', N'dog', CAST(10000000 AS Decimal(10, 0)), CAST(1 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0005', N'Chó núi Bernese', N'Trắng', N'dog', CAST(16000000 AS Decimal(10, 0)), CAST(3 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0006', N'Bloodhound', N'Nâu Đen', N'dog', CAST(16000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0007', N'Beauceron', N'Nâu', N'dog', CAST(29000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0008', N'Doberman', N'Nâu', N'dog', CAST(12000000 AS Decimal(10, 0)), CAST(3 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0009', N'Goldens', N'Nâu Xám', N'dog', CAST(19000000 AS Decimal(10, 0)), CAST(18 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0010', N'Ailen Setter', N'Vàng Nâu', N'dog', CAST(4000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0011', N'Chó ngao Tây Ban Nha', N'Trắng', N'dog', CAST(23000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0012', N'Beagle', N'Vàng Trắng', N'dog', CAST(46000000 AS Decimal(10, 0)), CAST(11 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0013', N'Border Collies', N'Xám Trắng', N'dog', CAST(104000000 AS Decimal(10, 0)), CAST(15 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0014', N'Dalmatian', N'Trắng', N'dog', CAST(18000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0015', N'Welsh Corgi', N'Vàng Xám', N'dog', CAST(23000000 AS Decimal(10, 0)), CAST(20 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0016', N'Pug', N'Đen nâu', N'dog', CAST(11000000 AS Decimal(10, 0)), CAST(25 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0017', N'Poodle', N'Đen', N'dog', CAST(7000000 AS Decimal(10, 0)), CAST(30 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0018', N'Mèo Xiêm', N'Nâu', N'dog', CAST(1300000 AS Decimal(10, 0)), CAST(9 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0019', N'Mèo Anh  Lông Dài', N'Đen', N'dog', CAST(2000000 AS Decimal(10, 0)), CAST(24 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0020', N'Mèo Ba Tư', N'Nâu Trắng', N'dog', CAST(8000000 AS Decimal(10, 0)), CAST(4 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0021', N'Sphynx', N'Nâu Đen', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0022', N'Mèo Anh lông ngắn', N'Trắng', N'cat', CAST(5100000 AS Decimal(10, 0)), CAST(11 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0023', N'Mèo rừng Na Uy', N'Xám Trắng', N'cat', CAST(4800000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0024', N'Sphynx', N'Đen', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0025', N'Mèo Anh lông ngắn', N'Đen', N'cat', CAST(6000000 AS Decimal(10, 0)), CAST(11 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0026', N'Mèo rừng Na Uy', N'Đen', N'cat', CAST(4800000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0027', N'Sphynx', N'Trắng', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0028', N'Mèo Anh lông ngắn', N'Đen Xám', N'cat', CAST(5000000 AS Decimal(10, 0)), CAST(5 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0029', N'Mèo rừng Na Uy', N'Đen', N'cat', CAST(1800000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0030', N'Sphynx', N'Đen', N'cat', CAST(2600000 AS Decimal(10, 0)), CAST(4 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0031', N'Sphynx', N'Đen xám', N'cat', CAST(52000000 AS Decimal(10, 0)), CAST(3 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0032', N'Sphynx', N'Vàng', N'cat', CAST(2200000 AS Decimal(10, 0)), CAST(7 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0033', N'Sphynx', N'Nâu Xám', N'cat', CAST(12000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0034', N'Sphynx', N'Trắng', N'cat', CAST(62000000 AS Decimal(10, 0)), CAST(7 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0035', N'Sphynx', N'Vàng', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(6 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0036', N'Sphynx', N'Vàng Đen', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(8 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0037', N'Sphynx', N'Trắng', N'cat', CAST(21000000 AS Decimal(10, 0)), CAST(11 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0038', N'Sphynx', N'Nâu', N'cat', CAST(26000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0039', N'Sphynx', N'Vàng Đen', N'cat', CAST(22000000 AS Decimal(10, 0)), CAST(2 AS Decimal(3, 0)))
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetColor], [PetType], [PetPrice], [PetAmount]) VALUES (N'P0040', N'Sphynx', N'Trắng', N'cat', CAST(12000000 AS Decimal(10, 0)), CAST(3 AS Decimal(3, 0)))
GO
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0001', N'Massage', CAST(120000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0002', N'Tiêm Phòng', CAST(125000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0003', N'Cắt Móng', CAST(130000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0004', N'Nhuộm Lông', CAST(135000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0005', N'Tắm Rửa', CAST(140000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0006', N'Bôi dưỡng', CAST(145000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0007', N'Triệt sản', CAST(150000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0008', N'Phối Giống', CAST(155000 AS Decimal(10, 0)))
INSERT [dbo].[tblService] ([ServiceID], [ServiceName], [ServicePrice]) VALUES (N'S0009', N'Chữa bệnh ngoài da', CAST(160000 AS Decimal(10, 0)))
GO
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'antunglam985', N'23afwrawaw', N'Ân Tùng Lâm', 22, N'antunglam985@facebook.com', N'0976720458', N'Xã Bù Nho, Huyện Phú Riềng, Bình Phước', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'caphuonglien586', N'vfcvfbf211', N'Cà Phương Liên', 75, N'caphuonglien586@hotmail.com', N'0347309468', N'Xã Tân An, Huyện Chiêm Hóa, Tuyên Quang', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'cathanhthe22', N'mnsfvbhebxx', N'Ca Thanh Thế', 23, N'cathanhthe22@microsoft.com', N'0898052496', N'Xã Trung Thành Tây, Huyện Vũng Liêm, Vĩnh Long', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'haxuancung874', N'asfef3wr2', N'Hạ Xuân Cung', 20, N'haxuancung874@microsoft.com', N'037136024', N'Phường Bình Trưng Tây, Quận 2, Hồ Chí Minh (tphcm)', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'kimthuongkiet274', N'sas223sf', N'Kim Thường Kiệt', 32, N'kimthuongkiet274@yahoo.com', N'0589135027', N'Xã Sơn Hải, Huyện Kiên Lương, Kiên Giang', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'lieungochue776', N'adfaw222', N'Liêu Ngọc Huệ', 23, N'lieungochue776@google.com', N'0948567439', N'Xã Bắc Thủy, Huyện Chi Lăng, Lạng Sơn', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'phothehung990', N'bbccss998', N'Phó Thế Hùng', 36, N'phothehung990@naver.com', N'0904569138', N'Xã Hùng Đô, Huyện Tam Nông, Phú Thọ', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'tanthanhtoan706', N'mf223dfbef', N'Tấn Thanh Toàn', 43, N'tanthanhtoan706@facebook.com', N'0584015293', N'Xã Tân Phước Hưng, Huyện Phụng Hiệp, Hậu Giang', N'user')
INSERT [dbo].[tblUser] ([UserName], [UserPass], [UserFullName], [UserAge], [UserEmail], [UserPhone], [UserAdress], [UserRole]) VALUES (N'trumquang2002', N'kungkimp3', N'Nguyễn Minh Quang', 20, N'quanggaming2002@gmail.com', N'0762630442', N'03 Nguyễn Gia Thiều,Phường Phú Hậu,Thành phố Huế', N'admin')
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
USE [master]
GO
ALTER DATABASE [PetShopDB] SET  READ_WRITE 
GO
