/* 
���ϸ� : ex06-function-group.sql

*/

--���� ��(�׷�) �Լ�

--AVG() - ���
--MAX() - �ִ�
--MIN() - �ּҰ�
--SUM() - �հ�
SELECT AVG(salary) AS avg_salary,
        MAX(salary) AS max_salary,
        MIN(salary) AS min_salary,
        SUM(salary) AS total_salary
FROM employees
WHERE job_id LIKE '%REP%';

-- COUNT() �Լ� - null ���� �ƴ� ��� ���� ������ ��ȯ�մϴ�.
SELECT COUNT(*) AS total_employees
FROM employees
WHERE department_id = 50;

SELECT COUNT(commission_pct) AS non_null_commission_count
FROM employees
WHERE department_id = 50;

-- COUNT(DISTINCT expr)�� Ư�� ǥ������ �������� �ߺ��� ������ ���� ���� ��ȯ�մϴ�.
SELECT COUNT(DISTINCT department_id) AS distinct_department_count
FROM employees;

--NVL �Լ��� Ȱ���Ͽ� NULL ���� �ٸ� ������ ��ü�� �� COUNT() �Լ� ���
SELECT AVG(NVL(commission_pct, 0)) AS avg_commission
FROM employees;

/*
GROUP BY
    ���� ���� ������ �÷� �������� �׷�ȭ�Ͽ� ���� �Լ��� �����ϱ� ���� ����
    
HAVING
    GROUP BY�� �Բ� ���Ǹ�, �׷�ȭ�� ����� ������ ������ �� ���ȴ�.
    
    WHERE - �������� ����
    HAVING - �׷��� ����

*/

-- �μ��� ��� �޿��� ���Ѵ�.
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id; -- �׷�ȭ�� �÷��� ����

-- GROUP BY ������ ���� ���� �������� �׷�ȭ�Ѵ�.
SELECT department_id, job_id, SUM(salary) AS total_salary
FROM employees
WHERE department_id > 40
GROUP BY department_id, job_id
ORDER BY department_id;

-- HAVING �� ���

-- �μ��� �ִ� �޿��� 10000���� ū �μ��� ã���ϴ�.
SELECT department_id, MAX(salary) AS max_salary
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 10000
ORDER BY department_id;

-- ������ �� �޿��� 13000���� ū ������ ã���ϴ�.
SELECT job_id, SUM(salary) AS total_salary
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary) > 13000
ORDER BY sum(salary);

-- �׷��Լ� �Լ���ø ����
SELECT MAX(AVG(salary)) AS max_avg_salary
FROM employees
GROUP BY department_id;