///ttest and odds ratios. make all variables binary //

///for demographic variables on victimization///
WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExpI_CoverSomet WarExpI_LikelyVul 

WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed 


Demo2_Gender Demo6_IReligChristian Demo6IReligMuslum Demo6IReligAth Demo5EthnUkr Demo5EthnRus DemoI_Children EconI_IncomeCons Econ2_ReceiveMoney EconI_FoodInSomet Econ6_SaveMoney Econ7_PensionRet Econ7_HouseWife Econ7_Unemployed Econ7_Student Econ7_Military Ntwk2I_OrgDef

//////
local outcome 


local explanitary 


local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst 50 100 150 200 250 300 350 400 450 500 550 600 650 700 750 800 850 900 950 1000 
local len_explanitary : word count `explanitary'
local len_outcome : word count `outcome'

forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local rs : word `i' of `rowst'
local titlerw = `rs'
putexcel C`titlerw'="mean x"
putexcel D`titlerw'="mean `y'|x=0"
putexcel E`titlerw'="mean `y'|x=1"
putexcel F`titlerw'="ttest"
putexcel G`titlerw'="odds(logistic)"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly summarize `y'
local N = r(N)
local u = r(mean)
local min = r(min)
local max = r(max)
local p5 = r(p5)
local p95 = r(p95)
local sd = r(sd)	
local ur = round(`u', 0.001)
putexcel B`titlerw'="`y'(u=`ur')"

quietly summarize `x'
local ux = r(mean)
local uxr = round(`ux', 0.001)
quietly ttest `y', by(`x')
local N1 = r(N_1)
local N2 = r(N_2)
local t = r(t)
local u1 = r(mu_1)
local u2 = r(mu_2)
local sd1 = r(sd_1)
local sd2 = r(sd_2)
local p = r(p)
local star ""
if `p' < 0.001 {
local star "***"
}
else if `p' < 0.01 {
 local star "**"
}
else if `p' < 0.05 {
local star "*"
}
local u1r = round(`u1', 0.001)
local u2r = round(`u2', 0.001)
local tr = round(`t', 0.001)

quietly logistic `y' `x'
local lr =  round(_b[`x'], 0.001)

local rw = `rs'+`j'

putexcel B`rw'="`x'"
putexcel C`rw'="`uxr'"
putexcel D`rw'="`u1r'"
putexcel E`rw'="`u2r'"
putexcel F`rw'="`tr'`star'"
putexcel G`rw'="`lr'"
}
}




////regressions///




///regression tables///
//for prosocial///
ProsSharing ProsCostlessSharing ProsEnvy ProsCostlessEnvy ProsSharTi ProsCostlessSharTi ProsEnvyTi ProsCostlessEnvyTi ProsSharCC ProsCostlessSharCC ProsEnvyCC ProsCostlessEnvyCC

Beh_Spiteful Beh_Conv_Spiteful Beh_Egal Beh_Conv_Egal Beh_Hypoc_Punish Beh_Rel_Punish Beh_Altru Beh_Conv_Altru Beh_Problem

BehC_Spiteful BehC_Generous BehC_Egalitarian BehC_Selfish

Beh_Punish Beh_Weak_Punish Beh_No_Punish Beh_Coop Beh_Weak_Coop Beh_No_Coop

Trust1_KnowSeller Trust2_Peo Trust3_Family Trust4_Neighbors Trust5_OtherEthnic Trust6_Patient Trust_7PaidWait Trust9_Risk

///for baseline cognitive control///

StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu 
StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff StrPracPerChg
///continuous and binary outcomes for explanatory///
WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul Ntwk2I_OrgDef Econ7_Military

WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed 

WarExpI_NKnowInjKill WarExpI_NWitnessOth WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull warExp18I_NFull WarExpI_LeftNRetu WarExpI_IDP

////
local outcome StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff StrPracPerChg

local explanitary WarExpI_NKnowInjKill WarExpI_NWitnessOth WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull warExp18I_NFull WarExpI_LeftNRetu WarExpI_IDP

///y on x///
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst 15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990


local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local cl : word `i' of `colums'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly regress `y' `x', robust
local t = _b[`x']/_se[`x']
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[`x']
local SE = _se[`x']

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

local star = ""
if `p' < 0.001 {
local star "***"
}
else if `p' < 0.01 {
 local star "**"
}
else if `p' < 0.05 {
local star "*"
}
local B1r = round(`B1', 0.001)
local SEr = round(`SE', 0.001)

quietly regress `y' `x' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[`x']/_se[`x']
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[`x']
local OSE = _se[`x']
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.05 {
	local Osig "Yes"
}
	
quietly regress `y' `x' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[`x']/_se[`x']
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[`x']
local sSE = _se[`x']
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.05 {
	local ssig "Yes"
}
	
quietly regress `y' `x' Demo2_Gender Demo4_Education Demo1_Age17 Demo5EthnUkr, robust
local ct = _b[`x']/_se[`x']
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[`x']
local cSE = _se[`x']
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.05 {
	local csig "Yes"
}		
	
	
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B1rw = `rs'+1
local r2rw = `rs'+2
local Frrw = `rs'+3
local RSMErw = `rs'+4
local Nrrw = `rs'+5
local df_mrrw = `rs'+6
local Osigrw =`rs'+7
local ssigrw = `rs'+8
local csigrw = `rs'+9

putexcel `cl'`titlerw'="`y'"

putexcel B`B1rw'="`x'"



putexcel B`B1rw'="`x'"
putexcel `cl'`B1rw'=" `B1r'(`SEr')`star'"
putexcel B`r2rw'="r2"
putexcel `cl'`r2rw'="`r2r'"
putexcel B`Frrw'="F"
putexcel `cl'`Frrw'="`Fr'"
putexcel B`RSMErw'="RMSE"
putexcel `cl'`RSMErw'="`RSMEr'"
putexcel B`Nrrw'="N"
putexcel `cl'`Nrrw'="`Nr'"
putexcel B`df_mrrw'="df"
putexcel `cl'`df_mrrw'="`df_mr'"
putexcel B`Osigrw'="Oblast FE x p<.05"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.05"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ UkrEthn Control x p<.05"
putexcel `cl'`csigrw'="`csig'"
}
}



///stroop test experimental analysis/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///controlling for a baseline

StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu
StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu
local comoutcome StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu



local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome 
local control 

local explanitary 

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `control'
local cl : word `i' of `colums'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'

quietly generate xD = `x'*StrGroup 
quietly regress `y' xD `x' StrGroup Surveyb4Stroop Dgb4Stroop, robust

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
if `p1' < 0.001 {
local star1 "***"
}
else if `p1' < 0.01 {
 local star1 "**"
}
else if `p1' < 0.05 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.001 {
local star2 "***"
}
else if `p2' < 0.01 {
 local star2 "**"
}
else if `p2' < 0.05 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.001 {
local star3 "***"
}
else if `p3' < 0.01 {
 local star3 "**"
}
else if `p3' < 0.05 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[Dgb4Stroop]/_se[Dgb4Stroop]
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[Dgb4Stroop]
local SE4 = _se[Dgb4Stroop]
local star4 = ""
if `p4' < 0.001 {
local star4 "***"
}
else if `p4' < 0.01 {
 local star4 "**"
}
else if `p4' < 0.05 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)

local t5 = _b[StrGroup]/_se[StrGroup]
local p5 =2*ttail(e(df_r),abs(`t5'))
local B5 =_b[StrGroup]
local SE5 = _se[StrGroup]
local star5 = ""
if `p5' < 0.001 {
local star5 "***"
}
else if `p5' < 0.01 {
 local star5 "**"
}
else if `p5' < 0.05 {
local star5 "*"
}
local B5r = round(`B5', 0.001)
local SE5r = round(`SE5', 0.001)

quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.05 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.05 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop Demo2_Gender Demo4_Education Demo1_Age17 Demo5EthnUkr, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.05 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B2rw = `rs'+1
local B3rw = `rs'+2
local B4rw = `rs'+3
local B5rw = `rs'+4
local B1rw = `rs'+5
local r2rw = `rs'+6
local Frrw = `rs'+7
local RSMErw = `rs'+8
local Nrrw = `rs'+9
local df_mrrw = `rs'+10
local Osigrw =`rs'+11
local ssigrw = `rs'+12
local csigrw = `rs'+13


putexcel `cl'`titlerw'="`y'"
putexcel B`B2rw'="DG Before Stroop"
putexcel B`B3rw'="Survey Before Stroop"
putexcel B`B4rw'="Stroop Treatment and Victimized"
putexcel B`B5rw'="Stroop Treatment"

putexcel B`B1rw'="`x'"

putexcel `cl'`B1rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B2rw'=" `B4r'(`SE4r')`star4'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"

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
putexcel B`Osigrw'="Oblast FE x p<.05"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.05"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ UkrEthn Control x p<.05"
putexcel `cl'`csigrw'="`csig'"
quietly drop xD
}
}
/////cog cont interact

local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff StrPracPerChg

local explanitary WarExpI_NWitHumViol

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `control'
local cl : word `i' of `colums'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'

quietly generate xD = `x'*Surveyb4Stroop 
quietly regress `y' xD `x' Surveyb4Stroop Dgb4Stroop, robust

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
if `p1' < 0.001 {
local star1 "***"
}
else if `p1' < 0.01 {
 local star1 "**"
}
else if `p1' < 0.05 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.001 {
local star2 "***"
}
else if `p2' < 0.01 {
 local star2 "**"
}
else if `p2' < 0.05 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.001 {
local star3 "***"
}
else if `p3' < 0.01 {
 local star3 "**"
}
else if `p3' < 0.05 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[Dgb4Stroop]/_se[Dgb4Stroop]
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[Dgb4Stroop]
local SE4 = _se[Dgb4Stroop]
local star4 = ""
if `p4' < 0.001 {
local star4 "***"
}
else if `p4' < 0.01 {
 local star4 "**"
}
else if `p4' < 0.05 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)

