CREATE OR REPLACE PROCEDURE INSERT_transaction
(
tid in transaction.transaction_id%type,
tano in transaction.accountno%type,
datee in varchar2,
aamount in transaction.amount%type,
aaction in transaction.action%type
)	

 iS
 BEGIN
   insert into  transaction (transaction_id,accountno,date_of_transaction,amount,action) values (tid,tano,to_date(datee,'dd-MM-yyyy hh24:mi:ss'),aamount,aaction);
END ;

/
--exec insert_transaction(506,101,'27-8-2022',1000,'deposite');
 