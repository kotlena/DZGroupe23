--SQL HomeWork 3. Joins
--����� ���� ��� ��������� ���� ������� � �� SQL_DDL, �� ���� �� ��������� ����� �������� �������  SQL HomeWork 3. Joins

--����������� � 
--Host: 159.69.151.133
--Port: 5056
--DB: ����������� �� ������� ��������
--User: ����������� �� ������� ��������
--Pass: 123
 

--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select e.employee_name, s.monthly_salary 
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id
 
--2. ������� ���� ���������� � ������� �� ������ 2000.

select e.employee_name, s.monthly_salary 
from employees e 
join employee_salary es 
on e.id = es.employee_id 
join salary s
on es.salary_id = s.id
where s.monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
 
select employee_name, salary_id 
from employee_salary es
left join employees e
on e.id = es.employee_id 
where employee_name is null;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, monthly_salary 
from employee_salary es
full join employees e on e.id = employee_id 
full join salary s on salary_id = s.id 
where monthly_salary < 2000 and employee_name is null;

--5. ����� ���� ���������� ���� �� ��������� ��.

select e.employee_name, es.salary_id
from employees e
full join employee_salary es 
on e.id=es.employee_id
where es.salary_id is null;

--6. ������� ���� ���������� � ���������� �� ���������.

select e.employee_name, r.role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id;

--7. ������� ����� � ��������� ������ Java �������������.

select employee_name, role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
where role_name like '%Java %';

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
where role_name like '%QA engineer%';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
where role_name like '%Manual QA engineer%';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name
from employees e
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
where role_name like '%Automation QA engineer%';


--12. ������� ����� � �������� Junior ������������

select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id=s.id
where role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������

select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id=s.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������

select employee_name, monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id=s.id
where role_name like '%Senior%';

--15. ������� �������� Java �������������

select monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id=s.id
where role_name like '%Java %';

--16. ������� �������� Python �������������

select monthly_salary, role_name
from employees e 
join roles_employee re 
on e.id=re.employee_id
join roles r
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id=s.id
where role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, monthly_salary, role_name
from employees e 
full join roles_employee re 
on e.id=re.employee_id
full join roles r
on re.role_id=r.id
full join employee_salary es 
on e.id=es.employee_id 
full join salary s 
on es.salary_id=s.id
where role_name like 'Junior Python developer';

--18. ������� ����� � �������� Middle JS �������������

select employee_name, monthly_salary, role_name
from employees e 
full join roles_employee re 
on e.id=re.employee_id
full join roles r
on re.role_id=r.id
full join employee_salary es 
on e.id=es.employee_id 
full join salary s 
on es.salary_id=s.id
where role_name like 'Middle JavaScript developer';

--19. ������� ����� � �������� Senior Java �������������

select employee_name, monthly_salary, role_name
from employees e 
full join roles_employee re 
on e.id=re.employee_id
full join roles r
on re.role_id=r.id
full join employee_salary es 
on e.id=es.employee_id 
full join salary s 
on es.salary_id=s.id
where role_name like 'Senior Java developer';

--20. ������� �������� Junior QA ���������

select role_name, monthly_salary
 from employees e 
 join roles_employee re 
 on e.id = employee_id
 join roles r 
 on re.role_id = r.id 
 join employee_salary es
 on e.id = es.employee_id
 join salary s
 on es.salary_id = s.id
 where role_name in ('Junior Manual QA engineer', 'Junior Automation QA engineer');

--21. ������� ������� �������� ���� Junior ������������

select avg (s.monthly_salary) as count_middle
from salary s 
left join employee_salary es 
on s.id=es.salary_id 
left join employees e 
on es.employee_id=e.id 
left join roles_employee re 
on re.employee_id=e.id 
left join roles r 
on re.role_id=r.id
where role_name like '%Junior%';

--22. ������� ����� ������� JS �������������

 select sum(s.monthly_salary) as sum_salary_JS_developers 
 from salary s
 left join employee_salary es 
 on s.id = es.salary_id
 left join employees e 
 on es.employee_id = e.id 
 left join roles_employee re 
 on e.id = re.employee_id 
 left join roles r 
 on re.role_id = r.id 
 where r.role_name like '%JavaScript%';

-- 23. ������� ����������� �� QA ��������� min

select min (s.monthly_salary) as min_sal_qa
from salary s 
left join employee_salary es 
on s.id=es.salary_id 
left join employees e 
on es.employee_id=e.id 
left join roles_employee re 
on re.employee_id=e.id 
left join roles r 
on re.role_id=r.id
where role_name like '%QA%';

--24. ������� ������������ �� QA ��������� max

select max (s.monthly_salary) as max_sal_qa
from salary s 
left join employee_salary es 
on s.id=es.salary_id 
left join employees e 
on es.employee_id=e.id 
left join roles_employee re 
on re.employee_id=e.id 
left join roles r 
on re.role_id=r.id
where role_name like '%QA%';


--25. ������� ���������� QA ��������� 
 select count (role_name) as count_QAengineer
 from roles r
 join roles_employee re 
 on r.id = role_id
 where role_name like '%QA%';

--  26. ������� ���������� Middle ������������.

select count (role_name) as count_middle
 from roles r
 join roles_employee re 
 on r.id = role_id
 where role_name like '%Middle%';

--27. ������� ���������� �������������

select count (role_name) as count_developers
 from roles r
 join roles_employee re 
 on r.id = role_id
 where role_name like '%developer%';

-- 28. ������� ���� (�����) �������� �������������.

select sum(s.monthly_salary) as sum_salary_developers
 from salary s
 left join employee_salary es 
 on s.id = es.salary_id
 left join employees e 
 on es.employee_id = e.id 
 left join roles_employee re 
 on e.id = re.employee_id 
 left join roles r 
 on re.role_id = r.id 
 where r.role_name like '%developer%'; 

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id = s.id 
order by monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id = s.id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

select employee_name, role_name, monthly_salary
from employees e 
join roles_employee re 
on e.id=re.employee_id 
join roles r 
on re.role_id=r.id
join employee_salary es 
on e.id=es.employee_id 
join salary s 
on es.salary_id = s.id 
where monthly_salary < 2300
order by monthly_salary;

--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

 select employee_name, role_name, monthly_salary
 from employees e
 join roles_employee re
 on e.id = re.employee_id 
 join roles r 
 on re.role_id = r.id 
 join employee_salary es 
 on e.id = es.employee_id 
 join salary s 
 on s.id = es.salary_id 
 where monthly_salary in (1100, 1500, 2000)
 order by s.monthly_salary;


