USE [master]
GO
/****** Object:  Database [LibraryAutomation]    Script Date: 2.06.2022 21:33:41 ******/
CREATE DATABASE [LibraryAutomation]
GO
ALTER DATABASE [LibraryAutomation] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LibraryAutomation].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LibraryAutomation] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LibraryAutomation] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LibraryAutomation] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LibraryAutomation] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LibraryAutomation] SET ARITHABORT OFF 
GO
ALTER DATABASE [LibraryAutomation] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LibraryAutomation] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LibraryAutomation] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LibraryAutomation] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LibraryAutomation] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LibraryAutomation] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LibraryAutomation] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LibraryAutomation] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LibraryAutomation] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LibraryAutomation] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LibraryAutomation] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LibraryAutomation] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LibraryAutomation] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LibraryAutomation] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LibraryAutomation] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LibraryAutomation] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LibraryAutomation] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LibraryAutomation] SET RECOVERY FULL 
GO
ALTER DATABASE [LibraryAutomation] SET  MULTI_USER 
GO
ALTER DATABASE [LibraryAutomation] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LibraryAutomation] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LibraryAutomation] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LibraryAutomation] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LibraryAutomation] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LibraryAutomation] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LibraryAutomation', N'ON'
GO
ALTER DATABASE [LibraryAutomation] SET QUERY_STORE = OFF
GO
USE [LibraryAutomation]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 2.06.2022 21:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[KitapAdi] [nvarchar](50) NULL,
	[KitapYazari] [nvarchar](50) NULL,
	[KitapYayinevi] [nvarchar](50) NULL,
	[KitapSayfaSayisi] [nvarchar](50) NULL,
	[KitapKayitTarihi] [nvarchar](50) NULL,
	[KitapID] [smallint] IDENTITY(1,1) NOT NULL,
	[KitapEmanetDurum] [nvarchar](5) NULL,
	[KitapEmanetEdilenTc] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2.06.2022 21:33:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[tc] [nvarchar](50) NOT NULL,
	[isim] [nvarchar](30) NULL,
	[soyisim] [nvarchar](30) NULL,
	[email] [nvarchar](50) NULL,
	[yas] [nvarchar](3) NULL,
	[cinsiyet] [nvarchar](24) NULL,
	[telefon] [nvarchar](15) NULL,
	[adres] [nvarchar](50) NULL,
	[theid] [smallint] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([KitapAdi], [KitapYazari], [KitapYayinevi], [KitapSayfaSayisi], [KitapKayitTarihi], [KitapID], [KitapEmanetDurum], [KitapEmanetEdilenTc]) VALUES (N'Yıkıntılar', N'Zabel Yesayan', N'Billur', N'235', N'27.05.2022 03:26:02', 8, N'True', N'888888888888888')
INSERT [dbo].[Book] ([KitapAdi], [KitapYazari], [KitapYayinevi], [KitapSayfaSayisi], [KitapKayitTarihi], [KitapID], [KitapEmanetDurum], [KitapEmanetEdilenTc]) VALUES (N'Zamanın Kısa Tarihi', N'Stephen Hawking', N'İş Bankası', N'206', N'2.06.2022 21:00:53', 11, N'False', NULL)
INSERT [dbo].[Book] ([KitapAdi], [KitapYazari], [KitapYayinevi], [KitapSayfaSayisi], [KitapKayitTarihi], [KitapID], [KitapEmanetDurum], [KitapEmanetEdilenTc]) VALUES (N'Nutuk', N'Atatürk', N'İş Bankası', N'730', N'27.05.2022 04:44:21', 5, N'True', N'111111111111111')
INSERT [dbo].[Book] ([KitapAdi], [KitapYazari], [KitapYayinevi], [KitapSayfaSayisi], [KitapKayitTarihi], [KitapID], [KitapEmanetDurum], [KitapEmanetEdilenTc]) VALUES (N'Suç ve Ceza', N'Dostoyevski', N'Billur', N'709', N'27.05.2022 02:34:16', 6, N'False', N'')
INSERT [dbo].[Book] ([KitapAdi], [KitapYazari], [KitapYayinevi], [KitapSayfaSayisi], [KitapKayitTarihi], [KitapID], [KitapEmanetDurum], [KitapEmanetEdilenTc]) VALUES (N'Lenovo', N'Lenovo', N'Lenovo', N'1', N'2.06.2022 21:05:00', 12, N'False', N'')
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([tc], [isim], [soyisim], [email], [yas], [cinsiyet], [telefon], [adres], [theid]) VALUES (N'111111111111111', N'Özge', N'Yoldaş', N'ozgeyoldas@gmail.com', N'16', N'Kadın', N'511111111111111', N'İstanbul', 10)
INSERT [dbo].[Users] ([tc], [isim], [soyisim], [email], [yas], [cinsiyet], [telefon], [adres], [theid]) VALUES (N'777777777777777', N'Esma', N'Aktaş', N'esmaktas@gmail.com', N'16', N'Kadın', N'777777777777777', N'İstanbul', 11)
INSERT [dbo].[Users] ([tc], [isim], [soyisim], [email], [yas], [cinsiyet], [telefon], [adres], [theid]) VALUES (N'888888888888888', N'Ömer', N'Aslan', N'omeraslan@hotmail.com', N'16', N'Erkek', N'588888888888888', N'İstanbul', 12)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [LibraryAutomation] SET  READ_WRITE 
GO
