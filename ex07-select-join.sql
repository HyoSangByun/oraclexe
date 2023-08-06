/*
파일명 : ex07-select-join.sql

JOIN
    SQL에서 두 개 이상의 테이블에서 관련된 행들을 결합하기 위한 연산입니다.
*/

/*
Natural Join
    두 테이블에서 데이터 유형과 이름이 일치하는 열을 기반으로 자동으로
    테이블을 조인할 수 있습니다.
*/

SELECT department_id, department_name,
        location_id, city
FROM departments
NATURAL JOIN locations;

/*
USING 절로 조인
    명시적으로 결합을 수행하고자 하는 열을 정해준다.
*/
SELECT employee_id, last_name,
    location_id, department_id
FROM employees JOIN departments
USING (department_id);

/*
ON 절로 조인
    ON 절을 사용하여 조인 조건을 지정합니다.
*/
SELECT e.employee_id, e.last_name,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

--위 쿼리와 같은 쿼리임
SELECT e.employee_id, e.last_name,
    d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--ON절 사용하여 3-WAY 조인
/*
SELECT employee_id, city, department_name
FROM employees e JOIN departments d JOIN locations l
ON (d.location_id = l.location_id) 
AND (e.department_id = d.department_id);
*/

SELECT employee_id, city, department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id;

