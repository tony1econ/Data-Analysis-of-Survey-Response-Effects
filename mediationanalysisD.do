//mediation ProsCostlessSharing///

///StrTreatDiff///


// WarExp18_1_ShotAt
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B1 =_b[WarExp18_1_ShotAt]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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

// WarExp18_2_Explosions
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_2_Explosions if StrGroup==1, robust
local B1 =_b[WarExp18_2_Explosions]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_2_Explosions if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2 = "`B1r'(`SEr')`star'"

// WarExp18_3_Attacked
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_3_Attacked if StrGroup==1, robust
local B1 =_b[WarExp18_3_Attacked]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_3_Attacked if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3 = "`B1r'(`SEr')`star'"

// Repeat the above pattern for the remaining variables...

// WarExp18_4_Prizoner
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B1 =_b[WarExp18_4_Prizoner]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4 = "`B1r'(`SEr')`star'"

// WarExp18_5_Injured
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_5_Injured if StrGroup==1, robust
local B1 =_b[WarExp18_5_Injured]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_5_Injured if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv5 = "`B1r'(`SEr')`star'"

// Continue the pattern for the remaining variables...

// WarExp18_6_ForcedLabor
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B1 =_b[WarExp18_6_ForcedLabor]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv6 = "`B1r'(`SEr')`star'"

// WarExp18_7_WitAttackBattle
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B1 =_b[WarExp18_7_WitAttackBattle]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv7 = "`B1r'(`SEr')`star'"

// WarExp18_8_WitBeating
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B1 =_b[WarExp18_8_WitBeating]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv8 = "`B1r'(`SEr')`star'"

// WarExp18_9_WitKilling
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B1 =_b[WarExp18_9_WitKilling]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv9 = "`B1r'(`SEr')`star'"

// WarExp18_10_WitR
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_10_WitR if StrGroup==1, robust
local B1 =_b[WarExp18_10_WitR]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_10_WitR if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv10 = "`B1r'(`SEr')`star'

// WarExp18_11_WitFamInjMur
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_11_WitFamInjMur]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv11 = "`B1r'(`SEr')`star'"

// WarExp18_12_MultFriendInjMur
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_12_MultFriendInjMur]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv12 = "`B1r'(`SEr')`star'"

// WarExp18_13_PropertyDestroyed
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B1 =_b[WarExp18_13_PropertyDestroyed]
quietly regress ProsCostlessSharing StrTreatDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv13 = "`B1r'(`SEr')`star'"

// WarExp2_LeaveHome
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp2_LeaveHome if StrGroup==1, robust
local B1 =_b[WarExp2_LeaveHome]
quietly regress ProsCostlessSharing StrTreatDiff WarExp2_LeaveHome if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv14 = "`B1r'(`SEr')`star'"

// WarExp3_ReturnHome
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp3_ReturnHome if StrGroup==1, robust
local B1 =_b[WarExp3_ReturnHome]
quietly regress ProsCostlessSharing StrTreatDiff WarExp3_ReturnHome if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv15 = "`B1r'(`SEr')`star'"

// WarExp5_HearFight
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp5_HearFight if StrGroup==1, robust
local B1 =_b[WarExp5_HearFight]
quietly regress ProsCostlessSharing StrTreatDiff WarExp5_HearFight if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv16 = "`B1r'(`SEr')`star'"

// WarExp6_SeeFight
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp6_SeeFight if StrGroup==1, robust
local B1 =_b[WarExp6_SeeFight]
quietly regress ProsCostlessSharing StrTreatDiff WarExp6_SeeFight if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv17 = "`B1r'(`SEr')`star'"

// WarExp7_WitnessInjured
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B1 =_b[WarExp7_WitnessInjured]
quietly regress ProsCostlessSharing StrTreatDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv18 = "`B1r'(`SEr')`star'"

// WarExp8_FamilyInjured
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B1 =_b[WarExp8_FamilyInjured]
quietly regress ProsCostlessSharing StrTreatDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv19 = "`B1r'(`SEr')`star'"

// WarExp9_FamilyKilled
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B1 =_b[WarExp9_FamilyKilled]
quietly regress ProsCostlessSharing StrTreatDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_0 = "`B1r'(`SEr')`star'"

// WarExp10_RelativesInjured
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B1 =_b[WarExp10_RelativesInjured]
quietly regress ProsCostlessSharing StrTreatDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_1 = "`B1r'(`SEr')`star'"


// WarExp11_RelativesKilled
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B1 =_b[WarExp11_RelativesKilled]
quietly regress ProsCostlessSharing StrTreatDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_2 = "`B1r'(`SEr')`star'"

