/* 서브쿼리 */
-- 민트 미역국의 카테고리 번호 조회
select
		CATEGORY_CODE
	FROM tbl_menu
    WHERE MENU_NAME = '민트미역국';

-- 메인쿼리
-- 다중열 결과 조회
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu;
    
-- 서브쿼리를 활용한 메인쿼리
-- 민트미역국과 같은 카테고리 메뉴 조회
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu
    WHERE category_code = (SELECT
								category_code
							  FROM tbl_menu
                              WHERE MENU_NAME = '민트미역국');
                              
-- 가장 많은 메뉴가 포함된 카테고리 조회
-- 서브쿼리
select
		COUNT(*) AS 'count'
	from tbl_menu
    group by category_code;

-- FROM 절에 쓰인 서브쿼리는 반드시 자신의 별칭이 있어야한다.
select
		MAX(count)
	FROM
		(select
				COUNT(*) AS 'count'
			from tbl_menu
            group by category_code) as countmenu; -- 반드시 별칭 필요
            
/* 상관 서브쿼리 */
-- 메인 쿼리가 서브쿼리의 결과에 영향을 주는 경우 상관 서브쿼리라 한다.
-- 서브쿼리
select
		AVG(MENU_PRICE)
	FROM tbl_menu
    WHERE category_code = 4;
    
-- 카테고리별 평균 가격보다 높은 가격의 메뉴 조회
select
		MENU_CODE,
        MENU_NAME,
        MENU_PRICE,
        CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu A
    where menu_price > (select
								AVG(MENU_PRICE)
								FROM tbl_menu
								WHERE category_code = A.category_code);
                                
/* EXISTS */
-- 조회 결과가 있을 때 true 아니면 false
-- 메뉴가 있는 카테고리 조회
-- TBL_MENU 테이블에 존재하는 카테고리 코드를 가진 'TBL_CATEGORY' 테이블의 카테고리 이름을 선택하고,
-- 그 결과를 카테고리 이름으로 정렬
select
		CATEGORY_NAME
	FROM tbl_category A
    WHERE EXISTS(
				 select
					   1
				   from tbl_menu B
                   where B.category_code = A.category_code)
                   order by 1;
    




