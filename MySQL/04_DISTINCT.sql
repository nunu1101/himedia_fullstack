/* DISTINCT */
-- 중복된 값을 제거하는데 사용된다.
-- 컬럼에 있는 컬럼값들의 종류를 쉽게 파악할 수 있다.

select
		distinct category_code
	from tbl_menu
order by category_code;

-- NULL 값을 포함한 열의 DISTINCT
select
		distinct REF_CATEGORY_CODE
	FROM tbl_category;
    
-- 열이 여러 개인 DISTINCT
select distinct
		CATEGORY_CODE,
        ORDERABLE_STATUS
	FROM tbl_menu;