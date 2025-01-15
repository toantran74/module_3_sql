create database quanlibansach;
use quanlibansach;
create table tac_gia(
id int primary key auto_increment,
ten varchar(50) not null
);
create table nhan_vien(
id int primary key auto_increment,
ten varchar(50) not null,
dia_chi text
);
create table sach(
id int primary key auto_increment,
ten varchar(50) not null,
gia decimal(10, 2) not null,
id_tac_gia int,
foreign key (id_tac_gia) references tac_gia(id),
id_nhan_vien int,
foreign key(id_nhan_vien) references nhan_vien(id)
);