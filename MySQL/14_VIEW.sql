/* VIEW */
-- SELECT 쿼리문을 저장한 객체로 가상테이블이라고 불린다.
-- 실질적인 데이터를 물리적으로 저장하고 있지 않음
-- 테이블을 사용하는 것과 동일하게 사용할 수 있다.

SELECT * FROM TBL_MENU;

-- VIEW 생성
CREATE view HANSIK AS
SELECT MENU_CODE, MENU_NAME, MENU_PRICE, CATEGORY_CODE, ORDERABLE_STATUS
	FROM tbl_menu
    WHERE category_code = 4;
    
-- 생성된 VIEW 조회    
SELECT * FROM HANSIK;

INSERT INTO TBL_MENU values(NULL, '식혜맛국밥', 5500, 4, 'Y');
INSERT INTO HANSIK values(NULL, '식혜맛국밥', 5500, 4, 'Y');
INSERT INTO HANSIK values(99, '식혜맛국밥', 5500, 4, 'Y');

-- VIEW 통한 UPDATE
UPDATE HANSIK 
	SET MENU_NAME = '식혜맛국밥', 
		MENU_PRICE = 5500 
	WHERE MENU_CODE = 24;

-- VIEW 통한 DELETE
delete FROM HANSIK WHERE MENU_CODE = 99;
select * FROM HANSIK;
SELECT * FROM tbl_menu;

-- VIEW 삭제
DROP VIEW HANSIK;
    
    
    


    