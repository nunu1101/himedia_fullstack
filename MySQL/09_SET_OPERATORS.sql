/* SET OPERATORS */

/* UNION */
-- 두 개 이상의 SELECT 문의 결과를 결합하여 중복된 레코드를 제거한 후 반환하는 연산자
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu
    WHERE category_code = 10
    union
    select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu
    WHERE menu_price < 9000;
    
/* UNION ALL */
-- 두 개 이상의 SELECT문의 결과를 결합하여 중복된 레코드를 제거하지 않고 반환
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu
    WHERE category_code = 10
    union all
    select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu
    WHERE menu_price < 9000;

/* INTERSECT */
-- 두 SELECT문의 결과 중 공통되는 레코드만을 반환하는 연산자이다.
-- MYSQL INTERSECT를 제공하지 않는다.
-- 하지만 INNER JOIN 또는 IN 연산자 활용해서 구현하는 것은 가능하다.

-- INNER JOIN 활용
select
	  A.MENU_CODE,
      A.MENU_NAME,
      A.MENU_PRICE,
      A.CATEGORY_CODE,
      A.ORDERABLE_STATUS
FROM tbl_menu A
INNER JOIN ( select
				  MENU_CODE,
                  MENU_NAME,
                  MENU_PRICE,
                  CATEGORY_CODE,
                  ORDERABLE_STATUS
				FROM tbl_menu
                WHERE menu_price < 9000) B ON (A.menu_code = B.menu_code)
WHERE A.category_code = 10;
      

-- IN 연산자 활용
select
	  MENU_CODE,
      MENU_NAME,
      MENU_PRICE,
      CATEGORY_CODE,
      ORDERABLE_STATUS
FROM tbl_menu
WHERE category_code = 10 AND
	  menu_code IN ( select
						   menu_code
						FROM tbl_menu
                        WHERE menu_price < 9000);
                        
/* MINUS */
-- MYSQL은 MINUS를 제공하지 않는다. 하지만 LEFT JOIN을 활용해서 구현하는 것은 가능하다.
select
	  MENU_CODE,
      MENU_NAME,
      MENU_PRICE,
      CATEGORY_CODE,
      ORDERABLE_STATUS
FROM tbl_menu A
LEFT JOIN ( select
				  MENU_CODE,
                  MENU_NAME,
                  MENU_PRICE,
                  category_code,
                  orderable_status
			FROM tbl_menu
            WHERE menu_price < 9000 ) B ON (A.menu_code = B.MENU_CODE)
WHERE A.CATEGORY_CODE = 10 AND
	  B.menu_code IS NULL;
      
    