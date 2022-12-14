CREATE DATABASE [PRJ301]
GO
 
USE [PRJ301]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/11/2021 11:00:32 AM ******/

CREATE TABLE [dbo].[Account](
	[userID] [varchar](20) NOT NULL,
	[password] [int] NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[roleID] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 7/11/2021 11:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[bookId] [varchar](10) NOT NULL,
	[description] [nvarchar](250) NOT NULL,
	[price] [float] NULL,
	[bookName] [nvarchar](250) NOT NULL,
	[author] [nvarchar](250) NOT NULL,
	[yearOfProduction] [int] NULL,
	[quantity] [int] NULL,
	[bookImgURL] [varchar](50) NOT NULL,
	[categoryID] [nvarchar](10) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/11/2021 11:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [nvarchar](10) NOT NULL,
	[categoryName] [varchar](250) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 7/11/2021 11:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[paymentId] [int] IDENTITY(1,1) NOT NULL,
	[userID] [varchar](20) NOT NULL,
	[dateCreate] [date] NOT NULL,
	[totalPayment] [float] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[phoneNumber] [varchar](20) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Payment_1] PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentDetail]    Script Date: 7/11/2021 11:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentDetail](
	[paymentId] [int] NOT NULL,
	[bookId] [varchar](10) NOT NULL,
	[quantity] [int] NOT NULL,
	[subTotal] [float] NOT NULL,
 CONSTRAINT [PK_PaymentDetail] PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC,
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([userID], [password], [fullName], [roleID]) VALUES (N'a001', 123456, N'user01', 1)
GO
INSERT [dbo].[Account] ([userID], [password], [fullName], [roleID]) VALUES (N'a002', 123456, N'user01', 0)
GO
INSERT [dbo].[Account] ([userID], [password], [fullName], [roleID]) VALUES (N'dung123', 123456, N'user01', 0)
GO
INSERT [dbo].[Account] ([userID], [password], [fullName], [roleID]) VALUES (N'phuong456', 123456, N'user01', 0)
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B001', N'?????c nh??n t??m (???????c l??ng ng?????i), t??n ti???ng Anh l?? How to Win Friends and Influence People l?? m???t quy???n s??ch nh???m t??? gi??p b???n th??n (self-help) b??n ch???y nh???t t??? tr?????c ?????n nay.', 350, N'?????c Nh??n T??m', N'Dale Carnegie', 1980, 300, N'01.png', N'C003')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B002', N'Great', 216, N'Tr??n ???????ng B??ng', N'Tony', 2009, 46, N'02.png', N'C003')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B003', N'Nice', 120, N'Tu???i Tr??? ????ng Gi?? Bao Nhi??u', N'Rosie Nguy???n', 2018, 45, N'03.png', N'C003')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B004', N'Good', 78, N'M???t Bi???c', N'Nguy???n Nh???t ??nh', 2011, 50, N'04.png', N'C001')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B005', N'Great', 217, N'T??i Th???y Hoa V??ng Tr??n C??? Xanh', N'Nguy???n Nh???t ??nh', 2015, 60, N'05.png', N'C001')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B006', N'Nice', 147, N'T??i L?? Beto', N'Nguy???n Nh???t ??nh', 2018, 80, N'06.png', N'C001')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B007', N'r??nh b??y m???t c??ch d??? hi???u c??c kh??i ni???m n???n t???ng v??? n???u n?????ng cho ng?????i m???i b???t ?????u.
Cung c???p nhi???u b?? quy???t h???u ??ch cho c??c b???n tr??? s???ng t??? l???p, mong mu???n t??? tay n???u b???a ??n ngon cho nh???ng ng?????i th??n y??u.', 215, N'N???i Ni??u Xoong Ch???o', N'Lang Vi', 2012, 48, N'07.png', N'C002')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B008', N'Great', 390, N'Tr??i Tim C???a Chef', N'Hungazit Nguy???n', 2019, 60, N'08.png', N'C002')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B009', N'Nice', 230, N'100 M??n ??n Ng??y Th?????ng', N'Nguy???n Thi Ph????ng', 2015, 60, N'09.png', N'C002')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B010', N'new book', 50, N'nh?? gi??? kim', N'Paulo Coelho', 1988, 100, N'test.png', N'C001')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B011', N'????nh th???c con ng?????i phi th?????ng trong b???n??? l?? cu???n s??ch gi??p ng?????i ?????c kh??m ph?? gi?? tr??? ti???m ???n c???a b???n th??n ????? t???o n??n nh???ng k???t qu??? ch??nh m??nh kh??ng ng??? ?????n.', 5.059999942779541, N'????nh Th???c Con Ng?????i Phi Th?????ng Trong B???n', N'Anthony Robbins', 2020, 100, N'KNS_danhthuc.jpg', N'C003')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B012', N'T??c ph???m N??? Sinh c???a nh?? v??n Nguy???n Nh???t ??nh l?? cu???n truy???n d??i d??nh cho tu???i m???i l???n. C??u chuy???n k??? v??? nh???ng c?? g??i h???c tr?? ngh???ch ng???m nh??ng r???t gi??u t??nh c???m.', 60, N'N??? Sinh', N'Nguy???n Nh???t ??nh', 2018, 100, N'TT-nusinh.jpg', N'C001')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B013', N'C??n b???ng ph????ng tr??nh c???a cu???c ?????i kh??ng d???, cu???n s??ch n??y kh??ng ch??? l?? l?? thuy???t c??n cho b???n nh???ng k?? n??ng, ph?????ng ph??p t???n t??nh nh???t ????? gi??p b???n l??m ch??? c???m x??c c???a m??nh.', 30, N'C??n B???ng C???m X??c, C??? L??c B??o Gi??ng', N'Richard Nicholls', 2020, 100, N'KNS-canbang.jpg', N'C003')
GO
INSERT [dbo].[Book] ([bookId], [description], [price], [bookName], [author], [yearOfProduction], [quantity], [bookImgURL], [categoryID]) VALUES (N'B014', N'good', 32, N'N??i N??o ????ng ???m', N'C??? T??y T?????c', 2014, 100, N'TT-dongam.jpg', N'C001')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'C001', N'Tieu Thuyet')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'C002', N'Sach Nau an')
GO
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (N'C003', N'Sach Ky Nang Song')
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (1, N'a002', CAST(N'2021-07-04' AS Date), 360, N'123/45 q12 tphcm', N'0123456789', 1)
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (2, N'a002', CAST(N'2021-07-04' AS Date), 360, N'123/45 q12 tphcm', N'0123456789', 0)
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (3, N'a002', CAST(N'2021-07-04' AS Date), 304, N'4859 q9 tphcm', N'0100000012', 0)
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (4, N'a002', CAST(N'2021-07-04' AS Date), 657, N'q1 tphcm', N'0123456123', 0)
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (5, N'phuong456', CAST(N'2021-07-05' AS Date), 60, N'q1 tphcm', N'0123456123', 0)
GO
INSERT [dbo].[Payment] ([paymentId], [userID], [dateCreate], [totalPayment], [address], [phoneNumber], [status]) VALUES (6, N'phuong456', CAST(N'2021-07-07' AS Date), 433, N'4859 q9 tphcm', N'0123456123', 0)
GO
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (1, N'B001', 1, 350)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (2, N'B001', 1, 350)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (3, N'B002', 1, 216)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (3, N'B004', 1, 78)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (4, N'B005', 1, 217)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (4, N'B007', 2, 430)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (5, N'B010', 1, 50)
GO
INSERT [dbo].[PaymentDetail] ([paymentId], [bookId], [quantity], [subTotal]) VALUES (6, N'B002', 2, 432)
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Account] FOREIGN KEY([userID])
REFERENCES [dbo].[Account] ([userID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Account]
GO
ALTER TABLE [dbo].[PaymentDetail]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetail_Book] FOREIGN KEY([bookId])
REFERENCES [dbo].[Book] ([bookId])
GO
ALTER TABLE [dbo].[PaymentDetail] CHECK CONSTRAINT [FK_PaymentDetail_Book]
GO
ALTER TABLE [dbo].[PaymentDetail]  WITH CHECK ADD  CONSTRAINT [FK_PaymentDetail_Payment] FOREIGN KEY([paymentId])
REFERENCES [dbo].[Payment] ([paymentId])
GO
ALTER TABLE [dbo].[PaymentDetail] CHECK CONSTRAINT [FK_PaymentDetail_Payment]
GO
USE [master]
GO
ALTER DATABASE [PRJ301] SET  READ_WRITE 
GO
