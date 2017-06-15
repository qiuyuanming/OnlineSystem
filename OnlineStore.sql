
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
('U008','Amy8','123456',N'男','13564788990','山东省菏泽市','6220461151788687759',6000)
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
('婴儿奶粉',209,400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',1,'XXX','2017-6-13'),
('特质奶粉',109,600,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',1,N'XXXX','2017-6-14'),
('纸尿裤',99,1400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',1,N'XXXX','2017-6-13'),
('宝贝湿巾','119','1230','images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',1,N'XXXX','2017-6-13'),
('果汁',56,223,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',2,N'XXXX','2017-6-13'),
('糖果',12,1400,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',2,N'XXXX','2017-5-13'),
('奶瓶',88,108,'images/1.jpg;2.jpg;3.jpg;4.jpg;5.jpg;6.jpg',2,N'XXXX','2017-6-13'),
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
('2017-6-13',-1,'U003')
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
(1,5,1),
(1,2,1),
(2,1,2),
(3,2,3)


go
select * from OrderDetails
go
--创建菜单表
create table Menu(
	menuID int primary key identity(1,1) not null,
	menuName varchar(20) not null,
	menuURL varchar(200) not null
)
go
insert into Menu values
('首页','./index.htm')
go
select * from Menu






