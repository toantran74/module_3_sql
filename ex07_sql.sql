use test_quan_ly_truong_hoc;
-- a. liet ke thong tin hoc sinh, lop hoc, gvcn;
select hs.ma_hs, hs.ho_ten_hs, hs.gioi_tinh, hs.ma_lop, lop.ten_lop, lop.ma_gvcn from hoc_sinh hs inner join lop on hs.ma_lop = lop.ma_lop;
-- b. Liet ke thong tin hoc sinh, ket qua hoc tap va mon hoc:
select hs.ma_hs, hs.ho_ten_hs, kqht.hoc_ky, kqht.ma_mh, kqht.diem_thi_giua_ky, kqht.diem_thi_cuoi_ky from hoc_sinh hs inner join ket_qua_hoc_tap kqht on hs.ma_hs = kqht.ma_hs;
-- c; liet ke thong tin giao vien phu trach mon hoc
select gv.ma_gv, gv.ho_ten_gv, ptmh.ma_lop,ptmh.ma_mh, ptmh.hoc_ky from giao_vien gv inner join phu_trach_bo_mon ptmh on gv.ma_gv = ptmh.ma_gvpt;
