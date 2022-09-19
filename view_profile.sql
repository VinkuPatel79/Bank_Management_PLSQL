create or replace PROCEDURE view_profile( wac_no in number)
AS
    c_name  varchar2(35);
    c_phone varchar2(35);
    c_age number;
    c_add  varchar2(35);
    c_gen  varchar2(35);
    wc_no number;
    atype varchar2(35);
    c_balance  number;
    c_bn varchar2(35);
BEGIN
    select cust_name into c_name from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
    Select cust_phoneno into c_phone from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no; 
    Select cust_age into c_age from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no; 
    Select cust_address into c_add  from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
    Select cust_gender into c_gen  from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
    select typee  into atype  from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
    select  balance into c_balance  from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
    select  branch_name into c_bn  from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
  --select cust_id into wc_no from customer c join account ac on (ac.cust_id=c.cust_id) where ac.accountno=wac_no;
        DBMS_OUTPUT.PUT_LINE('customer NAME : '||c_name);
        DBMS_OUTPUT.PUT_LINE('customer PHONE NUMBER : '||c_phone);
        DBMS_OUTPUT.PUT_LINE('customer AGE : '||c_age);
        DBMS_OUTPUT.PUT_LINE('customer ADDRESS : '||c_add);
        DBMS_OUTPUT.PUT_LINE('customer GENDER : '||c_gen);
        DBMS_OUTPUT.PUT_LINE('customer BALANCE : '||c_balance);
        DBMS_OUTPUT.PUT_LINE('customer BRANCH NAME : '||c_bn);
    --  DBMS_OUTPUT.PUT_LINE('customer ID:'||wc_no);
end;
/

-- -> exec view_profile(101);

 

   