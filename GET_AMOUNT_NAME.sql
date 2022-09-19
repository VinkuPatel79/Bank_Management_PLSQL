create or replace procedure get_amount_name(w_acno in number)
is
w_name varchar2(35);
w_balance number;
BEGIN

  select cust_name into w_name from customer c join account ac on (ac.cust_id=c.cust_id) where  ac.accountno=w_acno;
  select balance into w_balance from customer c join account ac on (ac.cust_id=c.cust_id)  where ac.accountno=w_acno;
  DBMS_OUTPUT.PUT_LINE('customer NAME : '|| w_name);
  DBMS_OUTPUT.PUT_LINE('customer BALANCE : '||w_balance);
end;
/


-- >exec get_amount(101);






















































