create database store_management;
use quanlicuahang;
create table product(
masp int primary key auto_increment,
tensp varchar(50) not null,
mota varchar(200),
giasp double,
soluong int
);
select * from product;
insert into product value(9,'no name', 'dep', 90000, 12);
insert into product value(10,'no name', 'dep', 90000, 12);
insert into product value(11,'no name', 'dep', 90000, 12);
insert into product value(12,'no name', 'dep', 90000, 12);
insert into product(tensp, mota, giasp, soluong) value('no name', 'dep', 90000, 12);
insert into product(tensp, mota, giasp, soluong) value('huda', null, null, null);
insert into product(tensp) value('huda');
select masp, tensp, giasp from product;
select masp, tensp, giasp from product where giasp < 1000;





