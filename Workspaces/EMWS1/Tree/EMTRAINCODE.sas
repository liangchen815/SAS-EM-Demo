*------------------------------------------------------------*;
* Tree: Create decision matrix;
*------------------------------------------------------------*;
data WORK.Technology(label="Technology");
  length   Technology                       $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           DECISION3                            8
           DECISION4                            8
           DECISION5                            8
           DECISION6                            8
           DECISION7                            8
           DECISION8                            8
           DECISION9                            8
           DECISION10                           8
           DECISION11                           8
           DECISION12                           8
           DECISION13                           8
           DECISION14                           8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="VIDEO-CAPABLE AUTOMOBILE"
           DECISION2="VHS"
           DECISION3="SURROUND SOUND"
           DECISION4="REAR PROJECTION TV"
           DECISION5="PVR(TIVO ULTIMATETV REPLAYTV)"
           DECISION6="LASERDISK"
           DECISION7="HDTV"
           DECISION8="FRONT PROJECTION TV"
           DECISION9="FLAT SCREEN TV"
           DECISION10="DIGITAL SATELLITE"
           DECISION11="DVD"
           DECISION12="CONSOLE GAME SYSTEM(E.G. XBOX PS"
           DECISION13="BETAMAX"
           DECISION14="ANALOG SATELLITE"
           ;
Technology="VIDEO-CAPABLE AUTOMOBILE"; COUNT=19; DATAPRIOR=0.00858175248419; TRAINPRIOR=0.00858175248419; DECPRIOR=.; DECISION1=1; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0;
DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="VHS"; COUNT=533; DATAPRIOR=0.24074074074074; TRAINPRIOR=0.24074074074074; DECPRIOR=.; DECISION1=0; DECISION2=1; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="SURROUND SOUND"; COUNT=282; DATAPRIOR=0.12737127371273; TRAINPRIOR=0.12737127371273; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=1; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="REAR PROJECTION TV"; COUNT=66; DATAPRIOR=0.02981029810298; TRAINPRIOR=0.02981029810298; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=1; DECISION5=0; DECISION6=0;
DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="PVR(TIVO ULTIMATETV REPLAYTV)"; COUNT=76; DATAPRIOR=0.03432700993676; TRAINPRIOR=0.03432700993676; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=1;
DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="LASERDISK"; COUNT=24; DATAPRIOR=0.01084010840108; TRAINPRIOR=0.01084010840108; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=1; DECISION7=0;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="HDTV"; COUNT=70; DATAPRIOR=0.03161698283649; TRAINPRIOR=0.03161698283649; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=1;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="FRONT PROJECTION TV"; COUNT=27; DATAPRIOR=0.01219512195121; TRAINPRIOR=0.01219512195121; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0;
DECISION7=0; DECISION8=1; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="FLAT SCREEN TV"; COUNT=105; DATAPRIOR=0.04742547425474; TRAINPRIOR=0.04742547425474; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0;
DECISION8=0; DECISION9=1; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="DIGITAL SATELLITE"; COUNT=129; DATAPRIOR=0.05826558265582; TRAINPRIOR=0.05826558265582; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0;
DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=1; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="DVD"; COUNT=539; DATAPRIOR=0.24345076784101; TRAINPRIOR=0.24345076784101; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=1; DECISION12=0; DECISION13=0; DECISION14=0;
output;
Technology="CONSOLE GAME SYSTEM(E.G. XBOX PS"; COUNT=322; DATAPRIOR=0.14543812104787; TRAINPRIOR=0.14543812104787; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0;
DECISION6=0; DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=1; DECISION13=0; DECISION14=0;
output;
Technology="BETAMAX"; COUNT=11; DATAPRIOR=0.00496838301716; TRAINPRIOR=0.00496838301716; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0; DECISION7=0;
DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=1; DECISION14=0;
output;
Technology="ANALOG SATELLITE"; COUNT=11; DATAPRIOR=0.00496838301716; TRAINPRIOR=0.00496838301716; DECPRIOR=.; DECISION1=0; DECISION2=0; DECISION3=0; DECISION4=0; DECISION5=0; DECISION6=0;
DECISION7=0; DECISION8=0; DECISION9=0; DECISION10=0; DECISION11=0; DECISION12=0; DECISION13=0; DECISION14=1;
output;
;
run;
proc datasets lib=work nolist;
modify Technology(type=PROFIT label=Technology);
label DECISION1= 'VIDEO-CAPABLE AUTOMOBILE';
label DECISION2= 'VHS';
label DECISION3= 'SURROUND SOUND';
label DECISION4= 'REAR PROJECTION TV';
label DECISION5= 'PVR(TIVO ULTIMATETV REPLAYTV)';
label DECISION6= 'LASERDISK';
label DECISION7= 'HDTV';
label DECISION8= 'FRONT PROJECTION TV';
label DECISION9= 'FLAT SCREEN TV';
label DECISION10= 'DIGITAL SATELLITE';
label DECISION11= 'DVD';
label DECISION12= 'CONSOLE GAME SYSTEM(E.G. XBOX PS';
label DECISION13= 'BETAMAX';
label DECISION14= 'ANALOG SATELLITE';
run;
quit;
*------------------------------------------------------------* ;
* Tree: Tree Variables Macro ;
*------------------------------------------------------------* ;
%macro EM_TREEVARS;
    Actor Age CustomerID Director Education_Level Gender Home_Ownership
   Internet_Connection Marital_Status Movie Movie_Selector Num_Bathrooms
   Num_Bedrooms Num_Cars Num_Children Num_TVs PPV_Freq Prerec_Buying_Freq
   Prerec_Format Prerec_Renting_Freq Prerec_Viewing_Freq TV_Movie_Freq TV_Signal
   Theater_Freq
