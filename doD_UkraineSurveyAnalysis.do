
////table of contents///
///1)Full Mediation Analisys 
////a)regress X on M  logit X on M ///binary outcomes
////b)regress Y on X
////c)calculate indirect effects, bootstrap and and interpret confidence intervals
////of psychological tunneling mediating war experience effect on civic and prosocial behaviors
////of social networks, civic and prosocial behaviors that mediate war experience effect on depression, anxiety, stress, focusing
///2)Variable Selection Methods
////a)Model fit and multicollinarity correlation matricies
/////i)For each outcome; For each set of explanitary variables; Cycle through controls; List controls that raise the adjR2 beyond some threshold
/////ii)With this list of controls for each set of explanitary variables for each outcome; Correlation matrix across variables to check for multicollinarity. 
////b)Lasso Variable selection
/////i)ssc install elasticnet
/////ii)lasso dependent_variable independent_variables, lambda(auto) family(gaussian) ///gaussian for continuous outcomes ///lassologit dependent_variable independent_variables, lambda(auto)
///3)Present final models.
////a)Drop everything you cant prove with a naked regression and .1 confidence 
////b)Present EACH Final Regression alongside t tests, bar graphs, regression difference charts and difference in difference(if able) 


/// creating a table of coefficients with (SE) and p<.001; ***///
///outcome j=14, demo j=46, econ j=6, network j=69, trust j=7, war j=37, dass21 j=21, pss j=10, satis j=5, child1 j=85, oblasts=24, psych j=4, dictator=4, stroop=5, orgs=13, emostroop=5, pss=10, dass21=21 ///
///-------------------------------------------
///table 1///
///t tests treatment and control group for stroop tests///
forval i=1/5 {
local y : word `i' of `stroop'
display "`y'"
forval j=1/37 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==1
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==0
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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

local tr = round(`t', 0.001)
display "`tr'`star'"

}
}

forval j=1/37 {
local x : word `j' of `war'
display "`x'"
}










///---------------------
forval i=1/5 {
local y : word `i' of `stroop'
display "`y'"

quietly summarize  `y' if StrGroup==1
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if StrGroup==0
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

local star = ""
if `p' < 0.001 {
local star "***"
}
else if 0.001 <=`p' < 0.01 {
 local star "**"
}
else if 0.01 <=`p' < 0.05 {
local star "*"
}
local tr = round(`t', 0.001)
display "`tr'`star'"
}

///outcome j=14, demo j=46, econ j=6, network j=69, trust j=7, war j=37, dass21 j=21, pss j=10, satis j=5, child1 j=85, oblasts=24, psych j=4, dictator=4, stroop=5, orgs=13, emostroop=5, pss=10, dass21=21 ///
///robust, feoblast, lassovars
/// ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern///