// WarExp12_FriendInjured
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp12_FriendInjured if StrGroup==1, robust
local B1 =_b[WarExp12_FriendInjured]
quietly regress ProsCostlessSharing StrTreatDiff WarExp12_FriendInjured if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_3 = "`B1r'(`SEr')`star'"

// WarExp13_FriendKilled
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp13_FriendKilled if StrGroup==1, robust
local B1 =_b[WarExp13_FriendKilled]
quietly regress ProsCostlessSharing StrTreatDiff WarExp13_FriendKilled if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_4 = "`B1r'(`SEr')`star'"


// WarExp14_FearBombing
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp14_FearBombing if StrGroup==1, robust
local B1 =_b[WarExp14_FearBombing]
quietly regress ProsCostlessSharing StrTreatDiff WarExp14_FearBombing if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_5 = "`B1r'(`SEr')`star'"

// WarExp15_KnowDisplaced
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B1 =_b[WarExp15_KnowDisplaced]
quietly regress ProsCostlessSharing StrTreatDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_6 = "`B1r'(`SEr')`star'"

// Econ5_WithoutElectricity
program prg, rclass
version 17
quietly regress StrTreatDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B1 =_b[Econ5_WithoutElectricity]
quietly regress ProsCostlessSharing StrTreatDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_7 = "`B1r'(`SEr')`star'"


// WarExp17_PercVul
program prg, rclass
version 17
quietly regress StrTreatDiff WarExp17_PercVul if StrGroup==1, robust
local B1 =_b[WarExp17_PercVul]
quietly regress ProsCostlessSharing StrTreatDiff WarExp17_PercVul if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_8 = "`B1r'(`SEr')`star'"

// WarExpI_KnowInjKill
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_KnowInjKill]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_9 = "`B1r'(`SEr')`star'"



// WarExpI_NKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_NKnowInjKill]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_0 = "`B1r'(`SEr')`star'"

// WarExpI_MKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_MKnowInjKill]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_1 = "`B1r'(`SEr')`star'"


// WarExpI_FamIFriKRelK
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B1 =_b[WarExpI_FamIFriKRelK]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_2 = "`B1r'(`SEr')`star'"

// WarExpI_WitnessOth
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_WitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_WitnessOth]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_WitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_3 = "`B1r'(`SEr')`star'"


// WarExpI_NWitnessOth
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_NWitnessOth]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_4 = "`B1r'(`SEr')`star'"

// WarExpI_MWitnessOth
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_MWitnessOth]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_5 = "`B1r'(`SEr')`star'"



// WarExpI_WitHumViol
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_WitHumViol if StrGroup==1, robust
local B1 =_b[WarExpI_WitHumViol]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_WitHumViol if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_6 = "`B1r'(`SEr')`star'"

// WarExpI_Self
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_Self if StrGroup==1, robust
local B1 =_b[WarExpI_Self]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_Self if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_7 = "`B1r'(`SEr')`star'"

// WarExpI_NSelf
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_NSelf if StrGroup==1, robust
local B1 =_b[WarExpI_NSelf]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_NSelf if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_8 = "`B1r'(`SEr')`star'"

// WarExpI_MSelf
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_MSelf if StrGroup==1, robust
local B1 =_b[WarExpI_MSelf]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_MSelf if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_9 = "`B1r'(`SEr')`star'"


// WarExpI_Any
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_Any if StrGroup==1, robust
local B1 =_b[WarExpI_Any]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_Any if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_0 = "`B1r'(`SEr')`star'"

// WarExpI_NAny
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_NAny if StrGroup==1, robust
local B1 =_b[WarExpI_NAny]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_NAny if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_1 = "`B1r'(`SEr')`star'"


// WarExpI_MAny
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_MAny if StrGroup==1, robust
local B1 =_b[WarExpI_MAny]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_MAny if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_2 = "`B1r'(`SEr')`star'"

// WarExpI_CmbtBatt
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B1 =_b[WarExpI_CmbtBatt]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_3 = "`B1r'(`SEr')`star'"


