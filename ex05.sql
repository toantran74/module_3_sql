create database quanlidoibong;
use quanlidoibong;
create table hlv(
id int primary key auto_increment,
ten varchar(50) not null,
dia_chi text
);
create table doi_bong(
id int primary key auto_increment,
ten varchar(50) not null,
id_hlv int unique,
foreign key (id_hlv) references hlv(id)
);

create table cau_thu(
id int primary key auto_increment,
ten varchar(50) not null,
dia_chi text,
id_doi int,
foreign key (id_doi) references doi_bong(id)
);

create table vi_tri(
id int primary key auto_increment,
vi_tri varchar(50) not null,
id_cau_thu int,
foreign key (id_cau_thu) references cau_thu(id)
);
drop table vi_tri;
create table vi_tri(
id int primary key auto_increment,
vi_tri varchar(50) not null
);

create table tran_dau(
id int primary key auto_increment,
doi_chu_nha int,
doi_khach int,
thoi_gian timestamp,
foreign key (doi_chu_nha) references doi_bong(id),
foreign key (doi_khach) references doi_bong(id),
check(doi_chu_nha != doi_khach)
);

create table cauthu_vitri(
id_cauthu int,
id_vitri int,
primary key(id_cauthu, id_vitri),
foreign key (id_cauthu) references cau_thu(id),
foreign key (id_vitri) references vi_tri(id)
);

create table trandau_cauthu(
id_trandau int,
id_cauthu int,
primary key (id_trandau,id_cauthu),
foreign key (id_trandau) references tran_dau(id),
foreign key (id_cauthu) references cau_thu(id)
);