forval i=1/4 {
local y : word `i' of `dictator'
display"`y'"
forval j=1/37 {
local x : word `j' of `war'
quietly regress `y' `x' StrBase, robust
local t = _b[StrBase]/_se[StrBase]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[StrBase]
local SE = _se[StrBase]
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

forval j=1/37 {
local x : word `j' of `war'
display "`x'"
}

/// war exposed t test between treatment stroop and control stroop///
forval i=1/5 {
local y : word `i' of `emostroop'
display "`y' Yes"
forval j=1/37 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==1 & StrGroup==0
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==1 & StrGroup==1
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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
local tr = round(`t', 0.001)
display "`tr'`star'"
}

display "`y' No"

forval j=1/37 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==0 & StrGroup==0
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==0 & StrGroup==1
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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
local tr = round(`t', 0.001)
display "`tr'`star'"
}


}





forval i=1/4 {
local y : word `i' of `dictator'
display"`y'"
forval j=1/37 {
local x : word `j' of `war'
quietly regress `y' `x' ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
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

forval j=1/37 {
local x : word `j' of `war'
display "`x'"
}

/// table of stroop test, war experience interacting with treatments///

local outcome StrTreat StrComp StrChoice StrTreatDiff StrCompDiff 

forval i=1/5 {
local y : word `i' of `outcome'
display "`y'"
forval j=1/37 {
local w : word `j' of `war'
quietly generate x = `w'*StrGroup
quietly regress `y' x `w' StrGroup ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local t = _b[x]/_se[x]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[x]
local SE = _se[x]
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

drop x
}
}

///controling for baseline scores///
forval i=4/8 {
local y : word `i' of `outcome'
display "`y'
forval j=1/37 {
local w : word `j' of `war'
quietly generate x = `w'*StrGroup
quietly regress `y' x `w' StrGroup ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern, robust
local t = _b[x]/_se[x]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[x]
local SE = _se[x]
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
display "`B1r'(`SEr')`star'"

drop x
}
}


}
///oblast FE///
forval i=1/14 {
local y : word `i' of `outcome'
display "`y'--------------------------------------------"
forval j=1/37 {
local w : word `j' of `war'
quietly generate x = `w'*StrGroup
quietly regress `y' x `w' StrGroup StrBase ObNoAns ObIvano ObVolyn ObVinny ObDnipr ObDones ObZhyto ObZakar ObZapor ObKyivs ObKirov ObLucha ObLvivs ObMykol ObOdess ObPolta ObRivne ObSumsk ObTerno ObZhark ObZhers ObZhmel ObCherk ObChern
local t = _b[x]/_se[x]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[x]
local SE = _se[x]
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
if `p' < 0.1 {
display "`w' `B1r'`star'(`SEr')"
}
drop x
}
}




///outcome j=14, demo j=46, econ j=6, network j=69, trust j=7, war j=37, dass21 j=21, pss j=10, satis j=5, child1 j=85, oblasts=24, psych j=4 ///

///////select significant control variables based off adjR^2 and p values as a control in regression correlated with y//////

local control `demo' 
foreach w in `war' {
	display "`w'"
	forval i=1/46 {
		local X : word `i' of `control'
		quietly regress StrBase `w', robust
		local aR2=e(r2_a)
		quietly regress StrBase `w' `X', robust
		local aR2C=e(r2_a)
		
		if `aR2'+.1 < `aR2C'{
		local D = `aR2C' - `aR2'
		display "`X': `D'"
		}
	}
	}
	
	
	
	
foreach w in `war' {
display "`w':`X`w'v' "
}


////select possible instruments that are correlated with `war'

