/* WHERE */

-- 1) 비교 연산자 예제와 함께 WHERE절 사용
select
		MENU_NAME
        , MENU_PRICE
        , ORDERABLE_STATUS
	FROM tbl_menu
WHERE orderable_status = 'Y';

select
		MENU_NAME
        , MENU_PRICE
        , ORDERABLE_STATUS
	FROM tbl_menu
WHERE MENU_PRICE = 13000;

-- 같지 않음 연산자와 함께 WHERE 절 사용 
select
		MENU_CODE
        , MENU_NAME
        , ORDERABLE_STATUS
	FROM tbl_menu
WHERE orderable_status != 'Y';

-- 대소 비교 연산자와 함께 WHERE 절 사용
select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
	FROM TBL_MENU
WHERE MENU_PRICE > 20000;

-- 2) AND 연산자와 함께 WHERE 절 사용
select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
        , ORDERABLE_STATUS
	FROM TBL_MENU
WHERE ORDERABLE_STATUS = 'Y' AND
		CATEGORY_CODE = 10;
        
select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
        , ORDERABLE_STATUS
	FROM TBL_MENU
WHERE MENU_PRICE > 5000 AND
		CATEGORY_CODE = 10;
        
-- 3) OR 연산자와 함께 WHERE절 사용 
select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
        , ORDERABLE_STATUS
	FROM TBL_MENU
WHERE ORDERABLE_STATUS = 'Y' OR
		CATEGORY_CODE = 10
ORDER BY CATEGORY_CODE;

select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
        , ORDERABLE_STATUS
	FROM tbl_menu
WHERE menu_price > 5000 OR
		CATEGORY_CODE = 10;
        
select
		MENU_CODE
        , MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
        , ORDERABLE_STATUS
	FROM tbl_menu
WHERE category_code = 4 OR
		MENU_PRICE = 9000 AND
        MENU_CODE > 10;
        
-- 4) BETWEEN 연산자 예제와 함께 WHERE절 사용
select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
	FROM tbl_menu
WHERE menu_price >= 10000 AND
		menu_price <= 25000
ORDER BY menu_price;

select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
	FROM tbl_menu
WHERE menu_price >= 10000 AND
		menu_price <= 25000
ORDER BY menu_price;

select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
	FROM tbl_menu
WHERE menu_price between 10000 AND 25000
ORDER BY menu_price;

select 
		MENU_NAME
        , MENU_PRICE
        , CATEGORY_CODE
	FROM tbl_menu
WHERE menu_price NOT between 10000 AND 25000
ORDER BY menu_price;

-- 5) LIKE 연산자 예제와 함께 WHERE절 사용
select
		MENU_NAME,
        MENU_PRICE
	FROM tbl_menu
WHERE menu_name LIKE '%마늘%'
ORDER BY menu_name;

-- 메뉴 코드, 메뉴 이름, 메뉴 가격, 카테고리 코드, 판매상태,
-- 조건 : 메뉴 가격이 5000원 초과이면서 카테고리 코드가 10번이면서 메뉴 이름이 갈치가 포함된 쿼리문을 조회하세요.
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	from tbl_menu
WHERE menu_price > 5000 AND
		category_code = 10 AND
        menu_name LIKE '%갈치%';
        
-- 부정 표현
select
		MENU_NAME,
        MENU_PRICE
	FROM tbl_menu
WHERE menu_name NOT LIKE '%마늘%'
order by menu_name;

-- 6) IN 연산자 예제와 함께 WHERE 절 사용
select
		MENU_NAME,
        CATEGORY_CODE
	FROM tbl_menu
WHERE category_code = 4 OR
		category_code = 5 OR
        category_code = 6
ORDER BY category_code;

-- OR 연산자를 IN 연산자로 사용 가능
select
		MENU_NAME,
        CATEGORY_CODE
	FROM tbl_menu
WHERE category_code in (4,5,6)
order by category_code;

-- 부정 표현
select
		MENU_NAME,
        CATEGORY_CODE
	FROM tbl_menu
WHERE category_code not in (4,5,6)
order by category_code;
		
-- 7) IS NULL 연산자와 함께 WHERE 절 사용
select
		CATEGORY_CODE,
        CATEGORY_NAME,
        REF_CATEGORY_CODE
	FROM tbl_category
WHERE ref_category_code IS NULL;

-- 부정 표현
select
		CATEGORY_CODE,
        CATEGORY_NAME,
        REF_CATEGORY_CODE
	FROM tbl_category
WHERE ref_category_code IS NOT NULL;
        
        
        

        
	
		