quietly regress `y' `x' xD Surveyb4Stroop Dgb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.05 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop Dgb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.05 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD Surveyb4Stroop Dgb4Stroop Demo2_Gender Demo4_Education Demo1_Age17 Demo5EthnUkr, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.05 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B2rw = `rs'+1
local B3rw = `rs'+2
local B4rw = `rs'+3
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
putexcel B`B2rw'="DG Before Stroop"
putexcel B`B3rw'="Survey Before Stroop"
putexcel B`B4rw'="Survey Before and Victimized"

putexcel B`B1rw'="`x'"

putexcel `cl'`B1rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B2rw'=" `B4r'(`SE4r')`star4'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B1r'(`SE1r')`star1'"

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
putexcel B`Osigrw'="Oblast FE x p<.05"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.05"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ UkrEthn Control x p<.05"
putexcel `cl'`csigrw'="`csig'"
quietly drop xD
}
}


///survey cog control


StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu 
StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff StrPracPerChg


local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff StrPracPerChg

local explanitary WarExpI_NWitHumViol

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `control'
local cl : word `i' of `colums'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
 
quietly regress `y' `x' Surveyb4Stroop Dgb4Stroop, robust

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


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.001 {
local star2 "***"
}
else if `p2' < 0.01 {
 local star2 "**"
}
else if `p2' < 0.05 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.001 {
local star3 "***"
}
else if `p3' < 0.01 {
 local star3 "**"
}
else if `p3' < 0.05 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[Dgb4Stroop]/_se[Dgb4Stroop]
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[Dgb4Stroop]
local SE4 = _se[Dgb4Stroop]
local star4 = ""
if `p4' < 0.001 {
local star4 "***"
}
else if `p4' < 0.01 {
 local star4 "**"
}
else if `p4' < 0.05 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)


quietly regress `y' `x' Surveyb4Stroop Dgb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[`x']/_se[`x']
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[`x']
local OSE = _se[`x']
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.05 {
	local Osig "Yes"
}
	
quietly regress `y' `x' Surveyb4Stroop Dgb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[`x']/_se[`x']
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[`x']
local sSE = _se[`x']
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.05 {
	local ssig "Yes"
}
	
quietly regress `y' `x' Surveyb4Stroop Dgb4Stroop Demo2_Gender Demo4_Education Demo1_Age17 Demo5EthnUkr, robust
local ct = _b[`x']/_se[`x']
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[`x']
local cSE = _se[`x']
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.05 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B2rw = `rs'+1
local B3rw = `rs'+2
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
putexcel B`B2rw'="DG Before Stroop"
putexcel B`B3rw'="Survey Before Stroop"

putexcel B`B1rw'="`x'"

putexcel `cl'`B1rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B2rw'=" `B4r'(`SE4r')`star4'"
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
putexcel B`Osigrw'="Oblast FE x p<.05"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.05"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ UkrEthn Control x p<.05"
putexcel `cl'`csigrw'="`csig'"
}
}







//////////////for differences and raw outcomes//////////////////////
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome StrTreatDiff StrTreatPerChg StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu StrTreatPDiff StrTreatCDiff StrTreatADiff StrCompChoice StrCompDiff StrCompPerChg StrComp_Score StrComp_PScor StrComp_Clk StrComp_Accu StrComCDiff StrComADiff StrComPDiff

local explanitary WarExpI_NKnowInjKill WarExpI_NWitnessOth WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull warExp18I_NFull WarExpI_LeftNRetu WarExpI_IDP

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local cl : word `i' of `colums'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'

quietly generate xD = `x'*StrGroup 
quietly regress `y' xD `x' StrGroup Surveyb4Stroop Dgb4Stroop, robust

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
if `p1' < 0.001 {
local star1 "***"
}
else if `p1' < 0.01 {
 local star1 "**"
}
else if `p1' < 0.05 {
local star1 "*"
}
local B1r = round(`B1', 0.001)
local SE1r = round(`SE1', 0.001)


local t2 = _b[`x']/_se[`x']
local p2 =2*ttail(e(df_r),abs(`t2'))
local B2 =_b[`x']
local SE2 = _se[`x']
local star2 = ""
if `p2' < 0.001 {
local star2 "***"
}
else if `p2' < 0.01 {
 local star2 "**"
}
else if `p2' < 0.05 {
local star2 "*"
}
local B2r = round(`B2', 0.001)
local SE2r = round(`SE2', 0.001)

local t3 = _b[Surveyb4Stroop]/_se[Surveyb4Stroop]
local p3 =2*ttail(e(df_r),abs(`t3'))
local B3 =_b[Surveyb4Stroop]
local SE3 = _se[Surveyb4Stroop]
local star3 = ""
if `p3' < 0.001 {
local star3 "***"
}
else if `p3' < 0.01 {
 local star3 "**"
}
else if `p3' < 0.05 {
local star3 "*"
}
local B3r = round(`B3', 0.001)
local SE3r = round(`SE3', 0.001)

local t4 = _b[Dgb4Stroop]/_se[Dgb4Stroop]
local p4 =2*ttail(e(df_r),abs(`t4'))
local B4 =_b[Dgb4Stroop]
local SE4 = _se[Dgb4Stroop]
local star4 = ""
if `p4' < 0.001 {
local star4 "***"
}
else if `p4' < 0.01 {
 local star4 "**"
}
else if `p4' < 0.05 {
local star4 "*"
}
local B4r = round(`B4', 0.001)
local SE4r = round(`SE4', 0.001)

local t5 = _b[StrGroup]/_se[StrGroup]
local p5 =2*ttail(e(df_r),abs(`t5'))
local B5 =_b[StrGroup]
local SE5 = _se[StrGroup]
local star5 = ""
if `p5' < 0.001 {
local star5 "***"
}
else if `p5' < 0.01 {
 local star5 "**"
}
else if `p5' < 0.05 {
local star5 "*"
}
local B5r = round(`B5', 0.001)
local SE5r = round(`SE5', 0.001)

quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]
local OSE = _se[xD]
local OF = e(F)
local Odf_m = e(df_m)
local Osig = "-"
if `Op' < 0.05 {
	local Osig "Yes"
}
	
quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]
local sSE = _se[xD]
local sF = e(F)
local sdf_m = e(df_m)
local ssig = "-"
if `sp' < 0.05 {
	local ssig "Yes"
}
	
quietly regress `y' `x' xD StrGroup Surveyb4Stroop Dgb4Stroop Demo2_Gender Demo4_Education Demo1_Age17 Demo5EthnUkr, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]
local cSE = _se[xD]
local cF = e(F)
local cdf_m = e(df_m)
local csig = "-"
if `cp' < 0.05 {
	local csig "Yes"
}		
	

local rs : word `j' of `rowst'

local titlerw = `rs'
local B2rw = `rs'+1
local B3rw = `rs'+2
local B4rw = `rs'+3
local B5rw = `rs'+4
local B1rw = `rs'+5
local r2rw = `rs'+6
local Frrw = `rs'+7
local RSMErw = `rs'+8
local Nrrw = `rs'+9
local df_mrrw = `rs'+10
local Osigrw =`rs'+11
local ssigrw = `rs'+12
local csigrw = `rs'+13


putexcel `cl'`titlerw'="`y'"
putexcel B`B2rw'="DG Before Stroop"
putexcel B`B3rw'="Survey Before Stroop"
putexcel B`B4rw'="Stroop Treatment and Victimized"
putexcel B`B5rw'="Stroop Treatment"

putexcel B`B1rw'="`x'"

putexcel `cl'`B1rw'=" `B2r'(`SE2r')`star2'"
putexcel `cl'`B2rw'=" `B4r'(`SE4r')`star4'"
putexcel `cl'`B3rw'=" `B3r'(`SE3r')`star3'"
putexcel `cl'`B4rw'=" `B1r'(`SE1r')`star1'"
putexcel `cl'`B5rw'=" `B5r'(`SE5r')`star5'"

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
putexcel B`Osigrw'="Oblast FE x p<.05"
putexcel `cl'`Osigrw'="`Osig'"
putexcel B`ssigrw'="Sample FE x p<.05"
putexcel `cl'`ssigrw'="`ssig'"
putexcel B`csigrw'="Age Sex Educ UkrEthn Control x p<.05"
putexcel `cl'`csigrw'="`csig'"
quietly drop xD
}
}
