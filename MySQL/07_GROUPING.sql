/* GROUP BY */
-- 메뉴가 존재하는 카테고리 그룹 조회
select
		CATEGORY_CODE
	FROM tbl_menu
    group by category_code;
    
-- COUNT 함수 활용
select
		CATEGORY_CODE,
        COUNT(*)
	FROM tbl_menu
    group by category_code;
    
-- SUM 함수 활용
select
		CATEGORY_CODE,
        SUM(MENU_PRICE)
	FROM tbl_menu
    group by category_code;
    
-- AVG 함수 활용
select
		CATEGORY_CODE,
        avg(menu_price)
	FROM tbl_menu
    group by category_code;
    
-- 2개 이상의 그룹 생성
select
		MENU_PRICE,
        CATEGORY_CODE
	FROM tbl_menu
    group by menu_price,
				category_code;
                
/* HAVING */
select
		CATEGORY_CODE
	FROM tbl_menu
    group by category_code
    having category_code between 5 AND 8;
    
/* ROLL UP */
-- 컬럼 한 개를 활용한 ROLLUP(카테고리별 총합)
select
		CATEGORY_CODE,
        SUM(MENU_PRICE)
	FROM TBL_MENU
    group by CATEGORY_CODE
    with rollup;
    
-- 컬럼 두 개를 활용한 ROLLUP(같은 메뉴 가격별 총합 및 해당 메뉴 가격별 같은 카테고리의 총합)
-- ROLLUP을 통해 먼저 나온 컬럼의 총합을 구하고 이후 나오는 컬럼의 총합도 구하는 방식이다.
select
		MENU_PRICE,
        CATEGORY_CODE,
        SUM(MENU_PRICE)
	FROM tbl_menu
    group by menu_price,
				category_code
	with rollup;
    
    
    
    
        
                