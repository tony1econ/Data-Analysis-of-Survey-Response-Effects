
////// REGRESSION///////////////////////////////////////////////////////////////////////////


///Dictator game experimental Analysis
putexcel set "C:\Users\anton\OneDrive\Documents\Dictator_Games.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome ProsCostlessSharing ProsCostlessSharTi ProsCostlessSharCC ProsCostlessEnvy ProsCostlessEnvyTi ProsCostlessEnvyCC ProsSharing ProsSharTi ProsSharCC ProsEnvy ProsEnvyTi ProsEnvyCC BehC_Spiteful BehC_Generous BehC_Egalitarian BehC_Selfish  
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = Surveyb4Dg*`x' 
quietly regress `y' xD `x' Surveyb4Dg, robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Dg]/_se[Surveyb4Dg]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Dg]
local SE3 = _se[Surveyb4Dg]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)


quietly regress `y' `x' xD Surveyb4Dg ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Dg sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Dg Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B3rw = `rs'+1
local B2rw = `rs'+2
local B1rw = `rs'+3
local r2rw = `rs'+4
local Frrw = `rs'+5
local RSMErw = `rs'+6
local Nrrw = `rs'+7
local df_mrrw = `rs'+8
local Osigrw =`rs'+9
local ssigrw = `rs'+10
local csigrw = `rs'+11


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"

putexcel B`B3rw'="Survey Response"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Survey and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}



///cognitive control///
putexcel set "C:\Users\anton\OneDrive\Documents\Cognitive_Control.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = Surveyb4Stroop*`x' 
quietly regress `y' xD `x' Surveyb4Stroop, robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)


quietly regress `y' `x' xD Surveyb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B3rw = `rs'+1
local B2rw = `rs'+2
local B1rw = `rs'+3
local r2rw = `rs'+4
local Frrw = `rs'+5
local RSMErw = `rs'+6
local Nrrw = `rs'+7
local df_mrrw = `rs'+8
local Osigrw =`rs'+9
local ssigrw = `rs'+10
local csigrw = `rs'+11


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B3rw'="Survey Response"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Survey Response and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}


///practices, effort and learning///
putexcel set "C:\Users\anton\OneDrive\Documents\Practice_Learning.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome StrPracDiff StrPracPerChg StrPracPDiff StrPracCDiff StrPracADiff StrPaidDiff
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = Surveyb4Stroop*`x' 
quietly regress `y' xD `x' Surveyb4Stroop, robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)


quietly regress `y' `x' xD Surveyb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B3rw = `rs'+1
local B2rw = `rs'+2
local B1rw = `rs'+3
local r2rw = `rs'+4
local Frrw = `rs'+5
local RSMErw = `rs'+6
local Nrrw = `rs'+7
local df_mrrw = `rs'+8
local Osigrw =`rs'+9
local ssigrw = `rs'+10
local csigrw = `rs'+11


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B3rw'="Survey Response"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Survey Response and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}



/////competitive experiment stroop emotuiona/////
putexcel set "C:\Users\anton\OneDrive\Documents\Competitive_Stroop_Experiment.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = StrGroup*`x' 
quietly regress `y' xD `x' StrGroup `c' , robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[StrGroup]/_se[StrGroup]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[StrGroup]
local SE3 = _se[StrGroup]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)


quietly regress `y' `x' xD StrGroup `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD StrGroup `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD StrGroup `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local r2rw = `rs'+5
local Frrw = `rs'+6
local RSMErw = `rs'+7
local Nrrw = `rs'+8
local df_mrrw = `rs'+9
local Osigrw =`rs'+10
local ssigrw = `rs'+11
local csigrw = `rs'+12


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Emotional Treatment"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Emotional Treatment and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}




/////stroop emotuional response/////
putexcel set "C:\Users\anton\OneDrive\Documents\Comptetitive_Stroop_Survey.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = Surveyb4Stroop*`x' 
quietly regress `y' xD `x' Surveyb4Stroop `c' , robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)


quietly regress `y' `x' xD Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local r2rw = `rs'+5
local Frrw = `rs'+6
local RSMErw = `rs'+7
local Nrrw = `rs'+8
local df_mrrw = `rs'+9
local Osigrw =`rs'+10
local ssigrw = `rs'+11
local csigrw = `rs'+12


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Survey Response"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Survey Response and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}






/////experiment stroop emotuiona/////
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Experiment.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull
local controls StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = StrGroup*`x' 
quietly regress `y' xD `x' StrGroup `c' , robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[StrGroup]/_se[StrGroup]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[StrGroup]
local SE3 = _se[StrGroup]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)


quietly regress `y' `x' xD StrGroup `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD StrGroup `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD StrGroup `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local r2rw = `rs'+5
local Frrw = `rs'+6
local RSMErw = `rs'+7
local Nrrw = `rs'+8
local df_mrrw = `rs'+9
local Osigrw =`rs'+10
local ssigrw = `rs'+11
local csigrw = `rs'+12


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Emotional Treatment"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Emotional Treatment and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}



/////stroop emotuional response/////
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Survey.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull
local controls StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = Surveyb4Stroop*`x' 
quietly regress `y' xD `x' Surveyb4Stroop `c' , robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)


quietly regress `y' `x' xD Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local r2rw = `rs'+5
local Frrw = `rs'+6
local RSMErw = `rs'+7
local Nrrw = `rs'+8
local df_mrrw = `rs'+9
local Osigrw =`rs'+10
local ssigrw = `rs'+11
local csigrw = `rs'+12


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Survey Response"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Survey Response and Affected"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control x p<.1"
putexcel `cl'`csigrw'="`csig'"

quietly drop xD
}
}













