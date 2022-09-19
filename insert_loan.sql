CREATE OR REPLACE PROCEDURE INSERT_LOAN
(
lid  in LOAN.LOAN_id%type,
typee in loan.loan_type%type,
amt  in loan.amount%type,
lcid in loan.cust_id%type
)	

 iS
 BEGIN
   insert into loan(lOAN_id,LOAN_TYPE,amount,cust_id) values(lid,typee,amt,lcid);

END ;
/
 