att.PrintName = "AR/SMG activator"
att.Icon = Material("entities/acwatt_fcg_dualstage.png", "smooth mips")
att.Description = "I don't really know how to integrate this shit to the main weapon."
att.Desc_Pros = {
    "You are able to shoot in close and medium-long range",
    "-30% recoil with AR Mode",
    "Fuck side-recoil"
}
att.Desc_Cons = {
    "decreased fire rate for AR Mode",
}
att.Slot = "cool_ass_fun_switch"

--att.Mult_Recoil = 0.9
--att.Mult_RecoilSide = 0.8
--att.Mult_HipDispersion = 1.15

att.Override_Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
}

att.AutoStats = true

att.Hook_ModifyRecoil = function(wep)
    if wep:GetCurrentFiremode().Mode == 1 then
        return {Recoil = 0.85, RecoilSide = 0, VisualRecoilMult = 0.8}
    end
end

att.Hook_ModifyRPM = function(wep, delay)
    if wep:GetCurrentFiremode().Mode == 1  then
        return delay * (1 / 0.7)
    end
end
