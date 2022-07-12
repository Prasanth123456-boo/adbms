create table emp5(empno int primary key,ename varchar(20),deptno number not null);
select * from emp5;

DECLARE
VENO EMP5.EMPNO%TYPE:=:empno;
VENAME EMP5.ENAME%TYPE;
VDEPTNO EMP5.DEPTNO%TYPE;
BEGIN
SELECT EMPNO,ENAME,DEPTNO INTO VENO,VENAME,VDEPTNO FROM EMP5 WHERE EMPNO=VENO;
DBMS_OUTPUT.PUT_LINE('DEPTNO IS:-> '||VDEPTNO);
END


DECLARE
VENO EMP5.EMPNO%TYPE:=:empno;
VENAME EMP5.ENAME%TYPE;
VDEPTNO EMP5.DEPTNO%TYPE;
BEGIN
SELECT EMPNO,ENAME,DEPTNO INTO VENO,VENAME,VDEPTNO FROM EMP5 WHERE EMPNO=VENO;
DBMS_OUTPUT.PUT_LINE('EMPTNO IS:-> '||VENO);
DBMS_OUTPUT.PUT_LINE('ENAME IS:-> '||VENAME);
DBMS_OUTPUT.PUT_LINE('DEPTNO IS:-> '||VDEPTNO);
EXCEPTION
WHEN NO_DATA_FOUND THEN 
DBMS_OUTPUT.PUT_LINE('NO RECORD FOUND-->  ');
END
