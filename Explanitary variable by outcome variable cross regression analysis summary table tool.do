/////////////Explanitary variable by outcome variable cross regression analysis summary table tool////////////////
/////////////
putexcel set "C:\Users\anton\OneDrive\Documents\Dictator_Games_Summary.xlsx", replace
local colums C D E F G H I J K L M N O P Q R S T U V W X Y Z AA AB AC AD AE AF AG AH AI AJ AK AL AM AN AO AP AQ AR AS AT AU AV AW AX AY AZ BA BB BC BD BE BF BG BH BI BJ BK BL BM BN BO BP BQ BR BS BT BU BV BW BQ BY BZ CA CB CC CD CE CF CG CH CI CJ CK CL CM CN CO CP CQ CR CS CT CU CV CW CQ CY CZ
local rowst  15 30 45 60 75 90 105 120 135 150 165 180 195 210 225 240 255 270 285 300 315 330 345 360 375 390 405 420 435 450 465 480 495 510 525 540 555 570 585 600 615 630 645 660 675 690 705 720 735 750 765 780 795 810 825 840 855 870 885 900 915 930 945 960 975 990

local outcome ProsSharing ProsEnvy ProsSharTi ProsEnvyTi ProsSharCC ProsEnvyCC ProsCostlessSharing ProsCostlessEnvy ProsCostlessSharTi ProsCostlessEnvyTi  ProsCostlessSharCC ProsCostlessEnvyCC BehC_Spiteful BehC_Generous BehC_Egalitarian BehC_Selfish  
local outcomet Sharing Envy Sharing_Time Envy_Time Sharing_Clicks Envy_Clicks C_Sharing C_Envy C_Sharing_Time C_Envy_Time C_Sharing_Clicks C_Envy_Clicks Spiteful Generous Egalitarian Selfish 

local explanitary WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp16_Cover WarExp17_PercVul WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_MultFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExpI_NWitHumViol WarExpI_NSelf warExpI_NFull WarExpI_NMoreObjective WarExpI_LeftNRetu WarExpI_IDP warExp18I_NFull WarExpI_WitHumViol WarExpI_Self WarExpI_MoreObjective warExp18I_Full WarExpI_MWitHumViol WarExpI_MSelf warExpI_MFull WarExpI_MMoreObjective warExp18I_MFull  
local explanitaryt LeaveHome ReturnHome HearFight SeeFight WitnessInjured FamilyInjured FamilyKilled RelativesInjured RelativesKilled FriendInjured FriendKilled FearBombing KnowDisplaced Cover3m PercievedVul ShotAt Explosions Attacked Prizoner Injured ForcedLabor WitAttackBattle WitBeating WitKilling WitRape MultFamInjMur MultFriendInjMur PropertyDestroyed NWitHumViol NSelf NFull NMoreObjective LeftNRetu IDP N18Full WitHumViol Self MoreObjective 18Full MWitHumViol MSelf MFull MMoreObjective M18Full


local treatment Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg Surveyb4Dg  
local treatmentt War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming War_Survey_Priming 

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local yt : word `i' of `outcomet'
local cl : word `i' of `colums'
putexcel `cl'9="`yt'"

forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
local xt : word `j' of `explanitaryt'
local D : word `j' of `treatment'
local Dt : word `j' of `treatmentt'
quietly generate xD = `D'*`x' 
quietly regress `y' xD `x' `D', robust

local t1 = _b[xD]/_se[xD]
local p1 =2*ttail(e(df_r),abs(`t1'))
local B1 =_b[xD]


quietly regress `y' `x' xD `D' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local Ot = _b[xD]/_se[xD]
local Op =2*ttail(e(df_r),abs(`Ot'))
local OB1 =_b[xD]

quietly regress `y' `x' xD `D' sample1 sample2 sample3 sample4 sample5, robust
local st = _b[xD]/_se[xD]
local sp =2*ttail(e(df_r),abs(`st'))
local sB1 =_b[xD]

quietly regress `y' `x' xD `D' Demo2_Gender Demo4_Education Demo1_Age17, robust
local ct = _b[xD]/_se[xD]
local cp =2*ttail(e(df_r),abs(`ct'))
local cB1 =_b[xD]


local rw = `j'+10
putexcel B`rw'="`xt'"

if (`p1'>.1 &`Op'>.1 & `sp'>.1 & `cp'>.1) {
putexcel `cl'`rw'="N/S"
if `p1' <=.1 |`Op'<=.1 |`sp'<=.1 |`cp'<=.1 {
putexcel `cl'`rw'="Mixed"
}
if (`p1' <=.1 |`Op'<=.1 |`sp'<=.1 |`cp'<=.1) & (`B1'>0 & `OB1'>0 & `sB1'>0 & `cB1'>0) {
putexcel `cl'`rw'="Positive"
}
if (`p1' <=.1 |`Op'<=.1 |`sp'<=.1 |`cp'<=.1) & (`B1'<0 & `OB1'<0 & `sB1'<0 & `cB1'<0) {
putexcel `cl'`rw'="Negative"
}

}

quietly drop xD
}
}
