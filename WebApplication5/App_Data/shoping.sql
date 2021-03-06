USE [master]
GO
/****** Object:  Database [Shoping]    Script Date: 1/28/2018 8:48:07 PM ******/
CREATE DATABASE [Shoping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shoping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Shoping.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Shoping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Shoping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Shoping] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shoping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shoping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shoping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shoping] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shoping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shoping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shoping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shoping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shoping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shoping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shoping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shoping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shoping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shoping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shoping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shoping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shoping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shoping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shoping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shoping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shoping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shoping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shoping] SET  MULTI_USER 
GO
ALTER DATABASE [Shoping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shoping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shoping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shoping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Shoping] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Shoping]
GO
/****** Object:  Table [dbo].[AdminMst]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMst](
	[a_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [admin_pk] PRIMARY KEY CLUSTERED 
(
	[a_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[contact]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contact](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [numeric](18, 0) NULL,
	[subject] [nvarchar](50) NULL,
	[message] [nvarchar](50) NULL,
 CONSTRAINT [PK_contact] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_Mst]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Mst](
	[o_id] [int] IDENTITY(1,1) NOT NULL,
	[u_id] [numeric](18, 0) NULL,
	[p_id] [numeric](18, 0) NULL,
	[qty] [numeric](18, 0) NULL,
	[total] [numeric](18, 0) NULL,
	[isprocessed] [bit] NOT NULL,
	[o_date] [date] NULL,
	[contact] [numeric](18, 0) NULL,
	[place] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order_Mst] PRIMARY KEY CLUSTERED 
(
	[o_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[p_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[p_name] [varchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[qty] [numeric](18, 0) NULL,
	[price] [numeric](18, 0) NULL,
	[discount] [numeric](18, 0) NULL,
	[isdiscount] [bit] NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
	[isnew] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[p_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMst]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMst](
	[u_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[dob] [date] NULL,
	[isactive] [bit] NULL,
	[isdelete] [bit] NULL,
	[conatcat] [numeric](18, 0) NULL,
 CONSTRAINT [PK_UserMst] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Order_Mst]  WITH CHECK ADD  CONSTRAINT [p_id_foreingkey] FOREIGN KEY([p_id])
REFERENCES [dbo].[Product] ([p_id])
GO
ALTER TABLE [dbo].[Order_Mst] CHECK CONSTRAINT [p_id_foreingkey]
GO
ALTER TABLE [dbo].[Order_Mst]  WITH CHECK ADD  CONSTRAINT [u_id_foreingkey] FOREIGN KEY([u_id])
REFERENCES [dbo].[UserMst] ([u_id])
GO
ALTER TABLE [dbo].[Order_Mst] CHECK CONSTRAINT [u_id_foreingkey]
GO
/****** Object:  StoredProcedure [dbo].[allproduct]    Script Date: 1/28/2018 8:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[allproduct]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select * from Product;
END

GO
/****** Object:  StoredProcedure [dbo].[contact_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[contact_sp]		

AS
BEGIN
select * from contact;
END

GO
/****** Object:  StoredProcedure [dbo].[discount_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[discount_sp] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	
	SET NOCOUNT ON;

  select * from Product where isdiscount=1;

END
GO
/****** Object:  StoredProcedure [dbo].[history_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[history_sp]

@u_id numeric
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  /*  select o.isprocessed,o.o_date,p.p_name,p.price,p.discount,o.total,o.qty,u.username from Product p inner join Order_Mst o on p.p_id=o.p_id inner join UserMst u on o.u_id=o.u_id where u.u_id=@u_id;*/
    select o.isprocessed,o.o_date,p.p_name,p.price,p.discount,o.total,o.qty from Product p inner join  Order_Mst o on p.p_id=o.p_id inner join UserMst u on o.u_id=u.u_id where u.u_id=@u_id;

END

