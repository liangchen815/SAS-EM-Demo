*------------------------------------------------------------*;
* Merge: Score Code of path 1;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids;
*------------------------------------------------------------*;
data em_Merge_path1;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 2;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids2;
*------------------------------------------------------------*;
data em_Merge_path2;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 3;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids3;
*------------------------------------------------------------*;
data em_Merge_path3;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 4;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids4;
*------------------------------------------------------------*;
data em_Merge_path4;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 5;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids5;
*------------------------------------------------------------*;
data em_Merge_path5;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 6;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids6;
*------------------------------------------------------------*;
data em_Merge_path6;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 7;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids7;
*------------------------------------------------------------*;
data em_Merge_path7;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Score Code of path 8;
*------------------------------------------------------------*;
data &em_score_output;
set &em_score_output;
*------------------------------------------------------------*;
* TOOL: Input Data Source;
* TYPE: SAMPLE;
* NODE: Ids8;
*------------------------------------------------------------*;
data em_Merge_path8;
set &em_score_output;
run;
*------------------------------------------------------------*;
* Merge: Merging 8 Paths;
*------------------------------------------------------------*;
data &em_score_output;
merge
em_Merge_path1
em_Merge_path2
em_Merge_path3
em_Merge_path4
em_Merge_path5
em_Merge_path6
em_Merge_path7
em_Merge_path8
;
run;
proc datasets lib=WORK nolist;
delete
em_Merge_path1
em_Merge_path2
em_Merge_path3
em_Merge_path4
em_Merge_path5
em_Merge_path6
em_Merge_path7
em_Merge_path8
;
run;
quit;
