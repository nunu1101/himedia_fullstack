/* ORDER BY */

select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
	FROM tbl_menu
-- order by MENU_PRICE ASC; 생략가능
order by MENU_PRICE; 

select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
	FROM tbl_menu
order by MENU_PRICE desc; 

select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
	FROM tbl_menu
order by menu_price desc,
		 menu_name ASC;
         
select
		MENU_CODE
        , MENU_NAME
        , MENU_CODE * MENU_PRICE
	FROM tbl_menu
order by MENU_CODE * MENU_PRICE DESC;

SELECT field('A', 'A', 'B', 'C');
SELECT field('B', 'A', 'B', 'C');

select
		field(ORDERABLE_STATUS, 'N', 'Y')
	FROM TBL_MENU; -- 메뉴테이블의 ORDERABLE_STATUS가 N인지 Y인지 보여줌

-- 오름차순 시 NULL 값을 처음으로 보여줌 
select
		CATEGORY_CODE
        , CATEGORY_NAME
        , REF_CATEGORY_CODE
	FROM TBL_CATEGORY
order by REF_CATEGORY_CODE;

-- 오름차순 시 IS NULL은 NULL 값을 마지막으로 보여줌 
select
		CATEGORY_CODE
        , CATEGORY_NAME
        , REF_CATEGORY_CODE
	FROM TBL_CATEGORY
order by REF_CATEGORY_CODE IS NULL;

-- 내림차순 시 NULL 값을 마지막으로 보여줌 
select
		CATEGORY_CODE
        , CATEGORY_NAME
        , REF_CATEGORY_CODE
	FROM TBL_CATEGORY
order by REF_CATEGORY_CODE desc;

-- 내림차순 시 NULL 값은 처음으로 보여줌 
select
		CATEGORY_CODE
        , CATEGORY_NAME
        , REF_CATEGORY_CODE
	FROM TBL_CATEGORY
order by REF_CATEGORY_CODE IS NULL DESC, REF_CATEGORY_CODE DESC;