insert into tblUser
values 
('trumquang2002','kungkimp3',N'Nguyễn Minh Quang','20','quanggaming2002@gmail.com','0762630442',N'03 Nguyễn Gia Thiều,Phường Phú Hậu,Thành phố Huế','admin'),
('haxuancung874','asfef3wr2',N'Hạ Xuân Cung','20','haxuancung874@microsoft.com','037136024',N'Phường Bình Trưng Tây, Quận 2, Hồ Chí Minh (tphcm)','user'),
('antunglam985','23afwrawaw',N'Ân Tùng Lâm','22','antunglam985@facebook.com','0976720458',N'Xã Bù Nho, Huyện Phú Riềng, Bình Phước','user'),
('lieungochue776','adfaw222',N'Liêu Ngọc Huệ','23','lieungochue776@google.com','0948567439',N'Xã Bắc Thủy, Huyện Chi Lăng, Lạng Sơn','user'),
('caphuonglien586','vfcvfbf211',N'Cà Phương Liên','75','caphuonglien586@hotmail.com','0347309468',N'Xã Tân An, Huyện Chiêm Hóa, Tuyên Quang','user'),
('tanthanhtoan706','mf223dfbef',N'Tấn Thanh Toàn','43','tanthanhtoan706@facebook.com','0584015293',N'Xã Tân Phước Hưng, Huyện Phụng Hiệp, Hậu Giang','user'),
('kimthuongkiet274','sas223sf',N'Kim Thường Kiệt','32','kimthuongkiet274@yahoo.com','0589135027',N'Xã Sơn Hải, Huyện Kiên Lương, Kiên Giang','user'),
('phothehung990','bbccss998',N'Phó Thế Hùng','36','phothehung990@naver.com','0904569138',N'Xã Hùng Đô, Huyện Tam Nông, Phú Thọ','user'),
('cathanhthe22','mnsfvbhebxx',N'Ca Thanh Thế','23','cathanhthe22@microsoft.com','0898052496',N'Xã Trung Thành Tây, Huyện Vũng Liêm, Vĩnh Long','user')
-- tblEmployee done 




-- form da dung
-- thuc an cho cho = dogfood
-- thuc an cho meo = catfood
-- chi can doi? ten cua san pham va loai
insert into tblFood
values
('F0001',N'Thức ăn chay cho chó Natural Core eco10 gói 1kg','dogFood','200000','45'),
('F0002',N'Thức ăn cho chó lớn Pedigree hương gà và rau củ túi 1.5kg','dogFood','1500000','86'),
('F0003',N'Nước khoáng Bowwow cung cấp đạm và canxi cho chó chai 500ml','dogFood','300000','75'),
('F0004',N'Thức ăn cho chó con Natural Core vị thịt cừu gói 1kg',N'dogFood','175000','75'),
('F0005',N'Thức ăn hạt mềm cho chó trưởng thành Zenith gói 3kg',N'dogFood','50000','50'),
('F0006',N'Thức ăn cho chó Natural Core Eco6 vị cá hồi gói 2.4kg',N'dogFood','67000','33'),
('F0007',N'Thức ăn cho chó Nutrience thịt gà, cá biển và rau củ quả túi 5kg',N'dogFood','30000','75'),
('F0008',N'Thức ăn vặt cho chó Pedigree vị gan nướng túi 80g',N'dogFood','210000','68'),
('F0009',N'Hộp 12 gói pate cho chó MARIA xương ống và gan bò 70g',N'dogFood','900000','85'),
('F0010',N'Thức ăn cho chó con Nutrience thịt gà và rau củ quả bao 2.27kg',N'dogFood','400000','77'),
('F0011',N'Thức ăn hạt mềm cho chó già Zenith gói 3kg','dogFood','8000000','86'),
('F0012',N'Thức ăn cho chó Natural Core thịt gà và cá hồi gói 2kg','dogFood','300000','68'),
('F0013',N'Thức ăn hạt mềm cho chó Origi-7 vị thịt bò gói 2kg',N'dogFood','700000','38'),
('F0014',N'Xúc xích cho chó Bowwow phô mai gói 14 cây x 17g',N'dogFood','500000','88'),
('F0015',N'Thức ăn hạt khô cho chó lớn FIB gói 400g',N'dogFood','530000','82'),
('F0016',N'Thức ăn hạt khô cho chó nhỏ FIB gói 400g',N'dogFood','530000','82'),
('F0017',N'Thức ăn vặt cho chó Pedigree vị thịt heo muối túi 60g',N'dogFood','150000','78'),
('F0018',N'Thức ăn cho mèo Nutrience cá biển và rau củ quả túi 2.27kg',N'catFood','124000','78'),
('F0019',N'Thức ăn cho mèo trưởng thành Me-O vị cá ngừ túi 1.2kg',N'catFood','250000','78'),
('F0020',N'6 gói sốt cho mèo Whiskas vị cá ngừ gói 85g',N'catFood','55000','78'),
('F0021',N'5 cây thức ăn hỗ hợp hoàn chỉnh cho mèo Cherman vị cá ngừ 12g',N'catFood','75000','22'),
('F0022',N'Thức ăn cho mèo Zenith gói 1.2kg',N'catFood','90000','70'),
('F0023',N'Thức ăn cho mèo Minino vị cá ngừ gói 1.3kg',N'catFood','150000','28'),
('F0024',N'Thức ăn cho mèo trưởng thành Me-O vị cá ngừ và gà xé túi 70g',N'catFood','120000','48'),
('F0025',N'Thức ăn cho mèo con Whiskas hương cá biển túi 1.1kg',N'catFood','120000','34'),
('F0026',N'Pate cho mèo Cherman vị cá ngừ và cá hồi gói 85g',N'catFood','152000','28')