%mend EM_TREEVARS;
*------------------------------------------------------------* ;
* Tree: Tree Targets Macro ;
*------------------------------------------------------------* ;
%macro EM_TREETARGETS;
    Technology
%mend EM_TREETARGETS;
data EMWS1.EM_Tree / view=EMWS1.EM_Tree;
set EMWS1.Part_TRAIN(keep=%EM_TREEVARS %EM_TREETARGETS);
run;
*------------------------------------------------------------* ;
* Tree: 区间型输入 Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    Age CustomerID Num_Bathrooms Num_Bedrooms Num_Cars Num_Children Num_TVs
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Tree: 二值型和列名型输入 Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;
    Actor Director Education_Level Gender Home_Ownership Internet_Connection
   Marital_Status Movie Movie_Selector PPV_Freq Prerec_Buying_Freq Prerec_Format
   Prerec_Renting_Freq Prerec_Viewing_Freq TV_Movie_Freq TV_Signal Theater_Freq
%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Tree: 序数输入 Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Tree: 运行 ARBOR 过程;
*------------------------------------------------------------*;
proc arbor data=EMWS1.EM_Tree
Leafsize=5
Mincatsize = 5
Maxbranch=2
Maxdepth=6
alpha = 0.2
Padjust=
CHAIDBEFORE
DEPTH
MAXRULES=5
MAXSURRS=0
Missing=USEINSEARCH
Exhaustive=5000
event='VIDEO-CAPABLE AUTOMOBILE'
;
;
input %INTINPUTS
/ level = interval;
input %NOMINPUTS
/ level=nominal;
target Technology / level=NOMINAL
Criterion=PROBCHISQ
;
;
Performance DISK
NodeSize=20000
;
Assess
Validata=EMWS1.Part_VALIDATE
measure=MISC
;
SUBTREE BEST
;
MAKEMACRO NLEAVES=nleaves;
save
MODEL=EMWS1.Tree_EMTREE
SEQUENCE=EMWS1.Tree_OUTSEQ
IMPORTANCE=EMWS1.Tree_OUTIMPORT
NODESTAT=EMWS1.Tree_OUTNODES
SUMMARY=EMWS1.Tree_OUTSUMMARY
STATSBYNODE=EMWS1.Tree_OUTSTATS
Topology=EMWS1.Tree_OUTTOPOLOGY
Pathlistnonmissing = EMWS1.Tree_OUTPATH
Rules = EMWS1.Tree_OUTRULES
;
code file="E:\SASWorkSpace\MovieEM\Workspaces\EMWS1\Tree\EMPUBLISHSCORE.sas"
group=Tree
;
code file="E:\SASWorkSpace\MovieEM\Workspaces\EMWS1\Tree\EMFLOWSCORE.sas"
group=Tree
residual
;
score data=EMWS1.EM_Tree out=_NULL_
outfit=WORK.FIT1
role=TRAIN
;
score data=EMWS1.Part_VALIDATE out=_NULL_
outfit=WORK.FIT2
role=VALID
;
run;
quit;
%put &nleaves;
data EMWS1.Tree_OUTFIT;
merge WORK.FIT1 WORK.FIT2;
run;
data EMWS1.Tree_OUTIMPORT;
set EMWS1.Tree_OUTIMPORT;
label NAME = "%sysfunc(sasmsg(sashelp.dmine, meta_name_vlabel, noquote))" LABEL = "%sysfunc(sasmsg(sashelp.dmine, meta_label_vlabel, noquote))" NRULES = "%sysfunc(sasmsg(sashelp.dmine, rpt_nrules_vlabel, noquote))" IMPORTANCE =
   "%sysfunc(sasmsg(sashelp.dmine, rpt_importance_vlabel, noquote))" NSURROGATES = "%sysfunc(sasmsg(sashelp.dmine, rpt_nsurrogates_vlabel, noquote))"
VIMPORTANCE = "%sysfunc(sasmsg(sashelp.dmine, rpt_vimportance_vlabel, noquote))" RATIO = "%sysfunc(sasmsg(sashelp.dmine, rpt_ratio_vlabel, noquote))"
;
run;
