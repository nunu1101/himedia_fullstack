select
		MENU_NAME
from
		TBL_MENU;
select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
from 	TBL_MENU;

select 
		*
from	tbl_menu;
select 6+3;
select 6*3;
select 6%3;

select NOW();
select concat('홍', ' ', '길동') as name; -- 컬럼의 별칭 붙여주기 
select concat('홍', ' ', '길동') as 'Full name'; -- 컬럼의 별칭 붙여주기 

