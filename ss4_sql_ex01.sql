create database store_management2;
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
insert into product value(12,'no name', 'dep', 90000, 12, null, '6 thang');
insert into product value(13,'no name', 'dep', 90000, 12, null, '6 thang');
insert into product(tensp, mota, giasp, soluong) value('no name', 'dep', 90000, 12);
insert into product(tensp, mota, giasp, soluong) value('huda', null, null, null);
insert into product(tensp) value('huda');
select masp, tensp, giasp from product;
select masp, tensp, giasp from product where giasp < 1000;
select * from product;
set sql_safe_updates = 0;
set sql_safe_updates = 1;
update product set mota = 'ngon new';
update product set soluong = 6000000 where tensp = 'no name';
update product set soluong = 6000000 where masp = 1;
alter table product add column Barcode varchar(20);
alter table product add column Warranty varchar(30) default '6 tháng';
delete from product;
delete from product where masp = 13;
drop table product;
drop database  store_management2;
drop database if exists  store_management2;






