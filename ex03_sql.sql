use test_quan_ly_truong_hoc;
-- a, Những học sinh có giới tính là Nam.
select * from hoc_sinh where gioi_tinh = "nam";
-- b,  Những học sinh chưa có tên của phụ huynh.
select * from hoc_sinh where ho_ten_ph is null;
-- c, Những lớp chưa có giáo viên chủ nhiệm.
select * from lop where ma_gvcn is null;
-- d Những học sinh chưa được phân lớp.
select * from hoc_sinh where ma_lop is null;
-- e;Những học sinh nữ có địa chỉ ở Thanh Khê.
select * from hoc_sinh where gioi_tinh = "nữ" and dia_chi = "Thanh Khê";
-- f;Những học sinh nam có địa chỉ ở Hải Châu hoặc những học sinh nữ có địa chỉ ở Thanh Khê.
select * from hoc_sinh where (gioi_tinh = "nam" and dia_chi = "Hải Châu") or (gioi_tinh = "nữ" and dia_chi = "Thanh Khê");
-- g;Những học sinh nam chưa có tên phụ huynh và những học sinh nữ chưa được phân lớp.
select * from hoc_sinh where (gioi_tinh = "nam" and ho_ten_ph is null) and (	gioi_tinh = "nữ" and ma_lop is null);
-- h;Những học sinh nam chưa được phân lớp và những học sinh nam chưa có tên phụ huynh.
select * from hoc_sinh where (gioi_tinh = "nam" and ho_ten_ph  is null) and (gioi_tinh = "nam" and ma_lop is null);
-- i;Mã môn học của những môn học được dạy trong học kỳ 2.
select ma_mh from phu_trach_bo_mon where hoc_ky = "học kỳ 2";