--done
insert into tblService values
('S0001',N'Massage',120000),
('S0002',N'Tiêm Phòng',125000),
('S0003',N'Cắt Móng',130000),
('S0004',N'Nhuộm Lông',135000),
('S0005',N'Tắm Rửa',140000),
('S0006',N'Bôi dưỡng',145000),
('S0007',N'Triệt sản',150000),
('S0008',N'Phối Giống',155000),
('S0009',N'Chữa bệnh ngoài da',160000)

--fix loai thanh tieng anh
-- cho = dog
-- meo = cat
insert into tblPet values 
('P0001',N'Alaska',N'Vàng Đen','dog',15000000,22),
('P0002',N'Chó ngao Anh',N'Đen','dog',70000000,7),
('P0003',N'Dogo Argentino',N'Trắng Đen','dog',10000000,3),
('P0004',N'Chó săn Afghanistan',N'Nâu','dog',10000000,1),
('P0005',N'Chó núi Bernese',N'Trắng','dog',16000000,3),
('P0006',N'Bloodhound',N'Nâu Đen','dog',16000000,2),
('P0007',N'Beauceron',N'Nâu','dog',29000000,2),
('P0008',N'Doberman',N'Nâu',N'dog',12000000,3),
('P0009',N'Goldens',N'Nâu Xám',N'dog',19000000,18),
('P0010',N'Ailen Setter',N'Vàng Nâu',N'dog',4000000,2),
('P0011',N'Chó ngao Tây Ban Nha',N'Trắng',N'dog',23000000,2),
('P0012',N'Beagle',N'Vàng Trắng',N'dog',46000000,11),
('P0013',N'Border Collies',N'Xám Trắng',N'dog',104000000,15),
('P0014',N'Dalmatian',N'Trắng',N'dog',18000000,6),
('P0015',N'Welsh Corgi',N'Vàng Xám',N'dog',23000000,20),
('P0016',N'Pug',N'Đen nâu',N'dog',11000000,25),
('P0017',N'Poodle',N'Đen',N'dog',7000000,30),
('P0018',N'Mèo Xiêm',N'Nâu',N'dog',1300000,9),
('P0019',N'Mèo Anh  Lông Dài',N'Đen',N'dog',2000000,24),
('P0020',N'Mèo Ba Tư',N'Nâu Trắng',N'dog',8000000,4),


