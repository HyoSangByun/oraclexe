/*
파일명 : ex10-select-with.sql

WITH절 
    WITH 절은 서브쿼리 결과를 임시로 정의하고 사용할 수 있는 기능입니다.
    공통테이블표현식 CTE(Common Table Expression)
    
    주로 복잡한 쿼리를 간결하게 작성하거나 가독성을 높이는데 활용됩니다.
    

*/

--부서별 평균 급여를 계산하는 쿼리
WITH AvgSalByDept AS (
    SELECT department_id, AVG(salary) AS avgsalary
    FROM employees
    GROUP BY department_id
)
SELECT d.department_name, AvgSalByDept.avgsalary
FROM departments d
JOIN AvgSalByDept
ON d.department_id = AvgSalByDept.department_id
AND d.department_id = 10

UNION ALL

SELECT d.department_name, AvgSalByDept.avgsalary
FROM departments d
JOIN AvgSalByDept
ON d.department_id = AvgSalByDept.department_id
AND d.department_id = 20
;
--중복된 코드 내용을 쓰는 것보다 WITH절을 쓰는게 더 좋다.

WITH RecursiveCTE (id, name, manager_id, depth) AS (
    SELECT employee_id, last_name, manager_id, 0
    FROM employees
    WHERE manager_id IS NULL -- 최상위 매니저
    UNION ALL
    SELECT e.employee_id, e.last_name, e.manager_id, rc.depth + 1
    FROM employees e
    INNER JOIN RecursiveCTE rc on e.manager_id = rc.id
)
SELECT id, name, manager_id, depth
FROM RecursiveCTE ;

-- 먼저 CTE에 KING이 들어가고 manager_id가 KING(100)인 사원들이 depth +1 되어 들어가고
-- 재귀적으로 반복되는 구조임.




