

length _FILTERFMT1  $200;
drop _FILTERFMT1 ;
_FILTERFMT1= put(Actor,$80.0);
length _FILTERNORM1  $32;
drop _FILTERNORM1 ;
%dmnormcp(_FILTERFMT1,_FILTERNORM1);


length _FILTERFMT2  $200;
drop _FILTERFMT2 ;
_FILTERFMT2= put(Director,$80.0);
length _FILTERNORM2  $32;
drop _FILTERNORM2 ;
%dmnormcp(_FILTERFMT2,_FILTERNORM2);


length _FILTERFMT3  $200;
drop _FILTERFMT3 ;
_FILTERFMT3= put(Education_Level,$50.0);
length _FILTERNORM3  $32;
drop _FILTERNORM3 ;
%dmnormcp(_FILTERFMT3,_FILTERNORM3);


length _FILTERFMT4  $200;
drop _FILTERFMT4 ;
_FILTERFMT4= put(Gender,$20.0);
length _FILTERNORM4  $32;
drop _FILTERNORM4 ;
%dmnormcp(_FILTERFMT4,_FILTERNORM4);


length _FILTERFMT5  $200;
drop _FILTERFMT5 ;
_FILTERFMT5= put(Home_Ownership,$10.0);
length _FILTERNORM5  $32;
drop _FILTERNORM5 ;
%dmnormcp(_FILTERFMT5,_FILTERNORM5);


length _FILTERFMT6  $200;
drop _FILTERFMT6 ;
_FILTERFMT6= put(Internet_Connection,$50.0);
length _FILTERNORM6  $32;
drop _FILTERNORM6 ;
%dmnormcp(_FILTERFMT6,_FILTERNORM6);


length _FILTERFMT7  $200;
drop _FILTERFMT7 ;
_FILTERFMT7= put(Marital_Status,$30.0);
length _FILTERNORM7  $32;
drop _FILTERNORM7 ;
%dmnormcp(_FILTERFMT7,_FILTERNORM7);


length _FILTERFMT8  $200;
drop _FILTERFMT8 ;
_FILTERFMT8= put(Movie,$200.0);
length _FILTERNORM8  $32;
drop _FILTERNORM8 ;
%dmnormcp(_FILTERFMT8,_FILTERNORM8);


length _FILTERFMT9  $200;
drop _FILTERFMT9 ;
_FILTERFMT9= put(Movie_Selector,$30.0);
length _FILTERNORM9  $32;
drop _FILTERNORM9 ;
%dmnormcp(_FILTERFMT9,_FILTERNORM9);


length _FILTERFMT10  $200;
drop _FILTERFMT10 ;
_FILTERFMT10= put(PPV_Freq,$20.0);
length _FILTERNORM10  $32;
drop _FILTERNORM10 ;
%dmnormcp(_FILTERFMT10,_FILTERNORM10);


length _FILTERFMT11  $200;
drop _FILTERFMT11 ;
_FILTERFMT11= put(Prerec_Buying_Freq,$20.0);
length _FILTERNORM11  $32;
drop _FILTERNORM11 ;
%dmnormcp(_FILTERFMT11,_FILTERNORM11);


length _FILTERFMT12  $200;
drop _FILTERFMT12 ;
_FILTERFMT12= put(Prerec_Format,$50.0);
length _FILTERNORM12  $32;
drop _FILTERNORM12 ;
%dmnormcp(_FILTERFMT12,_FILTERNORM12);


length _FILTERFMT13  $200;
drop _FILTERFMT13 ;
_FILTERFMT13= put(Prerec_Renting_Freq,$20.0);
length _FILTERNORM13  $32;
drop _FILTERNORM13 ;
%dmnormcp(_FILTERFMT13,_FILTERNORM13);


length _FILTERFMT14  $200;
drop _FILTERFMT14 ;
_FILTERFMT14= put(Prerec_Viewing_Freq,$20.0);
length _FILTERNORM14  $32;
drop _FILTERNORM14 ;
%dmnormcp(_FILTERFMT14,_FILTERNORM14);


length _FILTERFMT15  $200;
drop _FILTERFMT15 ;
_FILTERFMT15= put(TV_Movie_Freq,$20.0);
length _FILTERNORM15  $32;
drop _FILTERNORM15 ;
%dmnormcp(_FILTERFMT15,_FILTERNORM15);


length _FILTERFMT16  $200;
drop _FILTERFMT16 ;
_FILTERFMT16= put(TV_Signal,$50.0);
length _FILTERNORM16  $32;
drop _FILTERNORM16 ;
%dmnormcp(_FILTERFMT16,_FILTERNORM16);


length _FILTERFMT17  $200;
drop _FILTERFMT17 ;
_FILTERFMT17= put(Theater_Freq,$20.0);
length _FILTERNORM17  $32;
drop _FILTERNORM17 ;
%dmnormcp(_FILTERFMT17,_FILTERNORM17);
if
_FILTERNORM1 not in ( ' ')
 and
_FILTERNORM2 not in ( ' ')
 and
_FILTERNORM3 not in ( ' ' , 'GRADE SCHOOL' , 'TRADE SCHOOL')
 and
_FILTERNORM4 not in ( ' ')
 and
_FILTERNORM5 not in ( ' ')
 and
_FILTERNORM6 not in ( ' ')
 and
_FILTERNORM7 not in ( ' ' , 'SEPARATED')
 and
_FILTERNORM8 not in ( ' ')
 and
_FILTERNORM9 not in ( ' ')
 and
_FILTERNORM10 not in ( ' ' , 'DAILY')
 and
_FILTERNORM11 not in ( ' ' , 'DAILY')
 and
_FILTERNORM12 not in ( ' ' , 'BETAMAX' , 'LASERDISK' , 'OTHER' , 'VIDEO CD')
 and
_FILTERNORM13 not in ( ' ' , 'DAILY')
 and
_FILTERNORM14 not in ( ' ' , 'NEVER')
 and
_FILTERNORM15 not in ( ' ')
 and
_FILTERNORM16 not in ( ' ' , 'ANALOG SATELLITE')
 and
_FILTERNORM17 not in ( ' ' , 'DAILY')
and
( Age ne . and (11.437824077<=Age) and (Age<=54.816503905))
and ( CustomerID ne . and (857712.44593<=CustomerID) and (CustomerID<=940457.80909))
and ( Num_Bathrooms ne . and (-0.361357994<=Num_Bathrooms) and (Num_Bathrooms<=4.5584085118))
and ( Num_Bedrooms ne . and (-0.642585361<=Num_Bedrooms) and (Num_Bedrooms<=6.4122747243))
and ( Num_Cars ne . and (-0.740181305<=Num_Cars) and (Num_Cars<=4.0944921921))
and ( Num_Children ne . and (-2.536262826<=Num_Children) and (Num_Children<=4.1492688832))
and ( Num_TVs ne . and (-1.584377079<=Num_TVs) and (Num_TVs<=5.7630951089))
then do;
if M_FILTER eq . then M_FILTER = 0;
else M_FILTER = M_FILTER + 0;
end;
else M_FILTER = 1;
label M_FILTER = 'Filtered Indicator';
