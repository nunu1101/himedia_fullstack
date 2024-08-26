/* DML(Data Minupulation Language) */

-- INSERT, UPDATE, DELETE, SELECT
-- : 데이터 조작언어, 테이블에 값을 삽입하거나, 수정하거나, 삭제하거나, 조회하는 언어

/* INSERT */
-- 새로운 행을 추가하는 구문이다.
-- 테이블의 행의 수가 증가한다.
insert into tbl_menu values (NULL, '바나나해장국', 8500, 4, 'Y');

-- NULL 허용 가능한(NULLALBLE)컬럼이나 AUTO_INCREAMENT가 있는 컬럼을 제외하고 INSERT하고 싶은 데이터 컬럼을 지정해서
-- INSERT 가능하다.
insert into tbl_menu(MENU_NAME, MENU_PRICE, CATEGORY_CODE, ORDERABLE_STATUS) VALUES ('초콜릿죽', 6500, 7, 'Y');

-- 컬럼을 명시하면 INSERT 시 데이터의 순서를 바꾸는 것도 가능하다.
insert into tbl_menu(ORDERABLE_STATUS, MENU_PRICE, MENU_NAME, CATEGORY_CODE) values ('Y', 5500, '파인애플탕', 4);

-- MULTI INSERT
insert into
			tbl_menu
values (NULL, '참치맛아이스크림', 1700, 12, 'Y'),
		(NULL, '멸치맛아이스크림', 1500, 11, 'Y'),
        (NULL, '소시지맛커피', 2500, 8, 'Y');
        
select * FROM tbl_menu;

/* UPDATE */
-- 테이블에 기록된 컬럼의 값을 수정하는 구문이다.
-- 테이블의 전체 행 갯수는 변화가 없다.
select
	  MENU_CODE,
      CATEGORY_CODE
 FROM tbl_menu
 WHERE menu_name = '파인애플탕';
 
UPDATE tbl_menu
   SET CATEGORY_CODE = 7
where MENU_CODE = 24;

select * FROM tbl_menu;

/* DELETE */
-- 테이블의 행을 삭제하는 구문이다.
-- 테이블의 행의 갯수가 줄어든다.
select
	  MENU_PRICE
   FROM tbl_menu
   order by menu_price;

-- LIMIT을 활용한 행 삭제
delete from TBL_MENU
ORDER BY MENU_PRICE
LIMIT 2;

-- WHERE절을 활용한 단일 행 삭제
DELETE
	  from tbl_menu
WHERE menu_code = 25;

-- 테이블 전체 행 삭제
-- delete from tbl_menu;

/* REPLACE */
-- INSERT 시 PRIMARY KEY 또는 UNIQUE KEY가 충돌이 발생할 수 있다면
-- REPLACE를 통해 중복된 데이터를 덮어 쓸 수 있다.

-- INSERT INTO tbl_menu values(17, '참기름소주', 5000, 10, 'Y');
-- REPLACE는 INTO 생략 가능 
replace into tbl_menu values(17, '참기름소주', 5000, 10, 'Y');