///////////stroop experiment survey effects and stroop treat//////
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Survey_Experiment.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400 420 440 460 480 500 520 540 560 580 600 620 640 660 680 700 720 740 760 780 800 820 840 860 880 900 920 940 960 980 1000 1020 1040 1060 1080 1100 1120 1140 1160 1180 1200 1220 1240 1260 1280 1300 1320 1340 1360 1380 1400 1420 1440 1460 1480 1500 1520 1540 1560 1580 1600 1620 1640 1660 1680 1700 1720 1740 1760 1780 1800 1820 1840 1860 1880 1900 1920 1940 1960 1980 2000 2020 2040 2060 2080 2100 2120 2140 2160 2180 2200 2220 2240 2260 2280 2300 2320 2340 2360 2380 2400 2420 2440 2460 2480 2500 2520 2540 2560 2580 2600 2620 2640 2660 2680 2700 2720 2740 2760 2780 2800 2820 2840 2860 2880 2900 2920 2940 2960 2980 3000 3020 3040 3060 3080 3100 3120 3140 3160 3180 3200 3220 3240 3260 3280 3300 3320 3340 3360 3380 3400 3420 3440 3460 3480 3500 3520 3540 3560 3580 3600 3620 3640 3660 3680 3700 3720 3740 3760 3780 3800 3820 3840 3860 3880 3900 3920 3940 3960 3980 4000 4020 4040 4060 4080 4100 4120 4140 4160 4180 4200 4220 4240 4260 4280 4300 4320 4340 4360 4380 4400 4420 4440 4460 4480 4500 4520 4540 4560 4580 4600 4620 4640 4660 4680 4700 4720 4740 4760 4780 4800 4820 4840 4860 4880 4900 4920 4940 4960 4980 5000 5020 5040 5060 5080 5100 5120 5140 5160 5180 5200 5220 5240 5260 5280 5300 5320 5340 5360 5380 5400 5420 5440 5460 5480 5500 5520 5540 5560 5580 5600 5620 5640 5660 5680 5700 5720 5740 5760 5780 5800 5820 5840 5860 5880 5900 5920 5940 5960 5980 6000 6020 6040 6060 6080 6100 6120 6140 6160 6180 6200 6220 6240 6260 6280 6300 6320 6340 6360 6380 6400 6420 6440 6460 6480 6500 6520 6540 6560 6580 6600 6620 6640 6660 6680 6700 6720 6740 6760 6780 6800 6820 6840 6860 6880 6900 6920 6940 6960 6980 7000 7020 7040 7060 7080 7100 7120 7140 7160 7180 7200 7220 7240 7260 7280 7300 7320 7340 7360 7380 7400 7420 7440 7460 7480 7500 7520 7540 7560 7580 7600 7620 7640 7660 7680 7700 7720 7740 7760 7780 7800 7820 7840 7860 7880 7900 7920 7940 7960 7980 8000 8020 8040 8060 8080 8100 8120 8140 8160 8180 8200 8220 8240 8260 8280 8300 8320 8340 8360 8380 8400 8420 8440 8460 8480 8500 8520 8540 8560 8580 8600 8620 8640 8660 8680 8700 8720 8740 8760 8780 8800 8820 8840 8860 8880 8900 8920 8940 8960 8980 9000 9020 9040 9060 9080 9100 9120 9140 9160 9180 9200 9220 9240 9260 9280 9300 9320 9340 9360 9380 9400 9420 9440 9460 9480 9500 9520 9540 9560 9580 9600 9620 9640 9660 9680 9700 9720 9740 9760 9780 9800 9820 9840 9860 9880 9900 9920 9940 9960 9980 10000


local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull
local controls  StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu  
local len_outcome : word count `outcome'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = StrGroup*`x'
 quietly generate xS = Surveyb4Stroop*`x'
quietly regress `y' xD xS `x' StrGroup Surveyb4Stroop `c', robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[StrGroup]/_se[StrGroup]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[StrGroup]
local SE3 = _se[StrGroup]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)

local t5 = _b[xS]/_se[xS]
local p5 =2*ttail(e(df_r),abs(`t5'))
local B5 =_b[xS]
local SE5 = _se[xS]
local star5 = ""
if `p5' < 0.01 {
local star5 "***"
}
else if `p5' < 0.05 {
 local star5 "**"
}
else if `p5' < 0.1 {
local star5 "*"
}
local B5r = round(`B5', 0.001)
local SE5r = round(`SE5', 0.001)

local t6 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p6 =2*ttail(e(df_r),abs(`t6'))
local B6 =_b[Surveyb4Stroop]
local SE6 = _se[Surveyb4Stroop]
local star6 = ""
if `p6' < 0.01 {
local star6 "***"
}
else if `p6' < 0.05 {
 local star6 "**"
}
else if `p6' < 0.1 {
local star6 "*"
}
local B6r = round(`B6', 0.001)
local SE6r = round(`SE6', 0.001)

quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
local Ots = _b[xS]/_se[xS]
local Ops =2*ttail(e(df_r),abs(`Ots'))
local OB1s =_b[xS]
local OSEs = _se[xS]
local OFs = e(F)
local Odf_ms = e(df_m)
local Osigs = "-"
if `Ops' < 0.1 {
	local Osigs "Yes"
}
	
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
local sts = _b[xS]/_se[xS]
local sps =2*ttail(e(df_r),abs(`sts'))
local sB1s =_b[xS]
local sSEs = _se[xS]
local sFs = e(F)
local sdf_ms = e(df_m)
local ssigs = "-"
if `sps' < 0.1 {
	local ssigs "Yes"
}
	
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
local cts = _b[xS]/_se[xS]
local cps =2*ttail(e(df_r),abs(`cts'))
local cB1s =_b[xS]
local cSEs = _se[xS]
local cFs = e(F)
local cdf_ms = e(df_m)
local csigs = "-"
if `cps' < 0.1 {
	local csigs "Yes"
}			

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local B5rw = `rs'+5
local B6rw = `rs'+6
local r2rw = `rs'+7
local Frrw = `rs'+8
local RSMErw = `rs'+9
local Nrrw = `rs'+10
local df_mrrw = `rs'+11
local Osigrw =`rs'+12
local ssigrw = `rs'+13
local csigrw = `rs'+14
local Osigrws =`rs'+15
local ssigrws = `rs'+16
local csigrws = `rs'+17


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Emotional Treatment"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Emotional Treatment and Affected"
putexcel B`B5rw'="Survey Response and Affected"
putexcel B`B6rw'="Survey Response"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"
putexcel `cl'`B6rw'=" `B6r'(`SE6r')`star6'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE xD p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE xD p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control xD p<.1"
putexcel `cl'`csigrw'="`csig'"
putexcel B`Osigrw'="Oblast FE xS p<.1"
putexcel `cl'`Osigrws'="`Osigs'"
putexcel B`ssigrw'="Sample FE xS p<.1"
putexcel `cl'`ssigrws'="`ssigs'"
putexcel B`csigrw'="Age Sex Educ Control xS p<.1"
putexcel `cl'`csigrws'="`csigs'"

quietly drop xD
quietly drop xS
}
}















