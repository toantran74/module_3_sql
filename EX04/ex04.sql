create database quanlitruonghoc;
use quanlitruonghoc;
create table giao_vien(
id int primary key auto_increment,
ten varchar(50) not null
);

create table hoc_sinh(
id int primary key auto_increment,
ten varchar(50) not null,
id_giao_vien int,
foreign key (id_giao_vien) references giao_vien(id)
);