// WarExpI_PersHumRV
program prg, rclass
version 17
quietly regress StrTreatDiff WarExpI_PersHumRV if StrGroup==1, robust
local B1 =_b[WarExpI_PersHumRV]
quietly regress ProsCostlessSharing StrTreatDiff WarExpI_PersHumRV if StrGroup==1, robust
local B2 =_b[StrTreatDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_4 = "`B1r'(`SEr')`star'"


///StrTreatPDiff///


// WarExp18_1_ShotAt
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B1 =_b[WarExp18_1_ShotAt]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_1 = "`B1r'(`SEr')`star'"

// WarExp18_2_Explosions
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_2_Explosions if StrGroup==1, robust
local B1 =_b[WarExp18_2_Explosions]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_2_Explosions if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_2 = "`B1r'(`SEr')`star'"

// WarExp18_3_Attacked
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_3_Attacked if StrGroup==1, robust
local B1 =_b[WarExp18_3_Attacked]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_3_Attacked if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_3 = "`B1r'(`SEr')`star'"

// Repeat the above pattern for the remaining variables...

// WarExp18_4_Prizoner
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B1 =_b[WarExp18_4_Prizoner]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_4 = "`B1r'(`SEr')`star'"

// WarExp18_5_Injured
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_5_Injured if StrGroup==1, robust
local B1 =_b[WarExp18_5_Injured]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_5_Injured if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_5 = "`B1r'(`SEr')`star'"

// Continue the pattern for the remaining variables...

// WarExp18_6_ForcedLabor
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B1 =_b[WarExp18_6_ForcedLabor]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_6 = "`B1r'(`SEr')`star'"

// WarExp18_7_WitAttackBattle
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B1 =_b[WarExp18_7_WitAttackBattle]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_7 = "`B1r'(`SEr')`star'"

// WarExp18_8_WitBeating
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B1 =_b[WarExp18_8_WitBeating]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_8 = "`B1r'(`SEr')`star'"

// WarExp18_9_WitKilling
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B1 =_b[WarExp18_9_WitKilling]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_9 = "`B1r'(`SEr')`star'"

// WarExp18_10_WitR
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_10_WitR if StrGroup==1, robust
local B1 =_b[WarExp18_10_WitR]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_10_WitR if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_10 = "`B1r'(`SEr')`star'

// WarExp18_11_WitFamInjMur
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_11_WitFamInjMur]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_11 = "`B1r'(`SEr')`star'"

// WarExp18_12_MultFriendInjMur
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_12_MultFriendInjMur]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_12 = "`B1r'(`SEr')`star'"

// WarExp18_13_PropertyDestroyed
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B1 =_b[WarExp18_13_PropertyDestroyed]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_13 = "`B1r'(`SEr')`star'"

// WarExp2_LeaveHome
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp2_LeaveHome if StrGroup==1, robust
local B1 =_b[WarExp2_LeaveHome]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp2_LeaveHome if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_14 = "`B1r'(`SEr')`star'"

// WarExp3_ReturnHome
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp3_ReturnHome if StrGroup==1, robust
local B1 =_b[WarExp3_ReturnHome]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp3_ReturnHome if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_15 = "`B1r'(`SEr')`star'"

// WarExp5_HearFight
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp5_HearFight if StrGroup==1, robust
local B1 =_b[WarExp5_HearFight]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp5_HearFight if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_16 = "`B1r'(`SEr')`star'"

// WarExp6_SeeFight
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp6_SeeFight if StrGroup==1, robust
local B1 =_b[WarExp6_SeeFight]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp6_SeeFight if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_17 = "`B1r'(`SEr')`star'"

// WarExp7_WitnessInjured
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B1 =_b[WarExp7_WitnessInjured]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_18 = "`B1r'(`SEr')`star'"

// WarExp8_FamilyInjured
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B1 =_b[WarExp8_FamilyInjured]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_19 = "`B1r'(`SEr')`star'"

// WarExp9_FamilyKilled
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B1 =_b[WarExp9_FamilyKilled]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_20 = "`B1r'(`SEr')`star'"

// WarExp10_RelativesInjured
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B1 =_b[WarExp10_RelativesInjured]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_21 = "`B1r'(`SEr')`star'"


// WarExp11_RelativesKilled
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B1 =_b[WarExp11_RelativesKilled]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_22 = "`B1r'(`SEr')`star'"

// WarExp12_FriendInjured
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp12_FriendInjured if StrGroup==1, robust
local B1 =_b[WarExp12_FriendInjured]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp12_FriendInjured if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_23 = "`B1r'(`SEr')`star'"

// WarExp13_FriendKilled
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp13_FriendKilled if StrGroup==1, robust
local B1 =_b[WarExp13_FriendKilled]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp13_FriendKilled if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_24 = "`B1r'(`SEr')`star'"


// WarExp14_FearBombing
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp14_FearBombing if StrGroup==1, robust
local B1 =_b[WarExp14_FearBombing]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp14_FearBombing if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_25 = "`B1r'(`SEr')`star'"

// WarExp15_KnowDisplaced
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B1 =_b[WarExp15_KnowDisplaced]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_26 = "`B1r'(`SEr')`star'"