///////////competitive experiment survey effects and stroop treat//////
putexcel set "C:\Users\anton\OneDrive\Documents\Competitive_Stroop_Survey_Experiment.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400 420 440 460 480 500 520 540 560 580 600 620 640 660 680 700 720 740 760 780 800 820 840 860 880 900 920 940 960 980 1000 1020 1040 1060 1080 1100 1120 1140 1160 1180 1200 1220 1240 1260 1280 1300 1320 1340 1360 1380 1400 1420 1440 1460 1480 1500 1520 1540 1560 1580 1600 1620 1640 1660 1680 1700 1720 1740 1760 1780 1800 1820 1840 1860 1880 1900 1920 1940 1960 1980 2000 2020 2040 2060 2080 2100 2120 2140 2160 2180 2200 2220 2240 2260 2280 2300 2320 2340 2360 2380 2400 2420 2440 2460 2480 2500 2520 2540 2560 2580 2600 2620 2640 2660 2680 2700 2720 2740 2760 2780 2800 2820 2840 2860 2880 2900 2920 2940 2960 2980 3000 3020 3040 3060 3080 3100 3120 3140 3160 3180 3200 3220 3240 3260 3280 3300 3320 3340 3360 3380 3400 3420 3440 3460 3480 3500 3520 3540 3560 3580 3600 3620 3640 3660 3680 3700 3720 3740 3760 3780 3800 3820 3840 3860 3880 3900 3920 3940 3960 3980 4000 4020 4040 4060 4080 4100 4120 4140 4160 4180 4200 4220 4240 4260 4280 4300 4320 4340 4360 4380 4400 4420 4440 4460 4480 4500 4520 4540 4560 4580 4600 4620 4640 4660 4680 4700 4720 4740 4760 4780 4800 4820 4840 4860 4880 4900 4920 4940 4960 4980 5000 5020 5040 5060 5080 5100 5120 5140 5160 5180 5200 5220 5240 5260 5280 5300 5320 5340 5360 5380 5400 5420 5440 5460 5480 5500 5520 5540 5560 5580 5600 5620 5640 5660 5680 5700 5720 5740 5760 5780 5800 5820 5840 5860 5880 5900 5920 5940 5960 5980 6000 6020 6040 6060 6080 6100 6120 6140 6160 6180 6200 6220 6240 6260 6280 6300 6320 6340 6360 6380 6400 6420 6440 6460 6480 6500 6520 6540 6560 6580 6600 6620 6640 6660 6680 6700 6720 6740 6760 6780 6800 6820 6840 6860 6880 6900 6920 6940 6960 6980 7000 7020 7040 7060 7080 7100 7120 7140 7160 7180 7200 7220 7240 7260 7280 7300 7320 7340 7360 7380 7400 7420 7440 7460 7480 7500 7520 7540 7560 7580 7600 7620 7640 7660 7680 7700 7720 7740 7760 7780 7800 7820 7840 7860 7880 7900 7920 7940 7960 7980 8000 8020 8040 8060 8080 8100 8120 8140 8160 8180 8200 8220 8240 8260 8280 8300 8320 8340 8360 8380 8400 8420 8440 8460 8480 8500 8520 8540 8560 8580 8600 8620 8640 8660 8680 8700 8720 8740 8760 8780 8800 8820 8840 8860 8880 8900 8920 8940 8960 8980 9000 9020 9040 9060 9080 9100 9120 9140 9160 9180 9200 9220 9240 9260 9280 9300 9320 9340 9360 9380 9400 9420 9440 9460 9480 9500 9520 9540 9560 9580 9600 9620 9640 9660 9680 9700 9720 9740 9760 9780 9800 9820 9840 9860 9880 9900 9920 9940 9960 9980 10000


