use test_quan_ly_truong_hoc;
-- a> Toan bo thong tin cua toan bo giao vien trong trường
select * from giao_vien;
-- b> liet ke ho ten hoc sinh, gioi tinh, ho ten phu huynh cua toan bo sinh vien trong truong;
select ho_ten_hs, gioi_tinh, ho_ten_ph from hoc_sinh;
-- c> Toan bo thong tin cua tat ca các lớp trong trường;
select * from lop;