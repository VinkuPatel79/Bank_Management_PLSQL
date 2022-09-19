CREATE OR REPLACE PROCEDURE INSERT_customer
(
cid in customer.cust_id%type,
cname in customer.cust_name%type,
cphoneno in customer.cust_phoneno%type,
cage in customer.cust_age%type,
cadd in customer.cust_address%type,
cge in customer.cust_gender%type
)	

 iS
 BEGIN
   insert into  customer(cust_id,cust_name,cust_phoneno,cust_age,cust_address,cust_gender) values(cid,cname,cphoneno,cage,cadd,cage);
END ;

/
 

--HOW EXECUTE PROCEDURE IN ORACLE?
--EXEC PROCEDURE INSERT_customer (1,'NAME',123456789,76,'AHMEDABAD','FEMALE');