create database quanlidoibong_mu;
use quanlidoibong_mu;

create table hlv(
id int primary key auto_increment,
name varchar(50),
ngaysinh date
);

create table doi_bong(
id int primary key auto_increment,
name varchar(50),
id_hlv int,
foreign key(id_hlv) references hlv(id)
);

create table cau_thu(
id int primary key auto_increment,
name varchar(50),
ngaysinh date,
id_doi int,
foreign key(id_doi) references doi_bong(id)
);

create table vi_tri(
id int primary key auto_increment,
vitri varchar(20)
);

create table tran_dau(
id int primary key auto_increment,
doi_A int,
doi_B int,
ngaygio date,
foreign key (doi_A) references doi_bong(id),
foreign key (doi_B) references doi_bong(id),
check (doi_A != doi_B)
);

create table vitri_cauthu(
id_cauthu int,
id_vitri int,
primary key(id_cauthu, id_vitri),
foreign key(id_cauthu) references cau_thu(id),
foreign key(id_vitri) references vi_tri(id)
);

create table cauthu_trandau(
	id_trandau  int,
    id_cauthu int,
	primary key(id_trandau,id_cauthu),
    foreign key(id_cauthu) references cau_thu(id),
	foreign key(id_trandau) references tran_dau(id)
);