// Econ5_WithoutElectricity
program prg, rclass
version 17
quietly regress StrTreatPDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B1 =_b[Econ5_WithoutElectricity]
quietly regress ProsCostlessSharing StrTreatPDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_27 = "`B1r'(`SEr')`star'"


// WarExp17_PercVul
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExp17_PercVul if StrGroup==1, robust
local B1 =_b[WarExp17_PercVul]
quietly regress ProsCostlessSharing StrTreatPDiff WarExp17_PercVul if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_28 = "`B1r'(`SEr')`star'"

// WarExpI_KnowInjKill
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_KnowInjKill]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_29 = "`B1r'(`SEr')`star'"



// WarExpI_NKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_NKnowInjKill]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_30 = "`B1r'(`SEr')`star'"

// WarExpI_MKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_MKnowInjKill]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_31 = "`B1r'(`SEr')`star'"


// WarExpI_FamIFriKRelK
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B1 =_b[WarExpI_FamIFriKRelK]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_32 = "`B1r'(`SEr')`star'"

// WarExpI_WitnessOth
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_WitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_WitnessOth]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_WitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_33 = "`B1r'(`SEr')`star'"


// WarExpI_NWitnessOth
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_NWitnessOth]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_34 = "`B1r'(`SEr')`star'"

// WarExpI_MWitnessOth
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_MWitnessOth]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_35 = "`B1r'(`SEr')`star'"



// WarExpI_WitHumv2_iol
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_WitHumv2_iol if StrGroup==1, robust
local B1 =_b[WarExpI_WitHumv2_iol]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_WitHumv2_iol if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_36 = "`B1r'(`SEr')`star'"

// WarExpI_Self
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_Self if StrGroup==1, robust
local B1 =_b[WarExpI_Self]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_Self if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_37 = "`B1r'(`SEr')`star'"

// WarExpI_NSelf
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_NSelf if StrGroup==1, robust
local B1 =_b[WarExpI_NSelf]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_NSelf if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_38 = "`B1r'(`SEr')`star'"

// WarExpI_MSelf
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_MSelf if StrGroup==1, robust
local B1 =_b[WarExpI_MSelf]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_MSelf if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_39 = "`B1r'(`SEr')`star'"


// WarExpI_Any
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_Any if StrGroup==1, robust
local B1 =_b[WarExpI_Any]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_Any if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_40 = "`B1r'(`SEr')`star'"

// WarExpI_NAny
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_NAny if StrGroup==1, robust
local B1 =_b[WarExpI_NAny]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_NAny if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_41 = "`B1r'(`SEr')`star'"


// WarExpI_MAny
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_MAny if StrGroup==1, robust
local B1 =_b[WarExpI_MAny]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_MAny if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_42 = "`B1r'(`SEr')`star'"

// WarExpI_CmbtBatt
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B1 =_b[WarExpI_CmbtBatt]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_43 = "`B1r'(`SEr')`star'"


// WarExpI_PersHumRV
program prg, rclass
version 17
quietly regress StrTreatPDiff WarExpI_PersHumRV if StrGroup==1, robust
local B1 =_b[WarExpI_PersHumRV]
quietly regress ProsCostlessSharing StrTreatPDiff WarExpI_PersHumRV if StrGroup==1, robust
local B2 =_b[StrTreatPDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv2_44 = "`B1r'(`SEr')`star'"


/// StrTreatCDiff///


// WarExp18_1_ShotAt
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B1 =_b[WarExp18_1_ShotAt]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_1_ShotAt if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_1 = "`B1r'(`SEr')`star'"

// WarExp18_2_Explosions
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_2_Explosions if StrGroup==1, robust
local B1 =_b[WarExp18_2_Explosions]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_2_Explosions if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_2 = "`B1r'(`SEr')`star'"

// WarExp18_3_Attacked
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_3_Attacked if StrGroup==1, robust
local B1 =_b[WarExp18_3_Attacked]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_3_Attacked if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_3 = "`B1r'(`SEr')`star'"

// Repeat the above pattern for the remaining variables...

// WarExp18_4_Prizoner
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B1 =_b[WarExp18_4_Prizoner]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_4_Prizoner if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_4 = "`B1r'(`SEr')`star'"

// WarExp18_5_Injured
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_5_Injured if StrGroup==1, robust
local B1 =_b[WarExp18_5_Injured]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_5_Injured if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_5 = "`B1r'(`SEr')`star'"

// Continue the pattern for the remaining variables...

// WarExp18_6_ForcedLabor
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B1 =_b[WarExp18_6_ForcedLabor]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_6 = "`B1r'(`SEr')`star'"

// WarExp18_7_WitAttackBattle
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B1 =_b[WarExp18_7_WitAttackBattle]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_7 = "`B1r'(`SEr')`star'"

// WarExp18_8_WitBeating
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B1 =_b[WarExp18_8_WitBeating]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_8_WitBeating if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_8 = "`B1r'(`SEr')`star'"

// WarExp18_9_WitKilling
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B1 =_b[WarExp18_9_WitKilling]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_9_WitKilling if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_9 = "`B1r'(`SEr')`star'"

// WarExp18_10_WitR
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_10_WitR if StrGroup==1, robust
local B1 =_b[WarExp18_10_WitR]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_10_WitR if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_10 = "`B1r'(`SEr')`star'

// WarExp18_11_WitFamInjMur
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_11_WitFamInjMur]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_11 = "`B1r'(`SEr')`star'"

