
create database onlinestore;
go
use onlinestore
go
--drop database onlinestore
--这是用户表
create table Users(
	UserID varchar(20)  primary key not null,
	UserName nvarchar(20) not null,
	UserPassword varchar(20) not null,
	UserGender  char(4) not null,
	UserPhone  varchar(20) not null,
	UserAddress  nvarchar(64) not null,
	UserAccount varchar(30) not null,
	UserBalance float not null check(UserBalance>=0)
)
go
insert into Users values
('A001','admin1','123456',N'男','13678899001','青岛大学','6228480246115178868',9800),
('A002','admin2','123456',N'女','17854238046','山东大学','6228480246115178855',1000),
('A003','admin3','123456',N'女','13678899001','青岛科技大学','6228480246115178856',1200),
('A004','admin4','123456',N'男','13678899001','中国海洋大学','6228480246115178875',3800),
('A005','admin5','123456',N'男','13678899001','清华大学','6228480246115178836',5000),
('U001','Amy1','123456',N'女','13697665261','山东省济南市','6220461151788687795',2800),
('U002','Amy2','123456',N'男','18722118041','山东省青岛市','6220461151788687788',8000),
('U003','Amy3','123456',N'女','13564788990','山东省烟台市','6220461151788687766',5700),
('U004','Amy4','123456',N'男','13564788990','山东省潍坊市','6220461151788687725',9800),
('U005','Amy5','123456',N'女','13564788990','山东省淄博市','6220461151788687745',6000),
('U006','Amy6','123456',N'男','13564788990','山东省泰安市','6220461151788687736',7800),
('U007','Amy7','123456',N'女','13564788990','山东省临沂市','6220461151788687765',9000),
('U008','Amy8','123456',N'男','13564788990','山东省菏泽市','6220461151788687759',6000),
('U009','Amy7','123456',N'女','13564788990','山东省济宁市','6220461151788687825',5500),
('U010','Amy7','123456',N'女','13564788990','山东省青岛市','6220461151788687896',6600),
('U011','Amy7','123456',N'女','13564788990','山东省烟台市','6220461151788687865',7700),
('U012','Amy7','123456',N'女','13564788990','山东省济南市','6220461151788687965',8800),
('U013','Amy7','123456',N'女','13564788990','浙江省杭州市','6220461151788687265',9900),
('U014','Amy7','123456',N'女','13564788990','浙江省义乌市','6220461151788687235',10100),
('U015','Amy7','123456',N'女','13564788990','浙江省台州市','6220461151788687255',9800),
('U016','Amy7','123456',N'女','13564788990','江苏省南京市','6220461151788687125',9880),
('U017','Amy7','123456',N'女','13564788990','河北省邯郸市','6220461151788687875',3300),
('U018','Amy7','123456',N'女','13564788990','河南省郑州市','6220461151788687115',5300),
('U019','Amy7','123456',N'女','13564788990','天津市','6220461151788687225',2800),
('U020','Amy7','123456',N'女','13564788990','北京市','6220461151788687985',1598),
('U021','Amy7','123456',N'女','13564788990','山东省临沂市','6220461151788687755',8620)
go
select * from Users
go
--这是产品类别表
create table ProductCategory (
	CategoryID int primary key not null,
	CategoryName varchar(50) not null
)
go
insert into ProductCategory values
(1,'奶粉纸尿裤'),
(2,'果奶'),
(3,'孕妇用品'),
(4,'婴儿洗护'),
(5,'母婴保健'),
(6,'童装'),
(7,'玩具'),
(8,'洗漱用品'),
(9,'日常用品'),
(10,'零食')
go
select * from ProductCategory
go
--创建产品表
create table Product(
	ProductID int primary key identity(1,1) not null,
	ProductName varchar(50) not null,
	ProductPrice float not null check(ProductPrice>0),
	ProductStore int not null,/*库存量*/
	ProductImagePath varchar(100) not null,/*图片路径*/
	CategoryID int not null foreign key references ProductCategory(CategoryID),
	ProductDetails varchar(500) not null,/*产品描述*/
	AddProductDate date not null
)
go
insert into Product values
('婴儿奶粉',209,400,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',1,'XXX','2017-6-13'),
('特质奶粉',109,600,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',1,N'XXXX','2017-6-14'),
('纸尿裤',99,1400,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',1,N'XXXX','2017-6-13'),
('宝贝湿巾','119','1230','images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',1,N'XXXX','2017-6-13'),
('果汁',56,223,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',2,N'XXXX','2017-6-13'),
('糖果',12,1400,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',2,N'XXXX','2017-5-13'),
('奶瓶',88,108,'images/1.jpg;images/2.jpg;images/3.jpg;images/4.jpg;images/5.jpg;images/6.jpg',2,N'XXXX','2017-6-13'),
('奶嘴',22,554,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',2,N'XXXX','2017-6-13'),
('孕妇装',425,42,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',3,'XXXX','2017-4-13'),
('月子用品',288,128,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',3,N'XXXX','2017-6-13'),
('喂奶器',66,99,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',3,N'XXXX','2017-6-13'),
('矫正器',99,245,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',3,N'XXXX','2017-6-13'),
('日用护理',50,400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',4,N'XXXX','2017-6-13'),
('退热药',63,532,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',4,N'XXXX','2017-6-13'),
('洗发沐浴',98,364,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',4,N'XXXX','2017-6-14'),
('爽身防嗮',119,65,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',4,N'XXXX','2016-9-10'),
('胶原蛋白',85,336,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',5,N'XXXX','2014-8-8'),
('钙+维生素D',198,122,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',5,N'XXXX','2014-8-8'),
('DNA',94,88,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',5,N'XXXX','2014-8-8'),
('钙铁锌',239,132,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',5,N'XXXX','2014-8-8'),
('连衣裙',209,50,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',6,N'XXXX','2014-8-8'),
('T恤',78,400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',6,N'XXXX','2014-8-8'),
('学步鞋',666,100,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',6,N'XXXX','2014-8-8'),
('运动鞋',380,555,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',6,N'XXXX','2014-8-8'),
('DIY手工',30,230,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',7,N'XXXX','2014-8-8'),
('绘画工具',88,500,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',7,N'XXXX','2014-8-8'),
('中文绘本',20,1400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',7,N'XXXX','2014-8-8'),
('有声读物',108,550,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',7,N'XXXX','2014-8-8'),
('防晒',333,556,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',8,N'XXXX','2014-8-8'),
('洁面',123,888,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',8,N'XXXX','2014-8-8'),
('卸妆',456,87,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',8,N'XXXX','2014-8-8'),
('底妆遮瑕',12,951,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',8,N'XXXX','2014-8-8'),
('奶瓶消毒',22,662,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',9,N'XXXX','2014-8-8'),
('果蔬清洁',365,1400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',9,N'XXXX','2014-8-8'),
('拖鞋',55,422,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',9,N'XXXX','2014-8-8'),
('枕头',330,400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',9,N'XXXX','2014-8-8'),
('蒸蛋糕',555,66,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',10,N'XXXX','2014-8-8'),
('脱水蛋糕',22,55,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',10,N'XXXX','2014-8-8'),
('瑞士卷',33,40,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',10,N'XXXX','2014-8-8'),
('软面包',35,43,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',10,N'XXXX','2014-8-8')
go
select * from  Product
go
--创建促销策略表
create table SalesPromotion(
	SalesID int primary key identity(1,1) not null,
	SalesPromotion int not null,/*是否促销*/
	SalesBegin date not null,/*促销开始日期*/
	SalesEnd date not null,/*结束时间*/
	SalesDiscount  float,/*折扣率*/
	SalesTitle varchar(20)
)
go
insert into SalesPromotion values
(1,'2017-5-9','2017-7-9',0.8,'店家开心'),
(1,'2017-3-15','2017-7-9',0.7,'大减价了'),
(1,'2017-5-9','2017-8-9',0.9,'快来看看'),
(1,'2017-3-9','2017-7-9',0.5,'瞧一瞧'),
(1,'2017-5-9','2017-7-9',0.8,'店家开心'),
(1,'2017-5-9','2017-7-9',0.8,'店家开心')
go
select * from SalesPromotion
go
--创建促销产品帮助表
create table ProductHelper(
	ID int primary key identity(1,1),
	SalesID int foreign key references SalesPromotion(SalesID),
	ProductID int foreign key references Product(ProductID)
)
go
insert into ProductHelper values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6)
go
select * from ProductHelper
--创建订单信息表
create table OrderList(
	OrderID int primary key identity(1,1) not null,
	OrderTime date not null,
	OrderStatus int not null,/*-1是提交后删除订单，0是加入购物车，有订单未付款，1是已付款*/
	UserID  varchar(20) not null foreign key references Users(UserID)
)
go
insert into OrderList values
('2017-6-10',0,'U001'),
('2017-6-13',1,'U002'),
('2017-6-13',-1,'U003'),
('2017-5-10',0,'U018'),
('2017-5-13',1,'U001'),
('2017-5-13',1,'U012'),
('2017-6-01',0,'U015'),
('2017-6-01',1,'U015'),
('2017-6-01',1,'U013'),
('2017-6-02',0,'U019'),
('2017-6-02',1,'U017'),
('2017-6-03',1,'U020'),
('2017-6-04',0,'U021'),
('2017-6-04',1,'U020'),
('2017-6-05',1,'U021'),
('2017-6-06',0,'U004'),
('2017-6-06',1,'U004'),
('2017-6-06',1,'U005'),
('2017-6-06',0,'U006'),
('2017-6-07',1,'U007'),
('2017-6-07',1,'U008'),
('2017-6-08',0,'U007'),
('2017-6-08',1,'U008'),
('2017-6-09',1,'U009'),
('2017-6-10',0,'U010'),
('2017-6-13',1,'U011'),
('2017-6-13',1,'U012'),
('2017-6-14',0,'U013'),
('2017-6-15',1,'U014'),
('2017-6-16',1,'U016')
go
select * from OrderList
go
--创建订单明细表
create table OrderDetails(
	OrderDetailsID int primary key identity(1,1) not null,
	ProductID int not null foreign key references Product(ProductID),
	OrderedQty int not null check(OrderedQty>0),/*购买数量*/
	OrderID  int not null foreign key references OrderList(OrderID)
)
go
insert into OrderDetails values
(1,2,1),
(2,5,1),
(5,2,2),
(6,1,2),
(3,2,3),
(13,1,4),
(15,5,4),
(32,2,5),
(40,1,6),
(39,2,7),
(20,2,7),
(22,5,8),
(25,2,8),
(10,1,8),
(13,2,9),
(1,2,10),
(33,5,11),
(34,2,12),
(6,1,13),
(29,2,13),
(5,2,14),
(6,5,15),
(9,2,16),
(6,1,17),
(16,2,17),
(17,2,18),
(2,5,18),
(5,2,19),
(6,1,20),
(3,2,20),
(1,2,21),
(2,5,22),
(5,2,23),
(6,1,24),
(3,2,24)


go
select * from OrderDetails
go

--创建菜单表
create table Menu(
	menuID int primary key  not null,
	menuName varchar(20) not null,
	menuURL varchar(200) not null
)
go

insert into Menu values
(1,'首页','./index.htm')
go
select * from Menu



--1.1  客户可以在线注册，以搜索不同种类的婴儿产品、添加购物车、和查看自己的购物历史
insert into Users values
('A001','admin1','123456',N'男','13678899001','青岛大学','6228480246115178868',9800)
select a.ProductName,a.ProductPrice, b.OrderedQty  from Product a,OrderDetails b where a.ProductID=b.ProductID 
--1.2  客户可以从首页使用各种过滤器和搜索框查看任意产品的详情
select * from Product where ProductName like '%奶粉%'
--1.3  客户可以维护自己的个人信息，如头像、联系方式，也可查看交易历史 
select a.UserName,a.UserGender,a.UserPhone,a.UserAddress,b.OrderTime from Users a,OrderList b where a.UserID=b.UserID
--1.4  更改密码和个人信息
select * from Users
update Users set UserPassword='111',UserPhone='13989785642' where UserName='Amy2'



--2.1.1  针对不同类别的食品菜单管理，包括CRUD操作（增删该查）
select * from Product
delete from Product where ProductName=''
insert into Product values()
update Product set    where   
--2.1.2  在产品信息页上，对于每个产品，应至少显示6张不同的图片给顾客
select ProductImagePath from Product
--2.1.4  当有顾客购买产品的时候，数据库更新库存，页面上显示更新后的库存
update Product set ProductStore=ProductStore-OrderedQty
 from Product a,OrderDetails b where a.ProductID=b.ProductID and 
 ProductName='婴儿奶粉'
--2.1.5  为每个产品添加描述
select ProductDetails from Product


--2.2.1   管理员可以对首页的菜单项进行增删改
select * from Menu 
update Menu set menuName='纸尿裤' where menuID=1
delete  from Menu where menuName='纸尿裤'
insert into Menu values
('首页','./index.htm')



--2.3.1  可以查看所有已注册用户的详细信息
select UserName, UserPassword,UserGender,UserPassword,UserAddress from Users
--2.3.2 基于日期范围筛选用户列表
select a.UserName,a.UserGender,a.UserPhone,a.UserAddress,b.OrderTime from Users a, OrderList b where a.UserID=b.UserID
--2.3.3 每月/天/周购买额最高的前20名顾客

select * from Users
select * from OrderDetails
select * from Product
select * from OrderList
--按月购买的排名
select  a.UserName,c.OrderedQty*d.ProductPrice as '购买金额' from Users a,OrderList b,OrderDetails c,Product d where
 a.UserID=b.UserID and c.ProductID=d.ProductID and b.OrderID=c.OrderID and
 DATEPART(DD,b.OrderTime) > =10 and DATEPART(DD,b.OrderTime)<13  order by c.OrderedQty*d.ProductPrice desc 




-- 2.4.1 管理员可以创建促销策略，例如促销日期、促销策略标题（如新年大减价等）、设置任意产品的折扣率，页面要同时显示产品的实际价格和折扣价格以及折扣价格的失效日期。
select b.ProductPrice, b.ProductPrice*a.SalesDiscount as'折扣价格',a.SalesEnd from SalesPromotion a, Product b, ProductHelper c where c.ProductID=b.ProductID and c.SalesID=a.SalesID

--2.4.2  更新、删除和查看所有的促销策略
select * from  SalesPromotion
update  SalesPromotion set SalesPromotion=0 where SalesID=1
update SalesPromotion set SalesEnd='2017-10-09'

--2.5
select a.ProductName,a.ProductPrice,a.ProductStore,b.CategoryName,a.AddProductDate from Product a, ProductCategory b where a.CategoryID=b.CategoryID and
DATEPART(DD,a.AddProductDate)  >= 13 and DATEPART(DD,a.AddProductDate)  < 14

--3
select  b.ProductName,b.ProductPrice,a.OrderedQty from OrderDetails a, Product b where a.ProductID=b.ProductID  order by a.OrderedQty desc

select * from Product order by AddProductDate desc

select * from Product where ProductName like '%奶%' order by ProductPrice desc
select * from Product where ProductName like '%奶%' order by ProductPrice asc





 







