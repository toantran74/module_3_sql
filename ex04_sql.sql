use test_quan_ly_truong_hoc;
-- a;
select * from hoc_sinh where ho_ten_hs like 'Nguyễn%';
-- b;
select * from hoc_sinh where ho_ten_hs like '%Nở';
-- c;
select * from hoc_sinh where ho_ten_hs like '%thị%';
-- d;
select * from hoc_sinh where ho_ten_hs like '%Thị%' and ho_ten_hs not like '%Thị' and ho_ten_hs not like 'Thị%';
-- e;
select * from hoc_sinh where ho_ten_hs like '______________________________';
-- f
select * from hoc_sinh where length(ho_ten_hs) <= 30 ;
-- g;
select * from hoc_sinh where length(ho_ten_hs) <= 30 and ho_ten_hs like 'N%';
-- h;
select * from hoc_sinh where ho_ten_hs like '%N' or ho_ten_hs like '%T' or ho_ten_hs like '%V';
-- i
select * from hoc_sinh where ho_ten_hs not like '%N' or ho_ten_hs not like '%T' or ho_ten_hs not like '%V';
-- j
-- select * from hoc_sinh where ho_ten_hs like '____';
select * from hoc_sinh where length(SUBSTRING_INDEX(ho_ten_hs,' ',1)) =4;