// WarExp18_12_MultFriendInjMur
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_12_MultFriendInjMur]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_12 = "`B1r'(`SEr')`star'"

// WarExp18_13_PropertyDestroyed
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B1 =_b[WarExp18_13_PropertyDestroyed]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_13 = "`B1r'(`SEr')`star'"

// WarExp2_LeaveHome
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp2_LeaveHome if StrGroup==1, robust
local B1 =_b[WarExp2_LeaveHome]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp2_LeaveHome if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_14 = "`B1r'(`SEr')`star'"

// WarExp3_ReturnHome
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp3_ReturnHome if StrGroup==1, robust
local B1 =_b[WarExp3_ReturnHome]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp3_ReturnHome if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_15 = "`B1r'(`SEr')`star'"

// WarExp5_HearFight
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp5_HearFight if StrGroup==1, robust
local B1 =_b[WarExp5_HearFight]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp5_HearFight if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_16 = "`B1r'(`SEr')`star'"

// WarExp6_SeeFight
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp6_SeeFight if StrGroup==1, robust
local B1 =_b[WarExp6_SeeFight]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp6_SeeFight if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_17 = "`B1r'(`SEr')`star'"

// WarExp7_WitnessInjured
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B1 =_b[WarExp7_WitnessInjured]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp7_WitnessInjured if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_18 = "`B1r'(`SEr')`star'"

// WarExp8_FamilyInjured
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B1 =_b[WarExp8_FamilyInjured]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp8_FamilyInjured if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_19 = "`B1r'(`SEr')`star'"

// WarExp9_FamilyKilled
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B1 =_b[WarExp9_FamilyKilled]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp9_FamilyKilled if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_20 = "`B1r'(`SEr')`star'"

// WarExp10_RelativesInjured
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B1 =_b[WarExp10_RelativesInjured]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp10_RelativesInjured if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_21 = "`B1r'(`SEr')`star'"


// WarExp11_RelativesKilled
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B1 =_b[WarExp11_RelativesKilled]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp11_RelativesKilled if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_22 = "`B1r'(`SEr')`star'"

// WarExp12_FriendInjured
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp12_FriendInjured if StrGroup==1, robust
local B1 =_b[WarExp12_FriendInjured]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp12_FriendInjured if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_23 = "`B1r'(`SEr')`star'"

// WarExp13_FriendKilled
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp13_FriendKilled if StrGroup==1, robust
local B1 =_b[WarExp13_FriendKilled]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp13_FriendKilled if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_24 = "`B1r'(`SEr')`star'"


// WarExp14_FearBombing
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp14_FearBombing if StrGroup==1, robust
local B1 =_b[WarExp14_FearBombing]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp14_FearBombing if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_25 = "`B1r'(`SEr')`star'"

// WarExp15_KnowDisplaced
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B1 =_b[WarExp15_KnowDisplaced]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_26 = "`B1r'(`SEr')`star'"

// Econ5_WithoutElectricity
program prg, rclass
version 17
quietly regress StrTreatCDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B1 =_b[Econ5_WithoutElectricity]
quietly regress ProsCostlessSharing StrTreatCDiff Econ5_WithoutElectricity if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_27 = "`B1r'(`SEr')`star'"


// WarExp17_PercVul
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExp17_PercVul if StrGroup==1, robust
local B1 =_b[WarExp17_PercVul]
quietly regress ProsCostlessSharing StrTreatCDiff WarExp17_PercVul if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_28 = "`B1r'(`SEr')`star'"

// WarExpI_KnowInjKill
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_KnowInjKill]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_KnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_29 = "`B1r'(`SEr')`star'"



// WarExpI_NKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_NKnowInjKill]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_30 = "`B1r'(`SEr')`star'"

