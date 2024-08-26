/* LIMIT */

-- 전체 행 조회
select
		MENU_CODE,
        Mtbl_categorytbl_categoryENU_NAME,
        MENU_PRICEtbl_category
	from tbl_menu
order by menu_price desc;

-- 2번 행부터 5번 행까지 조회
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE
	from tbl_menu
order by menu_price desc
limit 1, 4;

-- 상위 다섯줄의 행만 조회
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE
	from tbl_menu
order by menu_price desc,
		 menu_name asc
limit 5;
