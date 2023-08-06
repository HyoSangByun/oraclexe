/*
���ϸ� : ex07-select-join.sql

JOIN
    SQL���� �� �� �̻��� ���̺��� ���õ� ����� �����ϱ� ���� �����Դϴ�.
*/

/*
Natural Join
    �� ���̺��� ������ ������ �̸��� ��ġ�ϴ� ���� ������� �ڵ�����
    ���̺��� ������ �� �ֽ��ϴ�.
*/

SELECT department_id, department_name,
        location_id, city
FROM departments
NATURAL JOIN locations;

/*
USING ���� ����
    ��������� ������ �����ϰ��� �ϴ� ���� �����ش�.
*/
SELECT employee_id, last_name,
    location_id, department_id
FROM employees JOIN departments
USING (department_id);

/*
ON ���� ����
    ON ���� ����Ͽ� ���� ������ �����մϴ�.
*/
SELECT e.employee_id, e.last_name,
    d.department_id, d.location_id
FROM employees e JOIN departments d
ON (e.department_id = d.department_id);

--�� ������ ���� ������
SELECT e.employee_id, e.last_name,
    d.department_id, d.location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

--ON�� ����Ͽ� 3-WAY ����
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