// WarExpI_MKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_MKnowInjKill]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_31 = "`B1r'(`SEr')`star'"


// WarExpI_FamIFriKRelK
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B1 =_b[WarExpI_FamIFriKRelK]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_32 = "`B1r'(`SEr')`star'"

// WarExpI_WitnessOth
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_WitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_WitnessOth]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_WitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_33 = "`B1r'(`SEr')`star'"


// WarExpI_NWitnessOth
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_NWitnessOth]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_NWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_34 = "`B1r'(`SEr')`star'"

// WarExpI_MWitnessOth
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_MWitnessOth]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_MWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_35 = "`B1r'(`SEr')`star'"



// WarExpI_WitHumv3_iol
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_WitHumv3_iol if StrGroup==1, robust
local B1 =_b[WarExpI_WitHumv3_iol]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_WitHumv3_iol if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_36 = "`B1r'(`SEr')`star'"

// WarExpI_Self
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_Self if StrGroup==1, robust
local B1 =_b[WarExpI_Self]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_Self if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_37 = "`B1r'(`SEr')`star'"

// WarExpI_NSelf
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_NSelf if StrGroup==1, robust
local B1 =_b[WarExpI_NSelf]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_NSelf if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_38 = "`B1r'(`SEr')`star'"

// WarExpI_MSelf
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_MSelf if StrGroup==1, robust
local B1 =_b[WarExpI_MSelf]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_MSelf if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_39 = "`B1r'(`SEr')`star'"


// WarExpI_Any
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_Any if StrGroup==1, robust
local B1 =_b[WarExpI_Any]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_Any if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_40 = "`B1r'(`SEr')`star'"

// WarExpI_NAny
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_NAny if StrGroup==1, robust
local B1 =_b[WarExpI_NAny]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_NAny if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_41 = "`B1r'(`SEr')`star'"


// WarExpI_MAny
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_MAny if StrGroup==1, robust
local B1 =_b[WarExpI_MAny]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_MAny if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_42 = "`B1r'(`SEr')`star'"

// WarExpI_CmbtBatt
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B1 =_b[WarExpI_CmbtBatt]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_CmbtBatt if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_43 = "`B1r'(`SEr')`star'"


// WarExpI_PersHumRV
program prg, rclass
version 17
quietly regress StrTreatCDiff WarExpI_PersHumRV if StrGroup==1, robust
local B1 =_b[WarExpI_PersHumRV]
quietly regress ProsCostlessSharing StrTreatCDiff WarExpI_PersHumRV if StrGroup==1, robust
local B2 =_b[StrTreatCDiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv3_44 = "`B1r'(`SEr')`star'"



 /// StrTreatADiff ///


// WarExp18_1_ShotAt
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_1_ShotAt if StrGroup==1, robust
local B1 =_b[WarExp18_1_ShotAt]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_1_ShotAt if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_1 = "`B1r'(`SEr')`star'"

// WarExp18_2_Explosions
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_2_Explosions if StrGroup==1, robust
local B1 =_b[WarExp18_2_Explosions]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_2_Explosions if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_2 = "`B1r'(`SEr')`star'"

// WarExp18_3_Attacked
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_3_Attacked if StrGroup==1, robust
local B1 =_b[WarExp18_3_Attacked]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_3_Attacked if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_3 = "`B1r'(`SEr')`star'"

// Repeat the above pattern for the remaining variables...

// WarExp18_4_Prizoner
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_4_Prizoner if StrGroup==1, robust
local B1 =_b[WarExp18_4_Prizoner]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_4_Prizoner if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_4 = "`B1r'(`SEr')`star'"

// WarExp18_5_Injured
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_5_Injured if StrGroup==1, robust
local B1 =_b[WarExp18_5_Injured]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_5_Injured if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_5 = "`B1r'(`SEr')`star'"

// Continue the pattern for the remaining variables...

// WarExp18_6_ForcedLabor
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B1 =_b[WarExp18_6_ForcedLabor]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_6_ForcedLabor if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_6 = "`B1r'(`SEr')`star'"

// WarExp18_7_WitAttackBattle
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B1 =_b[WarExp18_7_WitAttackBattle]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_7_WitAttackBattle if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_7 = "`B1r'(`SEr')`star'"

// WarExp18_8_WitBeating
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_8_WitBeating if StrGroup==1, robust
local B1 =_b[WarExp18_8_WitBeating]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_8_WitBeating if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_8 = "`B1r'(`SEr')`star'"

// WarExp18_9_WitKilling
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_9_WitKilling if StrGroup==1, robust
local B1 =_b[WarExp18_9_WitKilling]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_9_WitKilling if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_9 = "`B1r'(`SEr')`star'"

// WarExp18_10_WitR
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_10_WitR if StrGroup==1, robust
local B1 =_b[WarExp18_10_WitR]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_10_WitR if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_10 = "`B1r'(`SEr')`star'

// WarExp18_11_WitFamInjMur
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_11_WitFamInjMur]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_11_WitFamInjMur if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_11 = "`B1r'(`SEr')`star'"

