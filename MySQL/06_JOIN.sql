/* JOIN */

/* ALIAS */
/* 컬럼 별칭 */

-- 별칭에 띄어쓰기나 특수기호가 없다면 홀따옴표(')와 AS는 생략 가능하다.
select
		MENU_CODE AS 'CODE',
        MENU_NAME NAME,
        MENU_PRICE
	from tbl_menu
order by menu_price;

/* 테이블 별칭 */
-- 테이블 별칭은 AS를 써도 되고 생략도 가능하다.
select
		A.CATEGORY_CODE,
        A.MENU_NAME
	FROM tbl_menu A
order by A.category_code,
			A.menu_name;
            
/* INNER JOIN */
-- 두 테이블의 교집합을 반환하는 SQL JOIN
-- INNER JOIN 에서 INNER 키워드는 생략 가능하다.
select
		A.MENU_NAME,
        B.CATEGORY_NAME
	FROM tbl_menu A
	JOIN tbl_category B  ON A.category_code = B.category_code;
    
/* USING */
select
		A.MENU_NAME,
		B.CATEGORY_NAME
	FROM tbl_menu A
    JOIN tbl_category B USING (CATEGORY_CODE);
    
/* LEFT JOIN */
select
		A.CATEGORY_NAME,
        B.MENU_NAME
	FROM tbl_category A
    left join tbl_menu B ON A.category_code = B.category_code;
    
/* RIGHT JOIN */
select
		A.MENU_NAME,
        B.CATEGORY_NAME
	FROM tbl_menu A
    right join tbl_category B ON A.category_code = B.category_code;
    
/* CROSS JOIN */
-- 두 테이블의 모든 가능한 조합을 반환
select
		A.MENU_NAME,
        B.CATEGORY_NAME
	FROM tbl_menu A
    cross join tbl_category B;
    
/* SELF JOIN */
-- 같은 테이블 내에서 행과 행 사이의 관계를 찾기위해 사용되는 SQL JOIN
-- 카테고리별 대분류 확인을 위한 SELF JOIN 조회
select
		A.CATEGORY_NAME,
        B.CATEGORY_NAME
	FROM tbl_category A
    join tbl_category B ON A.ref_category_code = B.ref_category_code
    WHERE A.ref_category_code IS NOT NULL;
    
/* JOIN 알고리즘 */
/* NESTED LOOP JOIN */
-- 두 개 이상의 테이블에서 하나의 집합을 기준으로 순차적으로 상대방 ROW를 겹합하여 조합하는 방식
-- 중첩 반복문처럼 첫 번째 테이블의 ROW와 관련된 두 번째 테이블에 대한 ROW를 검색하고
-- 이후 첫 번재 테이블의 다음 ROW에 대해 두 번째 테이블에 대한 것을 검색하며 이후 이와 같은 방식을 반복한다.
-- MYSQL은 기본적으로 NESTED LOOP JOIN을 사용하지만 이를 강제하려면 HASH JOIN을 사용하지 않도록 강제화 할 수 있다.
select
		A.MENU_NAME,
        B.CATEGORY_NAME
	FROM tbl_menu A
    JOIN tbl_category B ON A.category_code = B.category_code;

/* HASH JOIN */
-- HASH JOIN은 등가 조인('=' 연산자를 사용하는 조인)에만 사용할 수 있고 비등가 조인에는 사용할 수 없다.
select
		A.MENU_NAME,
        B.CATEGORY_NAME
	FROM tbl_menu A
    JOIN tbl_category B ON A.category_code = B.category_code;










