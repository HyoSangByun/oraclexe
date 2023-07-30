/*
파일명: ex02-select-where.sql

선택을 사용하여 행 제한
    WHERE 절을 사용하여 반환되는 행을 제한합니다.
    
WHERE
    조건을 충족하는 행으로 query를 제한합니다.
    
    세가지 요소
    - 열이름
    - 비교 조건
    - 열 이름, 상수 또는 값 리스트
    
*/
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;

/*
문자열 및 날짜
    문자열 및 날짜 값은 작은 따옴표로 묶습니다.
    문자 값은 대소문자를 구분하고 날짜 값은 형식을 구분합니다.
    
*/
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';