// WarExp18_12_MultFriendInjMur
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B1 =_b[WarExp18_12_MultFriendInjMur]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_12_MultFriendInjMur if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_12 = "`B1r'(`SEr')`star'"

// WarExp18_13_PropertyDestroyed
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B1 =_b[WarExp18_13_PropertyDestroyed]
quietly regress ProsCostlessSharing StrTreatADiff WarExp18_13_PropertyDestroyed if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_13 = "`B1r'(`SEr')`star'"

// WarExp2_LeaveHome
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp2_LeaveHome if StrGroup==1, robust
local B1 =_b[WarExp2_LeaveHome]
quietly regress ProsCostlessSharing StrTreatADiff WarExp2_LeaveHome if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_14 = "`B1r'(`SEr')`star'"

// WarExp3_ReturnHome
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp3_ReturnHome if StrGroup==1, robust
local B1 =_b[WarExp3_ReturnHome]
quietly regress ProsCostlessSharing StrTreatADiff WarExp3_ReturnHome if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_15 = "`B1r'(`SEr')`star'"

// WarExp5_HearFight
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp5_HearFight if StrGroup==1, robust
local B1 =_b[WarExp5_HearFight]
quietly regress ProsCostlessSharing StrTreatADiff WarExp5_HearFight if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_16 = "`B1r'(`SEr')`star'"

// WarExp6_SeeFight
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp6_SeeFight if StrGroup==1, robust
local B1 =_b[WarExp6_SeeFight]
quietly regress ProsCostlessSharing StrTreatADiff WarExp6_SeeFight if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_17 = "`B1r'(`SEr')`star'"

// WarExp7_WitnessInjured
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp7_WitnessInjured if StrGroup==1, robust
local B1 =_b[WarExp7_WitnessInjured]
quietly regress ProsCostlessSharing StrTreatADiff WarExp7_WitnessInjured if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_18 = "`B1r'(`SEr')`star'"

// WarExp8_FamilyInjured
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp8_FamilyInjured if StrGroup==1, robust
local B1 =_b[WarExp8_FamilyInjured]
quietly regress ProsCostlessSharing StrTreatADiff WarExp8_FamilyInjured if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_19 = "`B1r'(`SEr')`star'"

// WarExp9_FamilyKilled
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp9_FamilyKilled if StrGroup==1, robust
local B1 =_b[WarExp9_FamilyKilled]
quietly regress ProsCostlessSharing StrTreatADiff WarExp9_FamilyKilled if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_20 = "`B1r'(`SEr')`star'"

// WarExp10_RelativesInjured
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp10_RelativesInjured if StrGroup==1, robust
local B1 =_b[WarExp10_RelativesInjured]
quietly regress ProsCostlessSharing StrTreatADiff WarExp10_RelativesInjured if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_21 = "`B1r'(`SEr')`star'"


// WarExp11_RelativesKilled
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp11_RelativesKilled if StrGroup==1, robust
local B1 =_b[WarExp11_RelativesKilled]
quietly regress ProsCostlessSharing StrTreatADiff WarExp11_RelativesKilled if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_22 = "`B1r'(`SEr')`star'"

// WarExp12_FriendInjured
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp12_FriendInjured if StrGroup==1, robust
local B1 =_b[WarExp12_FriendInjured]
quietly regress ProsCostlessSharing StrTreatADiff WarExp12_FriendInjured if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_23 = "`B1r'(`SEr')`star'"

// WarExp13_FriendKilled
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp13_FriendKilled if StrGroup==1, robust
local B1 =_b[WarExp13_FriendKilled]
quietly regress ProsCostlessSharing StrTreatADiff WarExp13_FriendKilled if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_24 = "`B1r'(`SEr')`star'"


// WarExp14_FearBombing
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp14_FearBombing if StrGroup==1, robust
local B1 =_b[WarExp14_FearBombing]
quietly regress ProsCostlessSharing StrTreatADiff WarExp14_FearBombing if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_25 = "`B1r'(`SEr')`star'"

// WarExp15_KnowDisplaced
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B1 =_b[WarExp15_KnowDisplaced]
quietly regress ProsCostlessSharing StrTreatADiff WarExp15_KnowDisplaced if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_26 = "`B1r'(`SEr')`star'"

