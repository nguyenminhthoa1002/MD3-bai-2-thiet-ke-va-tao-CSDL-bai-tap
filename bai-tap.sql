create database md3_bai2_baitap;
-- drop database md3_bai2_baitap;
use md3_bai2_baitap;

create table customer (
cID int auto_increment,
cName nvarchar(10),
cAge int ,
primary key (cID)
);

create table orders (
oID int auto_increment,
cID int not null,
oDate datetime,
oTotalPrice float,
primary key (oID),
foreign key (cID) references customer(cID)
);

create table product(
pID int auto_increment,
pName nvarchar(20),
pPrice float,
primary key (pID)
);

create table orderDetail(
oID int not null,
pID int not null,
odQTY int not null,
primary key (oID,pID),
foreign key (oID) references orders(oID),
foreign key (pID) references product(pID)
);