****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH F_Technology  $  100;
LENGTH I_Technology  $  100;
LENGTH U_Technology  $  100;
LENGTH _WARN_  $    4;

******              LABELS FOR NEW VARIABLES              ******;
LABEL _NODE_  = '�ڵ�' ;
LABEL _LEAF_  = 'Ҷ' ;
LABEL P_TechnologySurround_Sound  = 'Predicted: Technology=Surround Sound' ;
LABEL P_TechnologyConsole_Game_System_  =
   'Predicted: Technology=Console Game System(e.g. XBOX PS2 etc)' ;
LABEL P_TechnologyVideo_capable_Automo  =
   'Predicted: Technology=Video-capable Automobile' ;
LABEL P_TechnologyVHS  = 'Predicted: Technology=VHS' ;
LABEL P_TechnologyFront_Projection_TV  =
   'Predicted: Technology=Front Projection TV' ;
LABEL P_TechnologyLaserdisk  = 'Predicted: Technology=Laserdisk' ;
LABEL P_TechnologyRear_Projection_TV  =
   'Predicted: Technology=Rear Projection TV' ;
LABEL P_TechnologyHDTV  = 'Predicted: Technology=HDTV' ;
LABEL P_TechnologyDVD  = 'Predicted: Technology=DVD' ;
LABEL P_TechnologyPVR_Tivo_UltimateTV  =
   'Predicted: Technology=PVR(Tivo UltimateTV ReplayTV)' ;
LABEL P_TechnologyFlat_Screen_TV  = 'Predicted: Technology=Flat Screen TV' ;
LABEL P_TechnologyDigital_Satellite  =
   'Predicted: Technology=Digital Satellite' ;
LABEL P_TechnologyAnalog_Satellite  =
   'Predicted: Technology=Analog Satellite' ;
LABEL P_TechnologyBetamax  = 'Predicted: Technology=Betamax' ;
LABEL Q_TechnologySurround_Sound  =
   'Unadjusted P: Technology=Surround Sound' ;
LABEL Q_TechnologyConsole_Game_System_  =
   'Unadjusted P: Technology=Console Game System(e.g. XBOX PS2 etc)' ;
LABEL Q_TechnologyVideo_capable_Automo  =
   'Unadjusted P: Technology=Video-capable Automobile' ;
LABEL Q_TechnologyVHS  = 'Unadjusted P: Technology=VHS' ;
LABEL Q_TechnologyFront_Projection_TV  =
   'Unadjusted P: Technology=Front Projection TV' ;
LABEL Q_TechnologyLaserdisk  = 'Unadjusted P: Technology=Laserdisk' ;
LABEL Q_TechnologyRear_Projection_TV  =
   'Unadjusted P: Technology=Rear Projection TV' ;
LABEL Q_TechnologyHDTV  = 'Unadjusted P: Technology=HDTV' ;
LABEL Q_TechnologyDVD  = 'Unadjusted P: Technology=DVD' ;
LABEL Q_TechnologyPVR_Tivo_UltimateTV  =
   'Unadjusted P: Technology=PVR(Tivo UltimateTV ReplayTV)' ;
LABEL Q_TechnologyFlat_Screen_TV  =
   'Unadjusted P: Technology=Flat Screen TV' ;
LABEL Q_TechnologyDigital_Satellite  =
   'Unadjusted P: Technology=Digital Satellite' ;
LABEL Q_TechnologyAnalog_Satellite  =
   'Unadjusted P: Technology=Analog Satellite' ;
LABEL Q_TechnologyBetamax  = 'Unadjusted P: Technology=Betamax' ;
LABEL V_TechnologySurround_Sound  = 'Validated: Technology=Surround Sound' ;
LABEL V_TechnologyConsole_Game_System_  =
   'Validated: Technology=Console Game System(e.g. XBOX PS2 etc)' ;
LABEL V_TechnologyVideo_capable_Automo  =
   'Validated: Technology=Video-capable Automobile' ;
LABEL V_TechnologyVHS  = 'Validated: Technology=VHS' ;
LABEL V_TechnologyFront_Projection_TV  =
   'Validated: Technology=Front Projection TV' ;
LABEL V_TechnologyLaserdisk  = 'Validated: Technology=Laserdisk' ;
LABEL V_TechnologyRear_Projection_TV  =
   'Validated: Technology=Rear Projection TV' ;
LABEL V_TechnologyHDTV  = 'Validated: Technology=HDTV' ;
LABEL V_TechnologyDVD  = 'Validated: Technology=DVD' ;
LABEL V_TechnologyPVR_Tivo_UltimateTV  =
   'Validated: Technology=PVR(Tivo UltimateTV ReplayTV)' ;
LABEL V_TechnologyFlat_Screen_TV  = 'Validated: Technology=Flat Screen TV' ;
LABEL V_TechnologyDigital_Satellite  =
   'Validated: Technology=Digital Satellite' ;
LABEL V_TechnologyAnalog_Satellite  =
   'Validated: Technology=Analog Satellite' ;
