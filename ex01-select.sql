/*
���ϸ� : ex01-select.sql

SQL (Structured Query Language) - ������ ���� ���
    ������ ������ ���̽� �ý��ۿ��� �ڷḦ ���� �� ó���ϱ� ���� ����� ���
    
SELECT ��
    �����ͺ��̽����� ���� �˻� ��ɾ�
*/

--���� �ּ�
SELECT *
FROM departments;

--Ư�� �� ���� (�������� projection)
SELECT department_id, location_id
FROM departments;

/*
�����
    ��������ڸ� ����Ͽ� ����/��¥ ������ ǥ���� �ۼ�
    +���ϱ�
    -����
    *���ϱ�
    /������
    
*/

--��������� ���
SELECT LAST_NAME, SALARY, SALARY+300
FROM employees;

/*
������ �켱����
    ���ϱ�� ������� ���ϱ� ���⺸�� ���� ����
*/

SELECT LAST_NAME, SALARY, 12*SALARY+100
FROM employees;

SELECT LAST_NAME, SALARY, 12*(SALARY+100)
FROM employees;

/*
������� Null ��
    null ���� �����ϴ� ������� null�� ���    
*/
SELECT LAST_NAME, 12*SALARY*COMMISSION_PCT, SALARY, COMMISSION_PCT
FROM employees;

/*
�� alias ���� - ����
    �� �Ӹ����� �̸��� �ٲߴϴ�.
    �� �̸� �ٷ� �ڿ� ���ɴϴ�. (�� �̸��� alias ���̿� ���� ������ as Ű���尡 �� �� �ֽ��ϴ�.)
    �����̳� Ư�� ���ڸ� �����ϰų� ��ҹ��ڸ� �����ϴ� ��� ū ����ǥ�� �ʿ��մϴ�.
*/    

SELECT last_name as name, commission_pct comm, salary * 10 as �޿�10��
FROM employees;

SELECT last_name "Name", salary*12 "Annual Salary"
FROM employees;

/*
���� ������
    ���̳� ���ڿ��� �ٸ� ���� �����մϴ�.
    �� ���� ���μ�(||)
    ��� ���� ���� ǥ������ �ۼ� �մϴ�.
*/
SELECT last_name||job_id as "Employees", last_name, job_id
FROM employees;

/*
���ͷ� ���ڿ�
    ���ͷ��� SELECT ���� ���Ե� ����, ���� �Ǵ� ��¥�Դϴ�.
    ��¥ �� ���� ���ͷ� ���� ���� ����ǥ�� ����� �մϴ�.
    �� ���ڿ��� ��ȯ�Ǵ� �� �࿡ �ѹ� ��µ˴ϴ�.
    
*/    
SELECT last_name || ' is a ' || job_id as "Employee Details"
FROM employees;

/*
��ü �ο�(q) ������
    �ڽ��� ����ǥ �����ڸ� �����մϴ�.
    �����ڸ� ���Ƿ� �����մϴ�.
    ������ �� ��뼺�� �����մϴ�.
    ���ڿ� �ȿ� Ȧ����ǥ �� � Ư�����ڰ� �־ ����� �����ϴ�.
*/
SELECT department_name || q'[ Department's Manager Id: ]' || manager_id
AS "Department and Manager"
FROM departments;

/*
�ߺ���
    �⺻������ Query ������� �ߺ� ���� ������ ��� ���� ǥ�õ˴ϴ�.
    
Distinct
    ������� �ߺ��� ����
*/

SELEcT department_id 
FROM employees;

--�ߺ� ����
SELECT DISTINCT department_id
FROM employees;

/*
���̺� ���� ǥ��
    DESCRIBE ����� ����Ͽ� ���̺� ������ ǥ���մϴ�.
*/
DESCRIBE employees;
DESC employees;