local zORx `demo' `econ' `network' `trust' `satis' PSS dassSTR dassANX dassDEP
foreach war in `StrBase_war' {
	local Z`war' 
	local Z`war'v
	forval i=1/130 {
		local Z : word `i' of `zORx'
		quietly regress `war' `Z' `X`war'', robust

		local t = _b[`Z']/_se[`Z']
		local p =2*ttail(e(df_r),abs(`t'))
		local B1 =_b[`Z']
		local SE = _se[`Z']
		local B1r = round(`B1', 0.001)
		local SEr = round(`SE', 0.001)

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
		if `p' < .001{	
			local Z`war' "`Z`war'' `Z'"
			local Z`war'v "`Z`war'v' `Z'`B1r'(`SEr')`star'"
		}
		}
		}
		
		
		
///show each explanitary variable with instruments ////
foreach war in `StrBase_war' {
display "`war':`Z`war''"
}









-------------------------------------------------------------------------------------------------------------------

/// Survey order groups and outcomes ///

forval i=1/8 {
local y : word `i' of `outcome'
display "`y'"
forval j=1/29 {
local w : word `j' of `war'
generate x = `w'*
quietly regress `y' x `w' if Group1T ==1 | Group1C==1
local t = _b[x]/_se[x]
local p =2*ttail(e(df_r),abs(`t'))
local B1 =_b[x]
local SE = _se[x]
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
display "`B1r'`star'(`SEr')"
drop x
}
}

forval j=1/29 {
local x : word `j' of `war'
display "`x'"
}

///t tests treatment and control group for stroop tests///
forval i=1/8 {
local y : word `i' of `outcome'
display "`y'"

quietly summarize  `y' if StrGroup==1
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if StrGroup==0
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

local star = ""
if `p' < 0.001 {
local star "***"
}
else if 0.001 <=`p' < 0.01 {
 local star "**"
}
else if 0.01 <=`p' < 0.05 {
local star "*"
}
local tr = round(`t', 0.001)
display "`tr'`star'"
}

///t tests between group 2 and 3 prosocial tests///
forval i=1/12 {
local y : word `i' of `outcome'
display "`y'"

quietly summarize  `y' if Group3T==1 | Group3C==1
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if Group2T==1 | Group2C==1
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

local star = ""
if `p' < 0.001 {
local star "***"
}
else if 0.001 <=`p' < 0.01 {
 local star "**"
}
else if 0.01 <=`p' < 0.05 {
local star "*"
}
local tr = round(`t', 0.001)
display "`tr'`star'"
}

/// t test war binary answers yes no with outcome vars///

forval i=1/12 {
local y : word `i' of `outcome'
display "`y'"
forval j=1/29 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==1
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==0
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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
local tr = round(`t', 0.001)
display "`tr'`star'"
}
}

forval j=1/29 {
local x : word `j' of `war'
display "`x'"
}

///t test comparing t stats of stroop treatment and control groups between war and nonwar persons///

/// war exposed t test between treatment stroop and control stroop///
forval i=1/12 {
local y : word `i' of `outcome'
display "`y' Yes"
forval j=1/29 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==1 & StrGroup==0
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==1 & StrGroup==1
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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
local tr = round(`t', 0.001)
display "`tr'`star'"
}

display "`y' No"

forval j=1/29 {
local x : word `j' of `war'

quietly summarize  `y' if `x'==0 & StrGroup==0
local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

quietly summarize  `y' if `x'==0 & StrGroup==1
local mean2 = r(mean)
local sd2 = r(sd)
local n2 = r(N)

local t = (`mean1' - `mean2') / sqrt((`sd1'^2/`n1') + (`sd2'^2/`n2'))
local df = `n1' + `n2' - 2
local p = 2 * ttail(`df', abs(`t'))

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
local tr = round(`t', 0.001)
display "`tr'`star'"
}


}


forval j=1/29 {
local x : word `j' of `war'
display "`x'"
}





twoway (lfit StrBase WarExp16_Cover if StrGroup==1, mcolor(red)) (lfit StrTreat WarExp16_Cover if StrGroup==1, mcolor(blue)) (scatter StrBase WarExp16_Cover if StrGroup==1, msize(0.1) mcolor(red)) (scatter StrTreat WarExp16_Cover if StrGroup==1, msize(0.1) mcolor(blue))


twoway (histogram StrBase if WarExp18_2_Explosions==1 , fcolor(none) lcolor(blue)) (histogram StrTreat if WarExp18_2_Explosions==1 , fcolor(none) lcolor(red))

twoway (lfit StroopBas WarExp17_PercievedVulnerability if Group1T==1 | Group2T==1 | Group3T==1) (lfit StroopBas WarExp17_PercievedVulnerability if Group1C==1 | Group2C==1 | Group3C==1) (scatter StroopBas WarExp17_PercievedVulnerability if Group1T==1 | Group2T==1 | Group3T==1) (scatter StroopBas WarExp17_PercievedVulnerability if Group1C==1 | Group2C==1 | Group3C==1)

twoway (lfitci Stroop DASS_Anxiety if Group1T==1 | Group2T==1 | Group3T==1) (lfitci Stroop DASS_Anxiety if Group1C==1 | Group2C==1 | Group3C==1) (scatter Stroop DASS_Anxiety if Group1T==1 | Group2T==1 |   Group3T==1) (scatter Stroop DASS_Anxiety if Group1C==1 | Group2C==1 | Group3C==1) 

twoway (histogram StroopDiff if Group2T==1, frequency fcolor(none) lcolor(red) xtick(`mean_value')) (histogram StroopDiff if Group2C==1, frequenc fcolor(none) lcolor(black) xtick(`mean_value2')), legend(order(1 "Emotional Treatments" 2 "Control"))
capture scc install binscatter 

summarize StroopDiff if Group2T == 1, meanonly
local mean_value = r(mean)
summarize StroopDiff if Group2C == 1, meanonly
local mean_value2 = r(mean)
twoway (histogram StroopDiff if Group2T==1, fcolor(none) lcolor(red) xtick(`mean_value')) (histogram StroopDiff if Group2C==1, fcolor(none) lcolor(black) xtick(`mean_value2')), legend(order(1 "Emotional Treatments" 2 "Control"))
twoway (histogram StroopDiff if Group2T==1, frequency fcolor(none) lcolor(red) xtick(`mean_value')) (histogram StroopDiff if Group2C==1, frequenc fcolor(none) lcolor(black) xtick(`mean_value2')), legend(order(1 "Emotional Treatments" 2 "Control"))

--------------------------------------------------------------------------------------------------------

foreach var in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
	foreach group in Group1T Group1C Group2T Group2C Group3T Group3C {
		gen `var'_`group'=.
		replace `var'_`group'= `var' if `group'==1
	}
}
graph bar (mean) StrPrac_Group1T StrPrac_Group1C StrPrac_Group2T StrPrac_Group2C StrPrac_Group3T StrPrac_Group3C , asyvars
--------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------

local warvar WarExp2_LeaveHome WarExp3_ReturnHome WarExp6_SeeFight WarExp7_WitnessInjured WarExp8_FamilyInjured WarExp9_FamilyKilled WarExp10_RelativesInjured WarExp11_RelativesKilled WarExp12_FriendInjured WarExp13_FriendKilled WarExp14_FearBombing WarExp15_KnowDisplaced WarExp18_1_ShotAt WarExp18_2_Explosions WarExp18_11_WitFamInjMur WarExp18_12_MultFriendInjMur WarExp18_13_PropertyDestroyed WarExp18_14_NoAns

local warnames LeavHome RetHome SeeFight WitInj FamInj FamKil RelInj RelKil FrInj FrKil FearBomb KnoDispl ShotAt WitFamInjM MultFriInjM PropDest NoAns

foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
forval i=1/17 {
	local wvar : word `i' of `warvar'
	local wnam : word `i' of `warnames'
	generate `yvar'_`wnam'Y=. 
	replace `yvar'_`wnam'Y= `yvar' if `wvar'==1
	generate `yvar'_`wnam'N=. 
	replace `yvar'_`wnam'N= `yvar' if `wvar'==0
}
}

graph bar (mean) StrTreat StrComp StrChoice StrTreatDiff StrCompDiff, over( WarExp7_WitnessInjured ) asyvars

graph bar (mean) StrTreat StrComp StrChoice StrTreatDiff StrCompDiff, over( WarExp7_WitnessInjured ) asyvars





--------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------

local warindexvars WarExpI_KnowInjKill WarExpI_WitnessOth WarExpI_Self WarExpI_Any
local warindexnames KnInjKil WitOth Self Any

foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
	forval i=1/4  {
		local wvI : word `i' of `warindexvars'
		local wnI : word `i' of `warindexnames'
		gen `yvar'_`wnI'Y=. 
		replace `yvar'_`wnI'Y= `yvar' if `wvI' >= 1
		gen `yvar'_`wnI'N=. 
		replace `yvar'_`wnI'N= `yvar' if `wvI' == 0
	}
}

graph bar (mean) StrChoice_KnInjKilY StrChoice_KnInjKilN StrChoice_WitOthY StrChoice_WitOthN StrChoice_SelfY StrChoice_SelfN StrChoice_AnyY StrChoice_AnyN , asyvars



-----------------------------------------------------------------

///getting a graph with confidence intervals///

///creating the variables///
local warindexvars WarExpI_KnowInjKill WarExpI_WitnessOth WarExpI_Self WarExpI_Any
local warindexnames KnInjKil WitOth Self Any

foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
	forval i=1/4  {
		local wvI : word `i' of `warindexvars'
		local wnI : word `i' of `warindexnames'
		quietly summarize  `yvar' if 
		generate m`yvar'_`wnI' = r(mean)
		label variable m`yvar'_`wnI' "mean `yvar' `wnI'"
		generate sd`yvar'_`wnI' = r(sd)
		label variable sd`yvar'_`wnI' "sd `yvar' `wnI'"
		generate n`yvar'_`wnI' = r(N)
		label variable n`yvar'_`wnI' "n `yvar' `wnI'"
		generate hi`yvar'_`wnI' = hi`yvar'_`wnI' + invttail(n`yvar'_`wnI'-1,0.025)*(sd`yvar'_`wnI' / sqrt(n`yvar'_`wnI'))
		label variable hi`yvar'_`wnI' "hi `yvar' `wnI'"
		generate low`yvar'_`wnI' = low`yvar'_`wnI' - invttail(n`yvar'_`wnI'-1,0.025)*(sd`yvar'_`wnI' / sqrt(n`yvar'_`wnI'))
		label variable low`yvar'_`wnI' "low `yvar' `wnI'"
	}
}

local warindexvars WarExpI_KnowInjKill WarExpI_WitnessOth WarExpI_Self WarExpI_Any
local warindexnames KnInjKil WitOth Self Any

foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
	forval i= 0/1 {                  ///stroop treatment group///
	forval j= 1/6 {
		quietly summarize  `yvar' if StrGroup==`i' | SurveyOrderGroup== `j'
		generate m`yvar'`i'_`j' = r(mean)
		label variable m`yvar'`i'_`j' "mean `yvar'`i'_`j'"
		generate sd`yvar'`i'_`j' = r(sd)
		label variable sd`yvar'_`i'`j' "sd `yvar'`i'_`j'"
		generate n`yvar'`i'_`j' = r(N)
		label variable n`yvar'`i'_`j' "n `yvar'`i'_`j'"
		generate hi`yvar'`i'_`j' = m`yvar'`i'_`j' + invttail(n`yvar'`i'_`j'-1,0.025)*(sd`yvar'`i'_`j' / sqrt(n`yvar'`i'_`j'))
		label variable hi`yvar'`i'_`j' "95conf hi `yvar'`i'_`j'"
		generate low`yvar'`i'_`j' = m`yvar'`i'_`j' - invttail(n`yvar'`i'_`j'-1,0.025)*(sd`yvar'`i'_`j' / sqrt(n`yvar'`i'_`j'))
		label variable low`yvar'`i'_`j' "95conf low `yvar'`i'_`j'"
		
		
	}
foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
		quietly summarize  `yvar'
		generate m`yvar' = r(mean)
		label variable m`yvar' "mean `yvar'"
		generate sd`yvar' = r(sd)
		label variable sd`yvar' "sd `yvar'"
		generate n`yvar' = r(N)
		label variable n`yvar' "n `yvar'"
		generate hi`yvar' = m`yvar' + invttail(n`yvar'-1,0.025)*(sd`yvar' / sqrt(n`yvar'))
		label variable hi`yvar' "95conf hi `yvar'"
		generate low`yvar' = m`yvar' - invttail(n`yvar'-1,0.025)*(sd`yvar' / sqrt(n`yvar'))
		label variable low`yvar' "95conf low `yvar'"
		
		
	}
	
	
	foreach yvar in StrPrac StrPrac2 StrBase StrTreat StrComp StrChoice StrTreatDiff StrCompDiff ProsCostlessSharing ProsCostlessEnvy ProsSharing ProsEnvy {
		quietly summarize  `yvar'
		local m`yvar' = r(mean)
		local sd`yvar' = r(sd)
		local n`yvar' = r(N)
		generate hi`yvar' = m`yvar' + invttail(n`yvar'-1,0.025)*(sd`yvar' / sqrt(n`yvar'))
		label variable hi`yvar' "95conf hi `yvar'"
		generate low`yvar' = m`yvar' - invttail(n`yvar'-1,0.025)*(sd`yvar' / sqrt(n`yvar'))
		label variable low`yvar' "95conf low `yvar'"
	}

	generate SurveyOrderGroup_StrGroup= StrGroup if SurveyOrderGroup ==1
	replace SurveyOrderGroup_StrGroup= StrGroup+5 if SurveyOrderGroup ==2
	replace SurveyOrderGroup_StrGroup= StrGroup+10 if SurveyOrderGroup ==3
	twoway (bar mStrTreat SurveyOrderGroup_StrGroup) (rcap hiStrTreat lowStrTreat SurveyOrderGroup_StrGroup)
	
	
quietly summarize  `yvar' if StrGroup==1

local mean1 = r(mean)
local sd1 = r(sd)
local n1 = r(N)

graph bar mStrTreat, over (StrGroup) over (SurveyOrderGroup)




graph twoway (bar meanStrTreat race) (rcap hiwrite lowrite race), by(ses)



-----------------------------------------------------------------------------------------
///basic mean graphs grouped///
graph bar (mean) StrPrac,  over(StrGroup) over(SurveyOrderGroup) asyvars
graph bar (mean) ProsocialEnvy,  over(Group) asyvars
graph bar (mean) StrPrac, over(StrGroup) over(WarExpI_Self) asyvars
graph bar (mean) StrPrac StrPrac2, over(StrGroup) over(WarExpI_Self) asyvars
graph bar (mean) StrBase StrTreat, over(StrGroup) over(WarExpI_Self) asyvars
graph bar (mean) StrBase StrTreat, over(WarExpI_Self) over(Group) asyvars 
-----------------------------------------------------------------------
///probit model, when y is binary. OLS does probide marginal probabilities. ///
regress yvar x1var x2var
predict yhat_lpm
sum yhat_lpm /// prediction not in 0-1 range. logit is log notmal distribution, probit is notmal distribution
///logit=G(XB)=e^XB/(1+e^XB)///
///probit=G(XB)=integral(2pi)^(-5) exp ((-XB^2)/2)///
////these make limits to be 0 or 1////
probit yvar x1var x2var ///coefficients NOT marginal effects
predict yhat_pr
sum yhat_pr ///now redicted y is between 0 and 1///
mfx /// now for coefficients, take derivative wrt XB and = BG'(XB), mfx gives us marginal effects with useful interpretation

logit yvar x1var x2var///not marginal effects///
mfx /// now gives us marginal effects
mfx, at(mean) ///default option
mfx, at(mean x1var=10)   ///marginal effects at x1var=10///
mfx, at(mean x1var=0) ///marginal effect for individuals with x1var=0///
mfx, at(mean x1var=1) ///marginal effect for individuals with x1var=1///

logistic yvar x1var x2var ///logit model; logistic model/odds ratio interpretation of logit probability predicor. The odds of event is ratio of p(eoccur)/p(enotoccur) . if coefficient =2, for every 1 increase in x, the odds ratio doubles. 

///R^2, not regression model. uses psuedo R^2=1-(L1/L0) which uses log likelihood joint probability of seeing the results we see. Higher probability, better model. L1 is model, L0 is model without xvars///

lstat ///classification table- percentage of correctly predicted outcomes. above 50% is 1, beow is 0. sensitivity- predicting 1, specificity- predicting 0. perfect model = 200

///joint significance testing F stat, not regression model. use likelihood ratio test statistig, uses log likelihood instead of ssr. LR=2*(lunrestricted-lrestricted), p tests null that all coefficients is 0///

test x1var x2var /// joint significance testing of x1var and x2var///
-----------------------------------------------------------------------------------
regress yvar x1var x2var
estat hettest /// breuch pagan test for ehat^2 correlation with X heteroskedasticity
////transformations///
/// Goldfield quant, regress 1/3 and 3/3 N ordered values by xvar causing heteroskedasticity, compare difference as in F test
estat imtest, white ///like breugh pagan, but regress on all regressors, cross products and squares
reg yvar xvar, robust ///robust, allowing error to vary per observation according to heteroskedasticity 
reg yvar x1var, cluster(x2var)///clustered SE, allowing error to vary per observation according to heteroskedasticity, where error terms aare interrelated to eachother in clusters
. bootstrap: regress yvar xvar /// random sampling with replacement regression estimator distribution estimaion
. jackknife: regress yvar xvar  /// systematically omitting one observation regression estimator distribution estimation