local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 
local len_outcome : word count `outcome'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `controls'
local cl : word `i' of `colums'
display "`y'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = StrGroup*`x'
 quietly generate xS = Surveyb4Stroop*`x'
quietly regress `y' xD xS `x' StrGroup Surveyb4Stroop `c', robust

local r2 = e(r2)
local r2A = e(r2_a)
local F = e(F)
local RSME = e(rmse)
local N = e(N)
local df_m = e(df_m)
local r2r = round(`r2', 0.001)
local r2Ar = round(`r2A', 0.001)
local Fr = round(`F', 0.001)
local RSMEr = round(`RSME', 0.001)
local Nr = round(`N', 0.001)
local df_mr = round(`df_m', 0.001)

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]
local SE1 = _se[xD]
local star1 = ""
if `p1' < 0.01 {
local star1 "***"
}
else if `p1' < 0.05 {
 local star1 "**"
}
else if `p1' < 0.1 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.01 {
local star2 "***"
}
else if `p2' < 0.05 {
 local star2 "**"
}
else if `p2' < 0.1 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[StrGroup]/_se[StrGroup]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[StrGroup]
local SE3 = _se[StrGroup]
local star3 = ""
if `p3' < 0.01 {
local star3 "***"
}
else if `p3' < 0.05 {
 local star3 "**"
}
else if `p3' < 0.1 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[`c']/_se[`c']
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[`c']
local SE4 = _se[`c']
local star4 = ""
if `p4' < 0.01 {
local star4 "***"
}
else if `p4' < 0.05 {
 local star4 "**"
}
else if `p4' < 0.1 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)

local t5 = _b[xS]/_se[xS]
local p5 =2*ttail(e(df_r),abs(`t5'))
local B5 =_b[xS]
local SE5 = _se[xS]
local star5 = ""
if `p5' < 0.01 {
local star5 "***"
}
else if `p5' < 0.05 {
 local star5 "**"
}
else if `p5' < 0.1 {
local star5 "*"
}
local B5r = round(`B5', 0.001)
local SE5r = round(`SE5', 0.001)

local t6 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p6 =2*ttail(e(df_r),abs(`t6'))
local B6 =_b[Surveyb4Stroop]
local SE6 = _se[Surveyb4Stroop]
local star6 = ""
if `p6' < 0.01 {
local star6 "***"
}
else if `p6' < 0.05 {
 local star6 "**"
}
else if `p6' < 0.1 {
local star6 "*"
}
local B6r = round(`B6', 0.001)
local SE6r = round(`SE6', 0.001)

quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.1 {
	local Osig "Yes"
}
local Ots = _b[xS]/_se[xS]
local Ops =2*ttail(e(df_r),abs(`Ots'))
local OB1s =_b[xS]
local OSEs = _se[xS]
local OFs = e(F)
local Odf_ms = e(df_m)
local Osigs = "-"
if `Ops' < 0.1 {
	local Osigs "Yes"
}
	
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.1 {
	local ssig "Yes"
}
local sts = _b[xS]/_se[xS]
local sps =2*ttail(e(df_r),abs(`sts'))
local sB1s =_b[xS]
local sSEs = _se[xS]
local sFs = e(F)
local sdf_ms = e(df_m)
local ssigs = "-"
if `sps' < 0.1 {
	local ssigs "Yes"
}
	
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.1 {
	local csig "Yes"
}		
local cts = _b[xS]/_se[xS]
local cps =2*ttail(e(df_r),abs(`cts'))
local cB1s =_b[xS]
local cSEs = _se[xS]
local cFs = e(F)
local cdf_ms = e(df_m)
local csigs = "-"
if `cps' < 0.1 {
	local csigs "Yes"
}			

local rs : word `j' of `rowst'

local titlerw = `rs'
local B4rw = `rs'+1
local B3rw = `rs'+2
local B2rw = `rs'+3
local B1rw = `rs'+4
local B5rw = `rs'+5
local B6rw = `rs'+6
local r2rw = `rs'+7
local Frrw = `rs'+8
local RSMErw = `rs'+9
local Nrrw = `rs'+10
local df_mrrw = `rs'+11
local Osigrw =`rs'+12
local ssigrw = `rs'+13
local csigrw = `rs'+14
local Osigrws =`rs'+15
local ssigrws = `rs'+16
local csigrws = `rs'+17


putexcel `cl'`titlerw'="`y'"
putexcel B`titlerw'="`x'"
putexcel B`B4rw'="Baseline Control"
putexcel B`B3rw'="Emotional Treatment"
putexcel B`B2rw'="Affected"
putexcel B`B1rw'="Emotional Treatment and Affected"
putexcel B`B5rw'="Survey Response and Affected"
putexcel B`B6rw'="Survey Response"

putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"
putexcel `cl'`B6rw'=" `B6r'(`SE6r')`star6'"

putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'=" `r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'=" `Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'=" `RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'=" `Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'=" `df_mr'"
putexcel B`Osigrw'="Oblast FE xD p<.1"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE xD p<.1"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ Control xD p<.1"
putexcel `cl'`csigrw'="`csig'"
putexcel B`Osigrw'="Oblast FE xS p<.1"
putexcel `cl'`Osigrws'="`Osigs'"
putexcel B`ssigrw'="Sample FE xS p<.1"
putexcel `cl'`ssigrws'="`ssigs'"
putexcel B`csigrw'="Age Sex Educ Control xS p<.1"
putexcel `cl'`csigrws'="`csigs'"

quietly drop xD
quietly drop xS
}
}

///////////////////////////////////////////////////////////////////


			
////// REGRESSION///////////////////////////////////////////////////////////////////////////			
			
			
///Dictator game experimental Analysis			
putexcel set "C:\Users\anton\OneDrive\Documents\Dictator_Games.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome ProsCostlessSharing ProsCostlessSharTi ProsCostlessSharCC ProsCostlessEnvy ProsCostlessEnvyTi ProsCostlessEnvyCC ProsSharing ProsSharTi ProsSharCC ProsEnvy ProsEnvyTi ProsEnvyCC BehC_Spiteful BehC_Generous BehC_Egalitarian BehC_Selfish  			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = Surveyb4Dg*`x' 			
quietly regress `y' xD `x' Surveyb4Dg, robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[Surveyb4Dg]/_se[Surveyb4Dg]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[Surveyb4Dg]			
local SE3 = _se[Surveyb4Dg]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
			
quietly regress `y' `x' xD Surveyb4Dg ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Dg sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Dg Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B3rw = `rs'+1			
local B2rw = `rs'+2			
local B1rw = `rs'+3			
local r2rw = `rs'+4			
local Frrw = `rs'+5			
local RSMErw = `rs'+6			
local Nrrw = `rs'+7			
local df_mrrw = `rs'+8			
local Osigrw =`rs'+9			
local ssigrw = `rs'+10			
local csigrw = `rs'+11			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
			
putexcel B`B3rw'="Survey Priming"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="Survey Priming and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
///cognitive control///			
putexcel set "C:\Users\anton\OneDrive\Documents\Cognitive_Control.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = Surveyb4Stroop*`x' 			
quietly regress `y' xD `x' Surveyb4Stroop, robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[Surveyb4Stroop]			
local SE3 = _se[Surveyb4Stroop]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
			
quietly regress `y' `x' xD Surveyb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B3rw = `rs'+1			
local B2rw = `rs'+2			
local B1rw = `rs'+3			
local r2rw = `rs'+4			
local Frrw = `rs'+5			
local RSMErw = `rs'+6			
local Nrrw = `rs'+7			
local df_mrrw = `rs'+8			
local Osigrw =`rs'+9			
local ssigrw = `rs'+10			
local csigrw = `rs'+11			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B3rw'="Survey Priming"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="Survey Priming and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
///practices, effort and learning///			
putexcel set "C:\Users\anton\OneDrive\Documents\Practice_Learning.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome StrPracDiff StrPracPerChg StrPracPDiff StrPracCDiff StrPracADiff StrPaidDiff			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = Surveyb4Stroop*`x' 			
quietly regress `y' xD `x' Surveyb4Stroop, robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[Surveyb4Stroop]			
local SE3 = _se[Surveyb4Stroop]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
			
