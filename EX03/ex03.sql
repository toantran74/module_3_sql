create database quanlitaikhoannganhang;
use quanlitaikhoannganhang;
create table khach_hang(
id int primary key auto_increment,
ten varchar(50) not null
);

create table tk_ngan_hang(
id int primary key auto_increment,
so_du decimal(15,2),
id_khach_hang int unique,
foreign key (id_khach_hang) references khach_hang(id)
);