('P0021',N'Sphynx',N'Nâu Đen',N'cat',22000000,6),
('P0022',N'Mèo Anh lông ngắn',N'Trắng',N'cat',5100000,11),
('P0023',N'Mèo rừng Na Uy',N'Xám Trắng',N'cat',4800000,2),
('P0024',N'Sphynx',N'Đen',N'cat',22000000,6),
('P0025',N'Mèo Anh lông ngắn',N'Đen',N'cat',6000000,11),
('P0026',N'Mèo rừng Na Uy',N'Đen',N'cat',4800000,2),
('P0027',N'Sphynx',N'Trắng',N'cat',22000000,6),
('P0028',N'Mèo Anh lông ngắn',N'Đen Xám',N'cat',5000000,5),
('P0029',N'Mèo rừng Na Uy',N'Đen',N'cat',1800000,2),
('P0030',N'Sphynx',N'Đen',N'cat',2600000,4),
('P0031',N'Sphynx',N'Đen xám',N'cat',52000000,3),
('P0032',N'Sphynx',N'Vàng',N'cat',2200000,7),
('P0033',N'Sphynx',N'Nâu Xám',N'cat',12000000,6),
('P0034',N'Sphynx',N'Trắng',N'cat',62000000,7),
('P0035',N'Sphynx',N'Vàng',N'cat',22000000,6),
('P0036',N'Sphynx',N'Vàng Đen',N'cat',22000000,8),
('P0037',N'Sphynx',N'Trắng',N'cat',21000000,11),
('P0038',N'Sphynx',N'Nâu',N'cat',26000000,2),
('P0039',N'Sphynx',N'Vàng Đen',N'cat',22000000,2),
('P0040',N'Sphynx',N'Trắng',N'cat',12000000,3)

--====================UNCHECK==========
insert tblDiscount
values	('DC001',N'Tết dương lịch','2022-01-01','2022-01-03','0.20'),
		('DC002',N'Tết ông Táo','2022-01-25','2022-01-26','0.3'),
		('DC003',N'Ngày Lễ Tình Yêu','2022-02-14','2022-02-15','0.1'),
		('DC004',N'Ngày Quốc Tế Phụ nữ','2022-02-08','2022-02-09','0.2'),
		('DC005',N'Ngày Cá tháng tư','2022-04-01','2022-04-02','0.15'),
		('DC006',N'Ngày học sinh và sinh viên','2022-01-09','2022-01-10','0.24'),
		('DC007',N'Ngày Quốc tế thiếu nhi','2022-06-01','2022-06-02','0.17'),
		('DC008',N'Ngày gia đình','2022-06-28','2022-06-29','0.07'),
		('DC009',N'Ngày halloween','2022-10-31','2022-11-10','0.13'),
		('DC010',N'Lễ giáng sinh','2022-12-25','2022-12-26','0.09')
--=======================UNCHECK===================
insert tblOrder
values
('OD001','2022-11-07','DC009','E007','C0001'),
('OD002','2022-11-07','DC009','E007','C0002'),
('OD003','2022-11-06','DC009','E016','C0003'),
('OD004','2022-11-04','DC009','E015','C0004'),
('OD005','2022-10-31','DC009','E015','C0005'),
('OD006','2022-10-20',NULL,'E016','C0005'),
('OD007','2022-10-20',NULL,'E007','C0007'),
('OD008','2022-10-20',NULL,'E015','C0008'),
('OD009','2022-10-14',NULL,'E017','C0009'),
('OD010','2022-10-03',NULL,'E016','C0009'),
('OD011','2022-09-02',NULL,'E007','C0010'),
('OD012','2022-09-02',NULL,'E015','C0011'),
('OD013','2022-08-15',NULL,'E015','C0011'),
('OD014','2022-08-11',NULL,'E017','C0011'),
('OD015','2022-07-08',NULL,'E007','C0012'),
('OD016','2022-07-07',NULL,'E017','C0007'),
('OD017','2022-06-29','DC008','E016','C0009'),
('OD018','2022-04-30',NULL,'E015','C0011'),
('OD019','2022-04-30',NULL,'E016','C0012'),
('OD020','2022-03-26',NULL,'E016','C0005'),
('OD021','2022-03-26',NULL,'E015','C0008')


