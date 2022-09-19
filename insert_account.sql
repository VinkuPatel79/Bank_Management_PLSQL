CREATE OR REPLACE PROCEDURE INSERT_ACCOUNT
(
acid  in account.cust_id%type,
ano   in account.accountno%type,
typee  in account.typee%type,
bal in account.balance%type,
abname in account.branch_name%type
)	

 iS
 BEGIN
   insert into account  (cust_id,accountno,typee,balance,branch_name) values (acid,ano,typee,bal,abname);

END ;
/
 