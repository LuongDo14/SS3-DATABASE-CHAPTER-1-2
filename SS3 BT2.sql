create database Quanlyhanghoa;
use quanlyhanghoa;
create table phieuxuat(
Sopx int primary key,
Ngayxuat date,
DGXuat varchar(30),
SLXuat int
);
create table VATTU(
MaVTU int primary key,
TenVTU varchar(100)
);
create table chitietphieuxuat(
SoPX int,
MaVTU int,
DGXuat varchar(100),
SLXuat int,
primary key(SoPX,MaVTU),
foreign key(SoPX) references phieuxuat(SoPX),
foreign key(MaVTU) references VATTU(MaVTU)
);
create table PHIEUNHAP(
SoPN int primary key,
NgayNhap date
);
create table chitietphieunhap(
MaVTU int,
SoPN int,
DGNhap varchar(100),
SLNhap int,
primary key(MaVTU,SoPN),
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoPN) references PHIEUNHAP(SoPN)
);


create table NHACC(
MaNCC int primary key,
SoDH int,
TenNCC varchar(100),
DiaChi varchar(100),
SDT varchar(12)
);
create table DONDH(
SoDH int primary key,
NgayDH date,
MaNCC int,
MaVTU int,
foreign key(MaNCC) references NHACC(MaNCC)

);
create table chitietdondathang(
MaVTU int,
SoDH int,
primary key(MaVTU, SoDH),
foreign key(MaVTU) references VATTU(MaVTU),
foreign key(SoDH) references DONDH(SoDH)
);