insert tblOrderDetail
values
('OD001','F0001','1'),
('OD001','F0002','1'),
('OD001','F0003','7'),
('OD001','P1001','1'),
('OD001','P1002','1'),
('OD002','P1003','1'),
('OD002','F0004','2'),
('OD002','F0005','3'),
('OD002','F0006','6'),
('OD003','F0007','5'),
('OD003','S0003','1'),
('OD003','S0004','1'),
('OD003','S0005','1'),
('OD004','S0006','1'),
('OD004','S0007','1'),
('OD004','S0008','1'),
('OD005','S0009','1'),
('OD006','F0011','2'),
('OD007','F0012','3'),
('OD008','F0013','2'),
('OD008','F0014','4'),
('OD009','F0015','6'),
('OD009','P1020','2'),
('OD009','P1021','2'),
('OD012','P1022','1'),
('OD013','P1023','2'),
('OD014','P1004','1')
--========================UNCHECK=================







create table tblPet(
	PetID varchar(10) primary key,
	PetName nvarchar(50) not null,
	PetColor nvarchar(50),
	PetType nvarchar(50),
	PetPrice decimal(10,0) not null,
	PetAmount decimal(3,0)
	
)
go

create table tblFood(
	FoodID varchar(10) primary key,
	FoodName nvarchar(50) not null,
	FoodType nvarchar(50) not null,
	FoodPrice decimal(10,0) not null,
	FoodAmount decimal(3,0)
)
go

create table tblCustomer(
	CustomID varchar(10) primary key,
	CustomName nvarchar(50) not null,
	CustomPhone varchar(15) not null,
	CustomAdress nvarchar(50)
)
go

create table tblService(
	ServiceID varchar(10) primary key,
	ServiceName nvarchar(50) not null,
	ServicePrice decimal(10,0) not null,
)


create table tblDepartment
( 
	depID char(3) primary key ,
	depName nvarchar(60) not null,
)

create table tblEmployee
(
	empID varchar(10) primary key not null,
	empName nvarchar(30) not null,
	empPosition nvarchar(60),
	empSex char(1) check (empSex in ('F','M')),
	depID char(3) not null,
	supervisorID varchar(10)
	
	constraint fk_empM foreign key(depID) references tblDepartment(depID)
)


create table tblDiscount(
	DiscountID varchar(10) primary key ,
	DiscountName nvarchar(50),
	DiscountStart date,
	DiscountEnd date,
	DiscountPercent decimal(4,3)
)


create table tblOrder(
	OrderID varchar(10) primary key,
	OrDate date,
	DiscountID varchar(10),
	empID varchar(10),
	CustomID varchar(10),
	constraint fk_pro foreign key(DiscountID) references tblDiscount(DiscountID),
	constraint fk_emp foreign key(empID) references tblEmployee(empID),
	constraint fk_customer foreign key(CustomID) references tblCustomer(CustomID),
)

create table tblOrderDetail(
	OrderID varchar(10),
	ProductID varchar(10),
	buyAmount decimal(3,0)
	constraint fk_pet foreign key(ProductID) references tblPet(PetID),
	constraint fk_food foreign key(ProductID) references tblFood(FoodID),
	constraint fk_service foreign key(ProductID) references tblService(ServiceID),
	constraint fk_order foreign key(OrderID) references tblOrder(OrderID),
	constraint pk_product primary key (OrderID, ProductID)
)

--===========================================TRIGGER========================================
drop trigger trg_OrderDetail


create trigger trg_OrderDetail_Inserted --trigger insert
on tblOrderDetail
for insert
as
begin
--lay so luong 
declare @amount int;
--lay id
declare @IDproduct varchar(10);

