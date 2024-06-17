


ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern








///(1)/////
foreach y in StrPrac_Score StrPrac_PScor StrPrac_Clk StrPrac_Accu StrPrac2_Score StrPrac2_PScor StrPrac2_Clk StrPrac2_Accu StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu StrPracDiff StrPracPDiff StrPracCDiff StrPracADiff {
	
	
display"`y'"

foreach x in WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_WitFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced Econ5_WithoutElectricity WarExp17_PercVul WarExpI_KnowInjKill WarExpI_NKnowInjKill WarExpI_MKnowInjKill WarExpI_FamIFriKRelK WarExpI_WitnessOth WarExpI_NWitnessOth WarExpI_MWitnessOth WarExpI_WitHumViol WarExpI_Self WarExpI_NSelf WarExpI_MSelf WarExpI_Any WarExpI_NAny WarExpI_MAny WarExpI_CmbtBatt WarExpI_PersHumRV {

quietly regress `y' `x' , robust
local t = _b[`x']/_se[`x']
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[`x']
local SE = _se[`x']
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

display " `B1r'(`SEr')`star'"

}
}


///(2)////

local outcome StrTreatDiff StrTreatPDiff StrTreatCDiff StrTreatADiff
       
local explanitary WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_WitFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced Econ5_WithoutElectricity WarExp17_PercVul WarExpI_KnowInjKill WarExpI_NKnowInjKill WarExpI_MKnowInjKill WarExpI_FamIFriKRelK WarExpI_WitnessOth WarExpI_NWitnessOth WarExpI_MWitnessOth WarExpI_WitHumViol WarExpI_Self WarExpI_NSelf WarExpI_MSelf WarExpI_Any WarExpI_NAny WarExpI_MAny WarExpI_CmbtBatt WarExpI_PersHumRV


local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = `x'*StrGroup 
quietly regress `y' xD `x' StrGroup, robust
local t = _b[xD]/_se[xD]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[xD]
local SE = _se[xD]

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


display " `B1r'(`SEr')`star'"

quietly drop xD
}
}


local outcome StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu
local basecontrol StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu

local len_outcome : word count `outcome'
local len_explanitary : word count `explanitary'
forval i=1/`len_outcome' {
local y : word `i' of `outcome'
local c : word `i' of `basecontrol'
display "`y'"
forval j=1/`len_explanitary' {
local x : word `j' of `explanitary'
quietly generate xD = `x'*StrGroup 
quietly regress `y' xD `x' StrGroup `c', robust
local t = _b[xD]/_se[xD]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[xD]
local SE = _se[xD]

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


display " `B1r'(`SEr')`star'"

quietly drop xD
}
}

///(3)///



//////////////////////////////////////////////////////////////

foreach y in ProsCostlessSharing ProsSharing ProsCostlessEnvy ProsEnvy ProsCostlessSharTi ProsSharTi ProsCostlessEnvyTi ProsEnvyTi ProsCostlessSharCC ProsSharCC ProsCostlessEnvyCC ProsEnvyCC Ntwk1_Organizations Ntwk2I_OrgDef Trust1_KnowSeller Trust2_Peo Trust3_Family Trust4_Neighbors Trust5_OtherEthnic Trust6_Patient Trust_7PaidWait Trust9_Risk {

display "`y'"
foreach x in WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_WitFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced Econ5_WithoutElectricity WarExp17_PercVul WarExpI_KnowInjKill WarExpI_NKnowInjKill WarExpI_MKnowInjKill WarExpI_FamIFriKRelK WarExpI_WitnessOth WarExpI_NWitnessOth WarExpI_MWitnessOth WarExpI_WitHumViol WarExpI_Self WarExpI_NSelf WarExpI_MSelf WarExpI_Any WarExpI_NAny WarExpI_MAny WarExpI_CmbtBatt WarExpI_PersHumRV {
	
quietly generate xD = `x'*StrGroup 
quietly regress `y' StrTreat_Score xD `x' StrGroup StrBase_Score, robust
local t = _b[StrTreat_Score]/_se[StrTreat_Score]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[StrTreat_Score]
local SE = _se[StrTreat_Score]

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


display " `B1r'(`SEr')`star'"

quietly drop xD
}
}



				

local basecontrol StrBase_Score StrBase_PScor StrBase_Clk StrBase_Accu

local outcome ProsCostlessSharing ProsSharing ProsCostlessEnvy ProsEnvy ProsCostlessSharTi ProsSharTi ProsCostlessEnvyTi ProsEnvyTi ProsCostlessSharCC ProsSharCC ProsCostlessEnvyCC ProsEnvyCC Ntwk1_Organizations Ntwk2I_OrgDef Trust1_KnowSeller Trust2_Peo Trust3_Family Trust4_Neighbors Trust5_OtherEthnic Trust6_Patient Trust_7PaidWait Trust9_Risk {
local outcome_l : word count `outcome'

local mediator StrTreat_Score StrTreat_PScor StrTreat_Clk StrTreat_Accu 
local mediatorbc StrTreatDiff StrTreatPDiff StrTreatCDiff StrTreatADiff

local explanitary WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_3_Attacked WarExp18_4_Prizoner WarExp18_5_Injured WarExp18_6_ForcedLabor WarExp18_7_WitAttackBattle WarExp18_8_WitBeating WarExp18_9_WitKilling WarExp18_10_WitR WarExp18_11_WitFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExp2_LeaveHome WarExp3_ReturnHome WarExp5_HearFight WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced Econ5_WithoutElectricity WarExp17_PercVul WarExpI_KnowInjKill WarExpI_NKnowInjKill WarExpI_MKnowInjKill WarExpI_FamIFriKRelK WarExpI_WitnessOth WarExpI_NWitnessOth WarExpI_MWitnessOth WarExpI_WitHumViol WarExpI_Self WarExpI_NSelf WarExpI_MSelf WarExpI_Any WarExpI_NAny WarExpI_MAny WarExpI_CmbtBatt WarExpI_PersHumRV
local explanitary_l  : word count `explanitary'




program prg, rclass
version 17
regress StrTreat_Score WarExp18_1_ShotAt##StrGroup , robust
local B1 =_b[WarExp18_1_ShotAt]
regress ProsCostlessSharing StrTreat_Score WarExp18_1_ShotAt, robust
local B2 =_b[StrTreat_Score]
return scalar M = `B1'*`B2'
end
bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p =2*ttail(e(df_r),abs(`t'))
local B1 = _b[_bs_1]
local SE = _se[_bs_1]
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
local mv1 = "`B1r'(`SEr')`star'"
display "`mv1'"

warExpI_NFull
warExpI_MFull