// Econ5_WithoutElectricity
program prg, rclass
version 17
quietly regress StrTreatADiff Econ5_WithoutElectricity if StrGroup==1, robust
local B1 =_b[Econ5_WithoutElectricity]
quietly regress ProsCostlessSharing StrTreatADiff Econ5_WithoutElectricity if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_27 = "`B1r'(`SEr')`star'"


// WarExp17_PercVul
program prg, rclass
version 17
quietly regress StrTreatADiff WarExp17_PercVul if StrGroup==1, robust
local B1 =_b[WarExp17_PercVul]
quietly regress ProsCostlessSharing StrTreatADiff WarExp17_PercVul if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_28 = "`B1r'(`SEr')`star'"

// WarExpI_KnowInjKill
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_KnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_KnowInjKill]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_KnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_29 = "`B1r'(`SEr')`star'"



// WarExpI_NKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_NKnowInjKill]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_NKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_30 = "`B1r'(`SEr')`star'"

// WarExpI_MKnowInjKill
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B1 =_b[WarExpI_MKnowInjKill]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_MKnowInjKill if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_31 = "`B1r'(`SEr')`star'"


// WarExpI_FamIFriKRelK
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B1 =_b[WarExpI_FamIFriKRelK]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_FamIFriKRelK if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_32 = "`B1r'(`SEr')`star'"

// WarExpI_WitnessOth
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_WitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_WitnessOth]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_WitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_33 = "`B1r'(`SEr')`star'"


// WarExpI_NWitnessOth
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_NWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_NWitnessOth]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_NWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_34 = "`B1r'(`SEr')`star'"

// WarExpI_MWitnessOth
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_MWitnessOth if StrGroup==1, robust
local B1 =_b[WarExpI_MWitnessOth]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_MWitnessOth if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_35 = "`B1r'(`SEr')`star'"



// WarExpI_WitHumv4_iol
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_WitHumv4_iol if StrGroup==1, robust
local B1 =_b[WarExpI_WitHumv4_iol]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_WitHumv4_iol if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_36 = "`B1r'(`SEr')`star'"

// WarExpI_Self
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_Self if StrGroup==1, robust
local B1 =_b[WarExpI_Self]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_Self if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_37 = "`B1r'(`SEr')`star'"

// WarExpI_NSelf
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_NSelf if StrGroup==1, robust
local B1 =_b[WarExpI_NSelf]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_NSelf if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_38 = "`B1r'(`SEr')`star'"

// WarExpI_MSelf
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_MSelf if StrGroup==1, robust
local B1 =_b[WarExpI_MSelf]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_MSelf if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_39 = "`B1r'(`SEr')`star'"


// WarExpI_Any
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_Any if StrGroup==1, robust
local B1 =_b[WarExpI_Any]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_Any if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_40 = "`B1r'(`SEr')`star'"

// WarExpI_NAny
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_NAny if StrGroup==1, robust
local B1 =_b[WarExpI_NAny]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_NAny if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_41 = "`B1r'(`SEr')`star'"


// WarExpI_MAny
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_MAny if StrGroup==1, robust
local B1 =_b[WarExpI_MAny]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_MAny if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_42 = "`B1r'(`SEr')`star'"

// WarExpI_CmbtBatt
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_CmbtBatt if StrGroup==1, robust
local B1 =_b[WarExpI_CmbtBatt]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_CmbtBatt if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_43 = "`B1r'(`SEr')`star'"


// WarExpI_PersHumRV
program prg, rclass
version 17
quietly regress StrTreatADiff WarExpI_PersHumRV if StrGroup==1, robust
local B1 =_b[WarExpI_PersHumRV]
quietly regress ProsCostlessSharing StrTreatADiff WarExpI_PersHumRV if StrGroup==1, robust
local B2 =_b[StrTreatADiff]
return scalar M = `B1'*`B2'
end
quietly bootstrap r(M), reps(1000): prg
program drop prg
local t = _b[_bs_1]/_se[_bs_1]
local p = 2 * ttail(e(df_r), abs(`t'))
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
local mv4_44 = "`B1r'(`SEr')`star'"

display "ProsCostlessSharing"
display "StrTreatDiff"
forval i=1/44 {
	display "`mv`i''"
}

display "StrTreatPDiff"
forval i=1/44 {
	display "`mv2__`i''"
}
display "StrTreatCDiff"

forval i=1/44 {
	display "`mv3__`i''"
}

display "StrTreatADiff"
forval i=1/44 {
	display "`mv4__`i''"
}
