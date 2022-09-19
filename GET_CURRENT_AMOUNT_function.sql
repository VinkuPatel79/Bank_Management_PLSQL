create or replace function get_current_amount(acno number) 
return number
 AS
current_amount NUMBER;

BEGIN
	select balance into current_amount  from account where accountno=acno;
	
	return current_amount;
END;
/   


-- HOW EXECUTE FUNCTION IN ORACLE?
---select   get_current_amount(101) from dual;