select @amount=inserted.buyAmount,@IDproduct=inserted.ProductID
from inserted


if(@IDproduct like 'P%')
  begin
	declare @takeRealAmount int;
	select @takeRealAmount= tblPet.PetAmount
	from tblPet
	
	print(@takeRealAmount);
	if(@takeRealAmount>@amount)
	begin
	print(@takeRealAmount);
	update tblPet
	set tblPet.PetAmount=tblPet.PetAmount-@amount
	where tblPet.PetID=@IDproduct
	end

	else

	begin
	raiserror('So luong khong hop le bang pet',16,1)
	rollback tran

	end

 end
else if(@IDproduct like 'F%')
 begin
	declare @takeRealAmount2 int;
	select @takeRealAmount2= tblFood.FoodAmount
	from tblFood
	if(@takeRealAmount2> @amount)
	begin
	print(@takeRealAmount2);

	update tblFood
	set tblFood.FoodAmount=tblFood.FoodAmount-@amount
	where tblFood.FoodID=@IDproduct
	end
	else
	begin
	raiserror('So luong khong hop le bang food',16,1)
	rollback tran
	end
 end

 end
 --==========================trigger delete==============================
create trigger trg_OrderDetail_Delete
on tblOrderDetail
for delete
as
begin
declare @amount int;
declare @IDproduct varchar(10);--lay id

select @amount=deleted.buyAmount,@IDproduct=deleted.ProductID--lay trong bang deleted 
from deleted
if(@IDproduct like 'P%')
		begin
		update tblPet
		set tblPet.PetAmount=tblPet.PetAmount+@amount
		where tblPet.PetID=@IDproduct
		end
else if(@IDproduct like 'F%')
		begin
		update tblFood
		set tblFood.FoodAmount=tblFood.FoodAmount+@amount
		where tblFood.FoodID=@IDproduct
		end
end

 delete tblOrderDetail
 where tblOrderDetail.OrderID='OD002' and ProductID='P1001'

 drop trigger trg_OrderDetail_Update
--=============UPDATE============
create trigger trg_OrderDetail_Update
on tblOrderDetail
for update
as
begin

--lay so luong 
declare @amount int;
--lay id
declare @IDproduct varchar(10);

--lay trong bang deleted 
select @amount=deleted.buyAmount,@IDproduct=deleted.ProductID
from deleted


if(@IDproduct like 'P%')
  begin

	update tblPet
	set tblPet.PetAmount=tblPet.PetAmount+@amount
	where tblPet.PetID=@IDproduct
 end
else if(@IDproduct like 'F%')
 begin
	update tblFood
	set tblFood.FoodAmount=tblFood.FoodAmount+@amount
	where tblFood.FoodID=@IDproduct
 end

 --lay trong bang insert 
select @amount=inserted.buyAmount,@IDproduct=inserted.ProductID
from inserted


if(@IDproduct like 'P%')
  begin
	declare @takeRealAmount int;
	select @takeRealAmount= tblPet.PetAmount
	from tblPet
	where tblPet.PetID=@IDproduct
	
	print(@takeRealAmount);
	if(@takeRealAmount>@amount)
	begin
	print(@takeRealAmount);
	update tblPet
	set tblPet.PetAmount=tblPet.PetAmount-@amount
	where tblPet.PetID=@IDproduct
	end

	else

	begin
	raiserror('So luong khong hop le bang pet',16,1)
	rollback tran

	end

 end
else if(@IDproduct like 'F%')
 begin
	declare @takeRealAmount2 int;
	select @takeRealAmount2= tblFood.FoodAmount
	from tblFood
	where tblFood.FoodID=@IDproduct
	if(@takeRealAmount2> @amount)
	begin
	print(@takeRealAmount2);

	update tblFood
	set tblFood.FoodAmount=tblFood.FoodAmount-@amount
	where tblFood.FoodID=@IDproduct
	end
	else
	begin
	raiserror('So luong khong hop le bang food',16,1)
	rollback tran
	end
 end


end
