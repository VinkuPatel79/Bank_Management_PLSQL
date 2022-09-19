cREATE OR REPLACE PROCEDURE INSERT_employee
(
ename in employee.emp_name%type,
ebname in employee.branch_name%type,
esal in employee.salary%type,
eid in employee.emp_id%type,
post in employee.post%type
)	

 iS
 BEGIN
   insert into employee (emp_name,branch_name,salary,emp_id,post)values(ename,ebname,esal,eid,post);

END ;
/
 