*------------------------------------------------------------*;
* ����Դ����;
*------------------------------------------------------------*;
libname EMWS1 "E:\SASWorkSpace\MovieEM\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids6: ���ڴ�����DATA������;
*------------------------------------------------------------*;
data EMWS1.Ids6_DATA (label="")
/ view=EMWS1.Ids6_DATA
;
set DATA.HOBBIES;
run;