LABEL V_TechnologyBetamax  = 'Validated: Technology=Betamax' ;
LABEL R_TechnologySurround_Sound  = 'Residual: Technology=Surround Sound' ;
LABEL R_TechnologyConsole_Game_System_  =
   'Residual: Technology=Console Game System(e.g. XBOX PS2 etc)' ;
LABEL R_TechnologyVideo_capable_Automo  =
   'Residual: Technology=Video-capable Automobile' ;
LABEL R_TechnologyVHS  = 'Residual: Technology=VHS' ;
LABEL R_TechnologyFront_Projection_TV  =
   'Residual: Technology=Front Projection TV' ;
LABEL R_TechnologyLaserdisk  = 'Residual: Technology=Laserdisk' ;
LABEL R_TechnologyRear_Projection_TV  =
   'Residual: Technology=Rear Projection TV' ;
LABEL R_TechnologyHDTV  = 'Residual: Technology=HDTV' ;
LABEL R_TechnologyDVD  = 'Residual: Technology=DVD' ;
LABEL R_TechnologyPVR_Tivo_UltimateTV  =
   'Residual: Technology=PVR(Tivo UltimateTV ReplayTV)' ;
LABEL R_TechnologyFlat_Screen_TV  = 'Residual: Technology=Flat Screen TV' ;
LABEL R_TechnologyDigital_Satellite  =
   'Residual: Technology=Digital Satellite' ;
LABEL R_TechnologyAnalog_Satellite  =
   'Residual: Technology=Analog Satellite' ;
LABEL R_TechnologyBetamax  = 'Residual: Technology=Betamax' ;
LABEL F_Technology  = 'From: Technology' ;
LABEL I_Technology  = 'Into: Technology' ;
LABEL U_Technology  = 'Unnormalized Into: Technology' ;
LABEL _WARN_  = '����' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_100 $    100; DROP _ARBFMT_100;
_ARBFMT_100 = ' '; /* Initialize to avoid warning. */


_ARBFMT_100 = PUT( Technology , $100.);
 %DMNORMCP( _ARBFMT_100, F_Technology );

******             ASSIGN OBSERVATION TO NODE             ******;
_NODE_  =                    1;
_LEAF_  =                    1;
P_TechnologySurround_Sound  =     0.12737127371273;
P_TechnologyConsole_Game_System_  =     0.14543812104787;
P_TechnologyVideo_capable_Automo  =     0.00858175248419;
P_TechnologyVHS  =     0.24074074074074;
P_TechnologyFront_Projection_TV  =     0.01219512195121;
P_TechnologyLaserdisk  =     0.01084010840108;
P_TechnologyRear_Projection_TV  =     0.02981029810298;
P_TechnologyHDTV  =     0.03161698283649;
P_TechnologyDVD  =     0.24345076784101;
P_TechnologyPVR_Tivo_UltimateTV  =     0.03432700993676;
P_TechnologyFlat_Screen_TV  =     0.04742547425474;
P_TechnologyDigital_Satellite  =     0.05826558265582;
P_TechnologyAnalog_Satellite  =     0.00496838301716;
P_TechnologyBetamax  =     0.00496838301716;
Q_TechnologySurround_Sound  =     0.12737127371273;
Q_TechnologyConsole_Game_System_  =     0.14543812104787;
Q_TechnologyVideo_capable_Automo  =     0.00858175248419;
Q_TechnologyVHS  =     0.24074074074074;
Q_TechnologyFront_Projection_TV  =     0.01219512195121;
Q_TechnologyLaserdisk  =     0.01084010840108;
Q_TechnologyRear_Projection_TV  =     0.02981029810298;
Q_TechnologyHDTV  =     0.03161698283649;
Q_TechnologyDVD  =     0.24345076784101;
Q_TechnologyPVR_Tivo_UltimateTV  =     0.03432700993676;
Q_TechnologyFlat_Screen_TV  =     0.04742547425474;
Q_TechnologyDigital_Satellite  =     0.05826558265582;
Q_TechnologyAnalog_Satellite  =     0.00496838301716;
Q_TechnologyBetamax  =     0.00496838301716;
V_TechnologySurround_Sound  =                0.125;
V_TechnologyConsole_Game_System_  =     0.14436619718309;
V_TechnologyVideo_capable_Automo  =     0.01056338028169;
V_TechnologyVHS  =     0.23767605633802;
V_TechnologyFront_Projection_TV  =     0.01408450704225;
V_TechnologyLaserdisk  =     0.01232394366197;
V_TechnologyRear_Projection_TV  =     0.02992957746478;
V_TechnologyHDTV  =     0.03345070422535;
V_TechnologyDVD  =      0.2394366197183;
V_TechnologyPVR_Tivo_UltimateTV  =     0.03521126760563;
V_TechnologyFlat_Screen_TV  =      0.0475352112676;
V_TechnologyDigital_Satellite  =     0.05809859154929;
V_TechnologyAnalog_Satellite  =     0.00704225352112;
V_TechnologyBetamax  =     0.00528169014084;
I_Technology  = 'DVD' ;
U_Technology  = 'DVD' ;