quietly regress `y' `x' xD Surveyb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B3rw = `rs'+1			
local B2rw = `rs'+2			
local B1rw = `rs'+3			
local r2rw = `rs'+4			
local Frrw = `rs'+5			
local RSMErw = `rs'+6			
local Nrrw = `rs'+7			
local df_mrrw = `rs'+8			
local Osigrw =`rs'+9			
local ssigrw = `rs'+10			
local csigrw = `rs'+11			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B3rw'="Survey Priming"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="Survey Priming and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
/////competitive experiment stroop emotuiona/////			
putexcel set "C:\Users\anton\OneDrive\Documents\Competitive_Stroop_Experiment.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  			
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = StrGroup*`x' 			
quietly regress `y' xD `x' StrGroup `c' , robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[StrGroup]/_se[StrGroup]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[StrGroup]			
local SE3 = _se[StrGroup]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
			
quietly regress `y' `x' xD StrGroup `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD StrGroup `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD StrGroup `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local r2rw = `rs'+5			
local Frrw = `rs'+6			
local RSMErw = `rs'+7			
local Nrrw = `rs'+8			
local df_mrrw = `rs'+9			
local Osigrw =`rs'+10			
local ssigrw = `rs'+11			
local csigrw = `rs'+12			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="War Stroop Treatment"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="War Stroop Treatment and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
			
/////stroop emotuional response/////			
putexcel set "C:\Users\anton\OneDrive\Documents\Comptetitive_Stroop_Survey.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull			
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = Surveyb4Stroop*`x' 			
quietly regress `y' xD `x' Surveyb4Stroop `c' , robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[Surveyb4Stroop]			
local SE3 = _se[Surveyb4Stroop]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local r2rw = `rs'+5			
local Frrw = `rs'+6			
local RSMErw = `rs'+7			
local Nrrw = `rs'+8			
local df_mrrw = `rs'+9			
local Osigrw =`rs'+10			
local ssigrw = `rs'+11			
local csigrw = `rs'+12			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="Survey Priming"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="Survey Priming and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
			
			
			
/////experiment stroop emotuiona/////			
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Experiment.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull			
local controls StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = StrGroup*`x' 			
quietly regress `y' xD `x' StrGroup `c' , robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[StrGroup]/_se[StrGroup]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[StrGroup]			
local SE3 = _se[StrGroup]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
			
quietly regress `y' `x' xD StrGroup `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD StrGroup `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD StrGroup `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local r2rw = `rs'+5			
local Frrw = `rs'+6			
local RSMErw = `rs'+7			
local Nrrw = `rs'+8			
local df_mrrw = `rs'+9			
local Osigrw =`rs'+10			
local ssigrw = `rs'+11			
local csigrw = `rs'+12			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="War Stroop Treatment"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="War Stroop Treatment and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
/////stroop emotuional response/////			
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Survey.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990			
			
			
local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull			
local controls StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu			
			
local len_outcome : word count `outcome'			
local len_explanitary : word count `explanitary'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = Surveyb4Stroop*`x' 			
quietly regress `y' xD `x' Surveyb4Stroop `c' , robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[Surveyb4Stroop]			
local SE3 = _se[Surveyb4Stroop]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
			
quietly regress `y' `x' xD Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local r2rw = `rs'+5			
local Frrw = `rs'+6			
local RSMErw = `rs'+7			
local Nrrw = `rs'+8			
local df_mrrw = `rs'+9			
local Osigrw =`rs'+10			
local ssigrw = `rs'+11			
local csigrw = `rs'+12			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="Survey Priming"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="Survey Priming and Affected"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE x p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE x p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control x p<.1"			
putexcel `cl'`csigrw'="`csig'"			
			
quietly drop xD			
}			
}			
			
			
			
			
			
			
			
			
			
			
			
			
			
