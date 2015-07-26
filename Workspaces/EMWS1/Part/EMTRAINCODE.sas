*------------------------------------------------------------*;
* Part: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS1.Filter_TRAIN noprint;
format
Technology $100.0
;
table
Technology
/out=WORK.Part_FREQ(drop=percent);
run;
proc sort data=WORK.Part_FREQ;
by descending count;
run;
* Part: Retrieving levels that meet minimum requirement;
data WORK.Part_FREQ2(keep = count);
set WORK.Part_FREQ;
where (.01 * 80 * count) >= 3;
run;
*------------------------------------------------------------*;
* Part: Create stratified partitioning;
*------------------------------------------------------------*;
data
EMWS1.Part_TRAIN(label="")
EMWS1.Part_VALIDATE(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
_dataobs_ = _N_;
drop _c00:;
set EMWS1.Filter_TRAIN;
length _Pformat1 $150;
drop _Pformat1;
_Pformat1 = strip(put(Technology, $100.0));
if
_Pformat1 = 'DVD'
then do;
if (675+1-_C000003)*_genvalue_ <= (540 - _C000001) then do;
_C000001 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C000002 + 1;
output EMWS1.Part_VALIDATE;
end;
_C000003+1;
end;
else if
_Pformat1 = 'VHS'
then do;
if (668+1-_C000006)*_genvalue_ <= (534 - _C000004) then do;
_C000004 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C000005 + 1;
output EMWS1.Part_VALIDATE;
end;
_C000006+1;
end;
else if
_Pformat1 = 'Console Game System(e.g. XBOX PS2 etc)'
then do;
if (404+1-_C000009)*_genvalue_ <= (323 - _C000007) then do;
_C000007 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C000008 + 1;
output EMWS1.Part_VALIDATE;
end;
_C000009+1;
end;
else if
_Pformat1 = 'Surround Sound'
then do;
if (353+1-_C0000012)*_genvalue_ <= (282 - _C0000010) then do;
_C0000010 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000011 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000012+1;
end;
else if
_Pformat1 = 'Digital Satellite'
then do;
if (162+1-_C0000015)*_genvalue_ <= (130 - _C0000013) then do;
_C0000013 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000014 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000015+1;
end;
else if
_Pformat1 = 'Flat Screen TV'
then do;
if (132+1-_C0000018)*_genvalue_ <= (106 - _C0000016) then do;
_C0000016 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000017 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000018+1;
end;
else if
_Pformat1 = 'PVR(Tivo UltimateTV ReplayTV)'
then do;
if (96+1-_C0000021)*_genvalue_ <= (77 - _C0000019) then do;
_C0000019 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000020 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000021+1;
end;
else if
_Pformat1 = 'HDTV'
then do;
if (89+1-_C0000024)*_genvalue_ <= (71 - _C0000022) then do;
_C0000022 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000023 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000024+1;
end;
else if
_Pformat1 = 'Rear Projection TV'
then do;
if (83+1-_C0000027)*_genvalue_ <= (66 - _C0000025) then do;
_C0000025 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000026 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000027+1;
end;
else if
_Pformat1 = 'Front Projection TV'
then do;
if (35+1-_C0000030)*_genvalue_ <= (28 - _C0000028) then do;
_C0000028 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000029 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000030+1;
end;
else if
_Pformat1 = 'Laserdisk'
then do;
if (31+1-_C0000033)*_genvalue_ <= (25 - _C0000031) then do;
_C0000031 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000032 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000033+1;
end;
else if
_Pformat1 = 'Video-capable Automobile'
then do;
if (25+1-_C0000036)*_genvalue_ <= (20 - _C0000034) then do;
_C0000034 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000035 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000036+1;
end;
else if
_Pformat1 = 'Analog Satellite'
then do;
if (15+1-_C0000039)*_genvalue_ <= (12 - _C0000037) then do;
_C0000037 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000038 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000039+1;
end;
else if
_Pformat1 = 'Betamax'
then do;
if (14+1-_C0000042)*_genvalue_ <= (11 - _C0000040) then do;
_C0000040 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
_C0000041 + 1;
output EMWS1.Part_VALIDATE;
end;
_C0000042+1;
end;
run;