*****  RESIDUALS R_ *************;
IF  F_Technology  NE 'SURROUND SOUND'
AND F_Technology  NE 'CONSOLE GAME SYSTEM(E.G. XBOX PS'
AND F_Technology  NE 'VIDEO-CAPABLE AUTOMOBILE'
AND F_Technology  NE 'VHS'
AND F_Technology  NE 'FRONT PROJECTION TV'
AND F_Technology  NE 'LASERDISK'
AND F_Technology  NE 'REAR PROJECTION TV'
AND F_Technology  NE 'HDTV'
AND F_Technology  NE 'DVD'
AND F_Technology  NE 'PVR(TIVO ULTIMATETV REPLAYTV)'
AND F_Technology  NE 'FLAT SCREEN TV'
AND F_Technology  NE 'DIGITAL SATELLITE'
AND F_Technology  NE 'ANALOG SATELLITE'
AND F_Technology  NE 'BETAMAX'  THEN DO;
        R_TechnologySurround_Sound  = .;
        R_TechnologyConsole_Game_System_  = .;
        R_TechnologyVideo_capable_Automo  = .;
        R_TechnologyVHS  = .;
        R_TechnologyFront_Projection_TV  = .;
        R_TechnologyLaserdisk  = .;
        R_TechnologyRear_Projection_TV  = .;
        R_TechnologyHDTV  = .;
        R_TechnologyDVD  = .;
        R_TechnologyPVR_Tivo_UltimateTV  = .;
        R_TechnologyFlat_Screen_TV  = .;
        R_TechnologyDigital_Satellite  = .;
        R_TechnologyAnalog_Satellite  = .;
        R_TechnologyBetamax  = .;
 END;
 ELSE DO;
       R_TechnologySurround_Sound  =  -P_TechnologySurround_Sound ;
       R_TechnologyConsole_Game_System_  =  -P_TechnologyConsole_Game_System_
         ;
       R_TechnologyVideo_capable_Automo  =  -P_TechnologyVideo_capable_Automo
         ;
       R_TechnologyVHS  =  -P_TechnologyVHS ;
       R_TechnologyFront_Projection_TV  =  -P_TechnologyFront_Projection_TV ;
       R_TechnologyLaserdisk  =  -P_TechnologyLaserdisk ;
       R_TechnologyRear_Projection_TV  =  -P_TechnologyRear_Projection_TV ;
       R_TechnologyHDTV  =  -P_TechnologyHDTV ;
       R_TechnologyDVD  =  -P_TechnologyDVD ;
       R_TechnologyPVR_Tivo_UltimateTV  =  -P_TechnologyPVR_Tivo_UltimateTV ;
       R_TechnologyFlat_Screen_TV  =  -P_TechnologyFlat_Screen_TV ;
       R_TechnologyDigital_Satellite  =  -P_TechnologyDigital_Satellite ;
       R_TechnologyAnalog_Satellite  =  -P_TechnologyAnalog_Satellite ;
       R_TechnologyBetamax  =  -P_TechnologyBetamax ;
       SELECT( F_Technology  );
          WHEN( 'SURROUND SOUND'  ) R_TechnologySurround_Sound  =
        R_TechnologySurround_Sound  +1;
          WHEN( 'CONSOLE GAME SYSTEM(E.G. XBOX PS'  )
        R_TechnologyConsole_Game_System_  = R_TechnologyConsole_Game_System_
          +1;
          WHEN( 'VIDEO-CAPABLE AUTOMOBILE'  ) R_TechnologyVideo_capable_Automo
          = R_TechnologyVideo_capable_Automo  +1;
          WHEN( 'VHS'  ) R_TechnologyVHS  = R_TechnologyVHS  +1;
          WHEN( 'FRONT PROJECTION TV'  ) R_TechnologyFront_Projection_TV  =
        R_TechnologyFront_Projection_TV  +1;
          WHEN( 'LASERDISK'  ) R_TechnologyLaserdisk  = R_TechnologyLaserdisk
          +1;
          WHEN( 'REAR PROJECTION TV'  ) R_TechnologyRear_Projection_TV  =
        R_TechnologyRear_Projection_TV  +1;
          WHEN( 'HDTV'  ) R_TechnologyHDTV  = R_TechnologyHDTV  +1;
          WHEN( 'DVD'  ) R_TechnologyDVD  = R_TechnologyDVD  +1;
          WHEN( 'PVR(TIVO ULTIMATETV REPLAYTV)'  )
        R_TechnologyPVR_Tivo_UltimateTV  = R_TechnologyPVR_Tivo_UltimateTV
          +1;
          WHEN( 'FLAT SCREEN TV'  ) R_TechnologyFlat_Screen_TV  =
        R_TechnologyFlat_Screen_TV  +1;
          WHEN( 'DIGITAL SATELLITE'  ) R_TechnologyDigital_Satellite  =
        R_TechnologyDigital_Satellite  +1;
          WHEN( 'ANALOG SATELLITE'  ) R_TechnologyAnalog_Satellite  =
        R_TechnologyAnalog_Satellite  +1;
          WHEN( 'BETAMAX'  ) R_TechnologyBetamax  = R_TechnologyBetamax  +1;
       END;
 END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
drop _LEAF_;