///////////stroop experiment survey effects and stroop treat//////			
putexcel set "C:\Users\anton\OneDrive\Documents\Emotional_Stroop_Survey_Experiment.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400 420 440 460 480 500 520 540 560 580 600 620 640 660 680 700 720 740 760 780 800 820 840 860 880 900 920 940 960 980 1000 1020 1040 1060 1080 1100 1120 1140 1160 1180 1200 1220 1240 1260 1280 1300 1320 1340 1360 1380 1400 1420 1440 1460 1480 1500 1520 1540 1560 1580 1600 1620 1640 1660 1680 1700 1720 1740 1760 1780 1800 1820 1840 1860 1880 1900 1920 1940 1960 1980 2000 2020 2040 2060 2080 2100 2120 2140 2160 2180 2200 2220 2240 2260 2280 2300 2320 2340 2360 2380 2400 2420 2440 2460 2480 2500 2520 2540 2560 2580 2600 2620 2640 2660 2680 2700 2720 2740 2760 2780 2800 2820 2840 2860 2880 2900 2920 2940 2960 2980 3000 3020 3040 3060 3080 3100 3120 3140 3160 3180 3200 3220 3240 3260 3280 3300 3320 3340 3360 3380 3400 3420 3440 3460 3480 3500 3520 3540 3560 3580 3600 3620 3640 3660 3680 3700 3720 3740 3760 3780 3800 3820 3840 3860 3880 3900 3920 3940 3960 3980 4000 4020 4040 4060 4080 4100 4120 4140 4160 4180 4200 4220 4240 4260 4280 4300 4320 4340 4360 4380 4400 4420 4440 4460 4480 4500 4520 4540 4560 4580 4600 4620 4640 4660 4680 4700 4720 4740 4760 4780 4800 4820 4840 4860 4880 4900 4920 4940 4960 4980 5000 5020 5040 5060 5080 5100 5120 5140 5160 5180 5200 5220 5240 5260 5280 5300 5320 5340 5360 5380 5400 5420 5440 5460 5480 5500 5520 5540 5560 5580 5600 5620 5640 5660 5680 5700 5720 5740 5760 5780 5800 5820 5840 5860 5880 5900 5920 5940 5960 5980 6000 6020 6040 6060 6080 6100 6120 6140 6160 6180 6200 6220 6240 6260 6280 6300 6320 6340 6360 6380 6400 6420 6440 6460 6480 6500 6520 6540 6560 6580 6600 6620 6640 6660 6680 6700 6720 6740 6760 6780 6800 6820 6840 6860 6880 6900 6920 6940 6960 6980 7000 7020 7040 7060 7080 7100 7120 7140 7160 7180 7200 7220 7240 7260 7280 7300 7320 7340 7360 7380 7400 7420 7440 7460 7480 7500 7520 7540 7560 7580 7600 7620 7640 7660 7680 7700 7720 7740 7760 7780 7800 7820 7840 7860 7880 7900 7920 7940 7960 7980 8000 8020 8040 8060 8080 8100 8120 8140 8160 8180 8200 8220 8240 8260 8280 8300 8320 8340 8360 8380 8400 8420 8440 8460 8480 8500 8520 8540 8560 8580 8600 8620 8640 8660 8680 8700 8720 8740 8760 8780 8800 8820 8840 8860 8880 8900 8920 8940 8960 8980 9000 9020 9040 9060 9080 9100 9120 9140 9160 9180 9200 9220 9240 9260 9280 9300 9320 9340 9360 9380 9400 9420 9440 9460 9480 9500 9520 9540 9560 9580 9600 9620 9640 9660 9680 9700 9720 9740 9760 9780 9800 9820 9840 9860 9880 9900 9920 9940 9960 9980 10000			
			
			
local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull			
local controls  StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu  			
local len_outcome : word count `outcome'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = StrGroup*`x'			
 quietly generate xS = Surveyb4Stroop*`x'			
quietly regress `y' xD xS `x' StrGroup Surveyb4Stroop `c', robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[StrGroup]/_se[StrGroup]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[StrGroup]			
local SE3 = _se[StrGroup]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
local t5 = _b[xS]/_se[xS]			
local p5 =2*ttail(e(df_r),abs(`t5'))			
local B5 =_b[xS]			
local SE5 = _se[xS]			
local star5 = ""			
if `p5' < 0.01 {			
local star5 "***"			
}			
else if `p5' < 0.05 {			
 local star5 "**"			
}			
else if `p5' < 0.1 {			
local star5 "*"			
}			
local B5r = round(`B5', 0.001)			
local SE5r = round(`SE5', 0.001)			
			
local t6 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p6 =2*ttail(e(df_r),abs(`t6'))			
local B6 =_b[Surveyb4Stroop]			
local SE6 = _se[Surveyb4Stroop]			
local star6 = ""			
if `p6' < 0.01 {			
local star6 "***"			
}			
else if `p6' < 0.05 {			
 local star6 "**"			
}			
else if `p6' < 0.1 {			
local star6 "*"			
}			
local B6r = round(`B6', 0.001)			
local SE6r = round(`SE6', 0.001)			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
local Ots = _b[xS]/_se[xS]			
local Ops =2*ttail(e(df_r),abs(`Ots'))			
local OB1s =_b[xS]			
local OSEs = _se[xS]			
local OFs = e(F)			
local Odf_ms = e(df_m)			
local Osigs = "-"			
if `Ops' < 0.1 {			
	local Osigs "Yes"		
}			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
local sts = _b[xS]/_se[xS]			
local sps =2*ttail(e(df_r),abs(`sts'))			
local sB1s =_b[xS]			
local sSEs = _se[xS]			
local sFs = e(F)			
local sdf_ms = e(df_m)			
local ssigs = "-"			
if `sps' < 0.1 {			
	local ssigs "Yes"		
}			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
local cts = _b[xS]/_se[xS]			
local cps =2*ttail(e(df_r),abs(`cts'))			
local cB1s =_b[xS]			
local cSEs = _se[xS]			
local cFs = e(F)			
local cdf_ms = e(df_m)			
local csigs = "-"			
if `cps' < 0.1 {			
	local csigs "Yes"		
}			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local B5rw = `rs'+5			
local B6rw = `rs'+6			
local r2rw = `rs'+7			
local Frrw = `rs'+8			
local RSMErw = `rs'+9			
local Nrrw = `rs'+10			
local df_mrrw = `rs'+11			
local Osigrw =`rs'+12			
local ssigrw = `rs'+13			
local csigrw = `rs'+14			
local Osigrws =`rs'+15			
local ssigrws = `rs'+16			
local csigrws = `rs'+17			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="War Stroop Treatment"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="War Stroop Treatment and Affected"			
putexcel B`B5rw'="Survey Priming and Affected"			
putexcel B`B6rw'="Survey Priming"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"			
putexcel `cl'`B6rw'=" `B6r'(`SE6r')`star6'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE xD p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE xD p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control xD p<.1"			
putexcel `cl'`csigrw'="`csig'"			
putexcel B`Osigrw'="Oblast FE xS p<.1"			
putexcel `cl'`Osigrws'="`Osigs'"			
putexcel B`ssigrw'="Sample FE xS p<.1"			
putexcel `cl'`ssigrws'="`ssigs'"			
putexcel B`csigrw'="Age Sex Educ Control xS p<.1"			
putexcel `cl'`csigrws'="`csigs'"			
			
quietly drop xD			
quietly drop xS			
}			
}			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
///////////competitive experiment survey effects and stroop treat//////			
putexcel set "C:\Users\anton\OneDrive\Documents\Competitive_Stroop_Survey_Experiment.xlsx", replace			
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ			
local rowst  20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400 420 440 460 480 500 520 540 560 580 600 620 640 660 680 700 720 740 760 780 800 820 840 860 880 900 920 940 960 980 1000 1020 1040 1060 1080 1100 1120 1140 1160 1180 1200 1220 1240 1260 1280 1300 1320 1340 1360 1380 1400 1420 1440 1460 1480 1500 1520 1540 1560 1580 1600 1620 1640 1660 1680 1700 1720 1740 1760 1780 1800 1820 1840 1860 1880 1900 1920 1940 1960 1980 2000 2020 2040 2060 2080 2100 2120 2140 2160 2180 2200 2220 2240 2260 2280 2300 2320 2340 2360 2380 2400 2420 2440 2460 2480 2500 2520 2540 2560 2580 2600 2620 2640 2660 2680 2700 2720 2740 2760 2780 2800 2820 2840 2860 2880 2900 2920 2940 2960 2980 3000 3020 3040 3060 3080 3100 3120 3140 3160 3180 3200 3220 3240 3260 3280 3300 3320 3340 3360 3380 3400 3420 3440 3460 3480 3500 3520 3540 3560 3580 3600 3620 3640 3660 3680 3700 3720 3740 3760 3780 3800 3820 3840 3860 3880 3900 3920 3940 3960 3980 4000 4020 4040 4060 4080 4100 4120 4140 4160 4180 4200 4220 4240 4260 4280 4300 4320 4340 4360 4380 4400 4420 4440 4460 4480 4500 4520 4540 4560 4580 4600 4620 4640 4660 4680 4700 4720 4740 4760 4780 4800 4820 4840 4860 4880 4900 4920 4940 4960 4980 5000 5020 5040 5060 5080 5100 5120 5140 5160 5180 5200 5220 5240 5260 5280 5300 5320 5340 5360 5380 5400 5420 5440 5460 5480 5500 5520 5540 5560 5580 5600 5620 5640 5660 5680 5700 5720 5740 5760 5780 5800 5820 5840 5860 5880 5900 5920 5940 5960 5980 6000 6020 6040 6060 6080 6100 6120 6140 6160 6180 6200 6220 6240 6260 6280 6300 6320 6340 6360 6380 6400 6420 6440 6460 6480 6500 6520 6540 6560 6580 6600 6620 6640 6660 6680 6700 6720 6740 6760 6780 6800 6820 6840 6860 6880 6900 6920 6940 6960 6980 7000 7020 7040 7060 7080 7100 7120 7140 7160 7180 7200 7220 7240 7260 7280 7300 7320 7340 7360 7380 7400 7420 7440 7460 7480 7500 7520 7540 7560 7580 7600 7620 7640 7660 7680 7700 7720 7740 7760 7780 7800 7820 7840 7860 7880 7900 7920 7940 7960 7980 8000 8020 8040 8060 8080 8100 8120 8140 8160 8180 8200 8220 8240 8260 8280 8300 8320 8340 8360 8380 8400 8420 8440 8460 8480 8500 8520 8540 8560 8580 8600 8620 8640 8660 8680 8700 8720 8740 8760 8780 8800 8820 8840 8860 8880 8900 8920 8940 8960 8980 9000 9020 9040 9060 9080 9100 9120 9140 9160 9180 9200 9220 9240 9260 9280 9300 9320 9340 9360 9380 9400 9420 9440 9460 9480 9500 9520 9540 9560 9580 9600 9620 9640 9660 9680 9700 9720 9740 9760 9780 9800 9820 9840 9860 9880 9900 9920 9940 9960 9980 10000			
			
			
local outcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu 			
local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  			
local controls StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 			
local len_outcome : word count `outcome'			
forval i=1/`len_outcome' {			
local y : word `i' of `outcome'			
local c : word `i' of `controls'			
local cl : word `i' of `colums'			
display "`y'"			
			
