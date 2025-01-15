create database quanlidanhba;
use quanlidanhba;
create table nguoi(
id int primary key auto_increment,
ten varchar(50) not null
);

create table so_dien_thoai(
id int primary key auto_increment,
so varchar(11) not null,
nguoi_id int,
foreign key (nguoi_id) references nguoi(id)
);

create table email(
id int primary key auto_increment,
dia_chi_email varchar(255) not null,
nguoi_id int,
foreign key (nguoi_id) references nguoi(id)
);