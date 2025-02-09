use test_quan_ly_truong_hoc;
-- a;
select hs.ma_hs, hs.ho_ten_hs, hs.gioi_tinh, hs.ma_lop, lop.ten_lop, lop.nam_hoc, lop.ma_gvcn, gv.ho_ten_gv from hoc_sinh hs join lop on hs.ma_lop = lop.ma_lop join giao_vien gv on lop.ma_gvcn = gv.ma_gv;

-- b;
select kq.ma_hs, hs.ho_ten_hs, kq.hoc_ky, kq.ma_mh, mh.ten_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky
from ket_qua_hoc_tap kq
join hoc_sinh hs on kq.ma_hs = hs.ma_hs
join mon_hoc mh on kq.ma_mh = mh.ma_mh;

-- c;
select kq.ma_hs, hs.ho_ten_hs, kq.hoc_ky, kq.ma_mh, mh.ten_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky, hs.ma_lop, lop.ma_gvcn, gv.ho_ten_gv
from ket_qua_hoc_tap kq
join hoc_sinh hs on kq.ma_hs = hs.ma_hs
join mon_hoc mh on kq.ma_mh = mh.ma_mh
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gv on lop.ma_gvcn = gv.ma_gv;

-- d;
select kq.ma_hs, hs.ho_ten_hs, hs.ma_lop, lop.ma_gvcn, gvcn.ho_ten_gv as ho_ten_giao_vien_chu_nhiem, kq.hoc_ky, kq.ma_mh, mh.ten_mh, kq.diem_thi_giua_ky, kq.diem_thi_cuoi_ky,
lop.ma_gvcn as ma_gv_phu_trach, gv_phu_trach.ho_ten_gv as ho_ten_gv_phu_trach
from ket_qua_hoc_tap kq
join hoc_sinh hs on kq.ma_hs = hs.ma_hs
join lop on hs.ma_lop = lop.ma_lop
join giao_vien gvcn on lop.ma_gvcn = gvcn.ma_gv
join mon_hoc mh on kq.ma_mh = mh.ma_mh
left join giao_vien gv_phu_trach on lop.ma_gvcn = gv_phu_trach.ma_gv;

-- e;
select hs.ma_hs,
       hs.ho_ten_hs,
       gvcn.ma_gv,
       gvcn.ho_ten_gv,
       kqht.hoc_ky,
       kqht.ma_mh,
       mh.ten_mh,
       kqht.diem_thi_giua_ky,
       kqht.diem_thi_cuoi_ky,
       gvpt.ma_gv,
       gvpt.ho_ten_gv
from hoc_sinh hs
         join lop l on hs.ma_lop = l.ma_lop
         join giao_vien gvcn on l.ma_gvcn = gvcn.ma_gv
         join ket_qua_hoc_tap kqht on hs.ma_hs = kqht.ma_hs
         join mon_hoc mh on kqht.ma_mh = mh.ma_mh
         join phu_trach_bo_mon ptbm on hs.ma_lop = ptbm.ma_lop
         join giao_vien gvpt on gvpt.ma_gv = ptbm.ma_gvpt
where hs.gioi_tinh = 'Nữ'
  and (kqht.diem_thi_cuoi_ky >= 9 or kqht.diem_thi_giua_ky >= 9);
  
  -- f;
  select hs.ma_hs,
       hs.ho_ten_hs,
       kqht.hoc_ky,
       kqht.ma_mh,
       mh.ten_mh,
       kqht.diem_thi_giua_ky,
       kqht.diem_thi_cuoi_ky,
       l.ma_lop,
       gvpt.ma_gv,
       gvpt.ho_ten_gv
from hoc_sinh hs
         join ket_qua_hoc_tap kqht on hs.ma_hs = kqht.ma_hs
         join mon_hoc mh on kqht.ma_mh = mh.ma_mh
         join lop l on hs.ma_lop = l.ma_lop
         join giao_vien gvcn on l.ma_gvcn = gvcn.ma_gv
         join phu_trach_bo_mon ptbm on l.ma_lop = ptbm.ma_lop
         join giao_vien gvpt on ptbm.ma_gvpt = gvpt.ma_gv
where gvpt.ma_gv = gvcn.ma_gv;
-- g;
select mh.ma_mh, l.ma_lop, kqht.hoc_ky, kqht.ngay_gio_thi_cuoi_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where YEAR(ngay_gio_thi_cuoi_ky) = 2023;

-- h
select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where MONTH(kqht.ngay_gio_thi_cuoi_ky) = 8
  and YEAR(kqht.ngay_gio_thi_cuoi_ky) = 2023;
  
  -- i ;
  select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where DATEDIFF(kqht.ngay_gio_thi_cuoi_ky, '2023-08-20') < 0;

-- j ;
select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where DATEDIFF(kqht.ngay_gio_thi_cuoi_ky, '2023-08-20') = -7;

-- k;
select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where DATEDIFF('2023-08-20', kqht.ngay_gio_thi_cuoi_ky) = 21;

-- l;
select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where DAY(kqht.ngay_gio_thi_cuoi_ky) >= 10
  and DAY(kqht.ngay_gio_thi_cuoi_ky) <= 20
  and MONTH(kqht.ngay_gio_thi_cuoi_ky) = 8
  and YEAR(kqht.ngay_gio_thi_cuoi_ky) = 2023;
  -- m;
  select mh.ma_mh, l.ma_lop, kqht.hoc_ky
from mon_hoc mh
         join ket_qua_hoc_tap kqht on mh.ma_mh = kqht.ma_mh
         join hoc_sinh hs on kqht.ma_hs = hs.ma_hs
         join lop l on hs.ma_lop = l.ma_lop
where kqht.ngay_gio_thi_cuoi_ky >= '2023-08-10 10:00:00'
  and kqht.ngay_gio_thi_cuoi_ky <= '2023-08-20 20:30:00';
  