forval j=1/`len_explanitary' {			
local x : word `j' of `explanitary'			
quietly generate xD = StrGroup*`x'			
 quietly generate xS = Surveyb4Stroop*`x'			
quietly regress `y' xD xS `x' StrGroup Surveyb4Stroop `c', robust			
			
local r2 = e(r2)			
local r2A = e(r2_a)			
local F = e(F)			
local RSME = e(rmse)			
local N = e(N)			
local df_m = e(df_m)			
local r2r = round(`r2', 0.001)			
local r2Ar = round(`r2A', 0.001)			
local Fr = round(`F', 0.001)			
local RSMEr = round(`RSME', 0.001)			
local Nr = round(`N', 0.001)			
local df_mr = round(`df_m', 0.001)			
			
local t1 = _b[xD]/_se[xD]			
local p1 =2*ttail(e(df_r),abs(`t1'))			
local B1 =_b[xD]			
local SE1 = _se[xD]			
local star1 = ""			
if `p1' < 0.01 {			
local star1 "***"			
}			
else if `p1' < 0.05 {			
 local star1 "**"			
}			
else if `p1' < 0.1 {			
local star1 "*"			
}			
local B1r = round(`B1', 0.001)			
local SE1r = round(`SE1', 0.001)			
			
			
local t2 = _b[`x']/_se[`x']			
local p2 =2*ttail(e(df_r),abs(`t2'))			
local B2 =_b[`x']			
local SE2 = _se[`x']			
local star2 = ""			
if `p2' < 0.01 {			
local star2 "***"			
}			
else if `p2' < 0.05 {			
 local star2 "**"			
}			
else if `p2' < 0.1 {			
local star2 "*"			
}			
local B2r = round(`B2', 0.001)			
local SE2r = round(`SE2', 0.001)			
			
local t3 = _b[StrGroup]/_se[StrGroup]			
local p3 =2*ttail(e(df_r),abs(`t3'))			
local B3 =_b[StrGroup]			
local SE3 = _se[StrGroup]			
local star3 = ""			
if `p3' < 0.01 {			
local star3 "***"			
}			
else if `p3' < 0.05 {			
 local star3 "**"			
}			
else if `p3' < 0.1 {			
local star3 "*"			
}			
local B3r = round(`B3', 0.001)			
local SE3r = round(`SE3', 0.001)			
			
local t4 = _b[`c']/_se[`c']			
local p4 =2*ttail(e(df_r),abs(`t4'))			
local B4 =_b[`c']			
local SE4 = _se[`c']			
local star4 = ""			
if `p4' < 0.01 {			
local star4 "***"			
}			
else if `p4' < 0.05 {			
 local star4 "**"			
}			
else if `p4' < 0.1 {			
local star4 "*"			
}			
local B4r = round(`B4', 0.001)			
local SE4r = round(`SE4', 0.001)			
			
local t5 = _b[xS]/_se[xS]			
local p5 =2*ttail(e(df_r),abs(`t5'))			
local B5 =_b[xS]			
local SE5 = _se[xS]			
local star5 = ""			
if `p5' < 0.01 {			
local star5 "***"			
}			
else if `p5' < 0.05 {			
 local star5 "**"			
}			
else if `p5' < 0.1 {			
local star5 "*"			
}			
local B5r = round(`B5', 0.001)			
local SE5r = round(`SE5', 0.001)			
			
local t6 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]			
local p6 =2*ttail(e(df_r),abs(`t6'))			
local B6 =_b[Surveyb4Stroop]			
local SE6 = _se[Surveyb4Stroop]			
local star6 = ""			
if `p6' < 0.01 {			
local star6 "***"			
}			
else if `p6' < 0.05 {			
 local star6 "**"			
}			
else if `p6' < 0.1 {			
local star6 "*"			
}			
local B6r = round(`B6', 0.001)			
local SE6r = round(`SE6', 0.001)			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust			
local Ot = _b[xD]/_se[xD]			
local Op =2*ttail(e(df_r),abs(`Ot'))			
local OB1 =_b[xD]			
local OSE = _se[xD]			
local OF = e(F)			
local Odf_m = e(df_m)			
local Osig = "-"			
if `Op' < 0.1 {			
	local Osig "Yes"		
}			
local Ots = _b[xS]/_se[xS]			
local Ops =2*ttail(e(df_r),abs(`Ots'))			
local OB1s =_b[xS]			
local OSEs = _se[xS]			
local OFs = e(F)			
local Odf_ms = e(df_m)			
local Osigs = "-"			
if `Ops' < 0.1 {			
	local Osigs "Yes"		
}			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' sample1 sample2 sample3 sample4 sample5, robust			
local st = _b[xD]/_se[xD]			
local sp =2*ttail(e(df_r),abs(`st'))			
local sB1 =_b[xD]			
local sSE = _se[xD]			
local sF = e(F)			
local sdf_m = e(df_m)			
local ssig = "-"			
if `sp' < 0.1 {			
	local ssig "Yes"		
}			
local sts = _b[xS]/_se[xS]			
local sps =2*ttail(e(df_r),abs(`sts'))			
local sB1s =_b[xS]			
local sSEs = _se[xS]			
local sFs = e(F)			
local sdf_ms = e(df_m)			
local ssigs = "-"			
if `sps' < 0.1 {			
	local ssigs "Yes"		
}			
			
quietly regress `y' `x' xD xS StrGroup Surveyb4Stroop `c' Demo2_Gender Demo4_Education Demo1_Age17, robust			
local ct = _b[xD]/_se[xD]			
local cp =2*ttail(e(df_r),abs(`ct'))			
local cB1 =_b[xD]			
local cSE = _se[xD]			
local cF = e(F)			
local cdf_m = e(df_m)			
local csig = "-"			
if `cp' < 0.1 {			
	local csig "Yes"		
}			
local cts = _b[xS]/_se[xS]			
local cps =2*ttail(e(df_r),abs(`cts'))			
local cB1s =_b[xS]			
local cSEs = _se[xS]			
local cFs = e(F)			
local cdf_ms = e(df_m)			
local csigs = "-"			
if `cps' < 0.1 {			
	local csigs "Yes"		
}			
			
local rs : word `j' of `rowst'			
			
local titlerw = `rs'			
local B4rw = `rs'+1			
local B3rw = `rs'+2			
local B2rw = `rs'+3			
local B1rw = `rs'+4			
local B5rw = `rs'+5			
local B6rw = `rs'+6			
local r2rw = `rs'+7			
local Frrw = `rs'+8			
local RSMErw = `rs'+9			
local Nrrw = `rs'+10			
local df_mrrw = `rs'+11			
local Osigrw =`rs'+12			
local ssigrw = `rs'+13			
local csigrw = `rs'+14			
local Osigrws =`rs'+15			
local ssigrws = `rs'+16			
local csigrws = `rs'+17			
			
			
putexcel `cl'`titlerw'="`y'"			
putexcel B`titlerw'="`x'"			
putexcel B`B4rw'="Baseline Control"			
putexcel B`B3rw'="War Stroop Treatment"			
putexcel B`B2rw'="Affected"			
putexcel B`B1rw'="War Stroop Treatment and Affected"			
putexcel B`B5rw'="Survey Priming and Affected"			
putexcel B`B6rw'="Survey Priming"			
			
putexcel `cl'`B1rw'=" `B1r'(`SE1r')`star1'"			
putexcel `cl'`B2rw'=" `B2r'(`SE2r')`star2'"			
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"			
putexcel `cl'`B4rw'=" `B4r'(`SE4r')`star4'"			
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"			
putexcel `cl'`B6rw'=" `B6r'(`SE6r')`star6'"			
			
putexcel B`r2rw'="r2"			
putexcel `cl'`r2rw'=" `r2r'"			
putexcel B`Frrw'="F"			
putexcel `cl'`Frrw'=" `Fr'"			
putexcel B`RSMErw'="RMSE"			
putexcel `cl'`RSMErw'=" `RSMEr'"			
putexcel B`Nrrw'="N"			
putexcel `cl'`Nrrw'=" `Nr'"			
putexcel B`df_mrrw'="df"			
putexcel `cl'`df_mrrw'=" `df_mr'"			
putexcel B`Osigrw'="Oblast FE xD p<.1"			
putexcel `cl'`Osigrw'="`Osig'"			
putexcel B`ssigrw'="Sample FE xD p<.1"			
putexcel `cl'`ssigrw'="`ssig'"			
putexcel B`csigrw'="Age Sex Educ Control xD p<.1"			
putexcel `cl'`csigrw'="`csig'"			
putexcel B`Osigrw'="Oblast FE xS p<.1"			
putexcel `cl'`Osigrws'="`Osigs'"			
putexcel B`ssigrw'="Sample FE xS p<.1"			
putexcel `cl'`ssigrws'="`ssigs'"			
putexcel B`csigrw'="Age Sex Educ Control xS p<.1"			
putexcel `cl'`csigrws'="`csigs'"			
			
quietly drop xD			
quietly drop xS			
}			
}			
			
