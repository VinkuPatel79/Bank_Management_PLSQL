
CREATE OR REPLACE TRIGGER deposite_balance
AFTER INSERT ON TRANSACTION 
FOR EACH ROW 
WHEN (new.ACTION = 'deposite')

DECLARE 
		a_no NUMBER(10);
		balancee NUMBER(35);
		t_type VARCHAR2(20);

BEGIN 
			a_no := :NEW.ACCOUNTNO;
			balancee := :NEW.AMOUNT;
			t_type := :NEW.ACTION;
			DBMS_OUTPUT.PUT_LINE('customer ACCOUNT NO : '|| a_no);
			DBMS_OUTPUT.PUT_LINE('customer AMOUNT FOR DEPOSIT : '|| balancee);
			DBMS_OUTPUT.PUT_LINE('customer TYPE : '|| t_type);

			UPDATE ACCOUNT SET BALANCE=BALANCE+balancee WHERE  a_no=ACCOUNTNO;	
			 DBMS_OUTPUT.PUT_LINE('          **customer Balance DEPOSITED**    ');
			 
			  get_amount(a_no);		
END;
/