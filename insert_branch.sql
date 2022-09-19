CREATE OR REPLACE PROCEDURE INSERT_branch
(

bname  in branch.branch_name%type,
bcity in branch.branch_city%type,
badd in branch.branch_address%type
)	

 iS
 BEGIN
   insert into  branch(branch_name,branch_city,branch_address) values (bname,bcity,badd);
END ;
/
 