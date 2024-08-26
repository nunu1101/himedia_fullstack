/* TRANSACTION */
-- MySQL 기본적으로 COMMIT이 자동으로 되므로 수동으로 조절하고 싶다면 AUTO COMMIT 설정을 바꿔 주어야 한다.

-- AUTO COMMIT 활성화
SET AUTOCOMMIT = 1;
SET AUTOCOMMIT = ON;

-- AUTO COMMIT 비활성화
SET AUTOCOMMIT = 0;
SET AUTOCOMMIT = OFF;

-- START TRANSACTION 구문을 작성하고 DML 작업 수행 후 COMMIT 또는 ROLLBACK을 하면 된다.
-- COMMIT 이후에도 ROLLBACK을 해도 ROLLBACK이 적용되지 않는다.  
START transaction;

select * FROM tbl_menu;

insert into tbl_menu values(NULL, '바나나해장국', 8500, 4, 'Y');
UPDATE tbl_menu SET MENU_NAME = '수정된메뉴' WHERE MENU_CODE = 5;
DELETE FROM tbl_menu WHERE MENU_CODE = 7;

commit;
rollback;