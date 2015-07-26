if name = '_NODE_' then do;
role = 'SEGMENT';
level = 'NOMINAL';
end;
if upcase(name) = 'AGE' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'CUSTOMERID' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'NUM_BATHROOMS' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'NUM_BEDROOMS' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'NUM_CARS' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'NUM_CHILDREN' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'NUM_TVS' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'ACTOR' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'DIRECTOR' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'EDUCATION_LEVEL' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'GENDER' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'HOME_OWNERSHIP' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'INTERNET_CONNECTION' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'MARITAL_STATUS' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'MOVIE' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'MOVIE_SELECTOR' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'PPV_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'PREREC_BUYING_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'PREREC_FORMAT' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'PREREC_RENTING_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'PREREC_VIEWING_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'TV_MOVIE_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'TV_SIGNAL' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
else
if upcase(name) = 'THEATER_FREQ' then do;
role = 'REJECTED';
comment = "Tree: TREELOWIMPORTANCE";
end;
if upcase(name) = 'Q_TechnologyVideo_capable_Automo' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyVHS' then role = "ASSESS";
if upcase(name) = 'Q_TechnologySurround_Sound' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyRear_Projection_TV' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyPVR_Tivo_UltimateTV' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyLaserdisk' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyHDTV' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyFront_Projection_TV' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyFlat_Screen_TV' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyDigital_Satellite' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyDVD' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyConsole_Game_System_' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyBetamax' then role = "ASSESS";
if upcase(name) = 'Q_TechnologyAnalog_Satellite' then role = "ASSESS";