GO
/****** Object:  StoredProcedure [dbo].[insert_contact]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_contact]
@name nvarchar(50),
@email nvarchar(50),
@phn numeric(10),
@sub nvarchar(50),
@meg  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into contact values(@name,@email,@phn,@sub,@meg);

END

GO
/****** Object:  StoredProcedure [dbo].[insert_product]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_product]
@p_nm nvarchar(20),
@img nvarchar(20),
@qt numeric,
@prc numeric,
@disc numeric,
@isdis bit,
@isactv bit,
@isdelt bit,
@isnew bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    insert into Product values(@p_nm,@img,@qt,@prc,@disc,@isdis,@isactv,@isdelt,@isnew);

END

GO
/****** Object:  StoredProcedure [dbo].[insertProduct_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertProduct_sp]
	-- Add the parameters for the stored procedure here

	@u_id numeric,
	@p_id numeric,
	@qty numeric,
	@total numeric,
	@contact numeric,
	@plce nvarchar
AS
BEGIN
	
	SET NOCOUNT ON;

insert into Order_Mst values(@u_id,@p_id,@qty,@total,0,CONVERT(date,GETDATE()),@contact,@plce);


END

GO
/****** Object:  StoredProcedure [dbo].[itemselected_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemselected_sp]
	-- Add the parameters for the stored procedure here
	@pr_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select * from product where p_id=@pr_id;
   
END

GO
/****** Object:  StoredProcedure [dbo].[manage_order_]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[manage_order_]
@oid numeric
AS
BEGIN
  select o.o_id,u.u_id,p.p_id,u.username,p.p_name,o.qty,p.price,o.total,o.o_date,o.isprocessed,o.contact,o.place from Product p inner join Order_Mst o on o.p_id=p.p_id inner join UserMst u on o.o_id=@oid;
END

GO
/****** Object:  StoredProcedure [dbo].[newproduct_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[newproduct_sp] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Product where isnew=1;
END

GO
/****** Object:  StoredProcedure [dbo].[order_insert]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[order_insert] 
	
	@u_id numeric,
	@p_id numeric,
	@qty numeric,
	@total numeric,
	@contact numeric,
	@plce nvarchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;

insert into Order_Mst values(@u_id,@p_id,@qty,@total,0,CONVERT(date,GETDATE()),@contact,@plce);


END

GO
/****** Object:  StoredProcedure [dbo].[Register_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Register_sp]
@uname nvarchar(20),
@email nvarchar(20),
@pass nvarchar(20),
@add nvarchar(20),
@db date,
@cont numeric

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	

	SET NOCOUNT ON;

   insert into UserMst(username,email,password,address,dob,isactive,isdelete,conatcat) values(@uname,@email,@pass,@add,@db,1,null,@cont);

END

GO
/****** Object:  StoredProcedure [dbo].[show_order_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[show_order_sp]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select o.o_id,u.u_id,p.p_id,u.username,p.p_name,o.qty,p.price,o.total,o.o_date,o.isprocessed,o.contact,o.place from Product p inner join Order_Mst o on o.p_id=p.p_id inner join UserMst u on o.u_id=u.u_id;
END

GO
/****** Object:  StoredProcedure [dbo].[update_product]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_product]
@p_id numeric,
@p_nm nvarchar(20),
@img nvarchar(20),
@qt numeric,
@prc numeric,
@disc numeric,
@isdis bit,
@isactv bit,
@isdelt bit,
@isnew bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Product set p_name=@p_nm,image=@img,qty=@qt,price=@prc,discount=@disc,isdiscount=@disc,isactive=@isactv,isdelete=@isdelt,isnew=@isnew where p_id=@p_id; 
END

GO
/****** Object:  StoredProcedure [dbo].[updateorder_sp]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateorder_sp]
@oid numeric,
@process bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 
	update Order_Mst set isprocessed=@process where o_id=@oid;

    END

GO
/****** Object:  StoredProcedure [dbo].[updateQt]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateQt]
 @qty numeric,
@pid numeric
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Product set qty=@qty where p_id=@pid;
END

GO
/****** Object:  StoredProcedure [dbo].[userlist]    Script Date: 1/28/2018 8:48:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[userlist] 
	-- Add the parameters for the stored procedure here
	@emailid  nvarchar,
	@pass nvarchar


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select username from UserMst where email=@emailid and password=@pass;

END

GO
USE [master]
GO
ALTER DATABASE [Shoping] SET  READ_WRITE 
GO
