att.PrintName = "Type-2"
att.Icon = Material("entities/acwatt_mw2_akimbo.png", "smooth")
att.Description = "Wholy."
att.Hidden = false
att.Desc_Pros = {
    "+100% more gun",
}
att.Desc_Cons = {
    "- Cannot use ironsights"
}
att.Desc_Neutrals = {
    "Don't toggle the UBGL"
}
att.AutoStats = true
att.Mult_HipDispersion = 4
att.Slot = "akimbotest"

att.GivesFlags = {"cantuseshitinakimboyet"}

att.SortOrder = 1738

att.AddSuffix = " + Type-2"

att.MountPositionOverride = 0

att.Model = "models/weapons/IW/akimbo/Type-2/the_FMG9_akimbo.mdl"


att.LHIK = true
att.LHIK_Animation = true
att.LHIK_MovementMult = 0

att.UBGL = true

att.UBGL_PrintName = "AKIMBO"
att.UBGL_Automatic = true
att.UBGL_MuzzleEffect = "hl2r_muzzleflash_ar2"
att.UBGL_ClipSize = 30
att.UBGL_Ammo = "smg1"
att.UBGL_RPM = 1400
att.UBGL_Recoil = 0.65
att.UBGL_RecoilSide = 0.65
att.UBGL_RecoilRise = 0
att.UBGL_Capacity = 30

att.Hook_ShouldNotSight = function(wep)
    return true
end

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1") -- att.UBGL_Ammo
end

att.Hook_Think = function(wep)
    if wep:GetMW2Masterkey_ShellInsertTime() < CurTime() and wep:GetMW2Masterkey_ShellInsertTime() != 0 then
        wep:SetMW2Masterkey_ShellInsertTime(0)
        local clip = 30
        if wep:Clip2() >= clip then return end
        if Ammo(wep) <= 0 then return end

        local reserve = Ammo(wep)
        reserve = reserve + wep:Clip2()
        local load = math.Clamp(clip, 0, reserve)
        wep.Owner:SetAmmo(reserve - load, "smg1")
        wep:SetClip2(load)
    end

    if !IsFirstTimePredicted() then return end
    if wep:GetOwner():KeyPressed(IN_RELOAD) then
        wep:SetInUBGL(false)
        wep:ReloadUBGL()
    elseif wep:GetOwner():KeyPressed(IN_ATTACK) then
        wep:SetInUBGL(false)
    elseif wep:GetOwner():KeyPressed(IN_ATTACK2) then
        wep:SetInUBGL(true)
        wep:ShootUBGL()
    end
end

local awesomelist = {
    ["sprint_in_akimbo_right"] = {
        time = 10/30,
        anim = "akimbo_sprint_in_l",
    },
    ["sprint_out_akimbo_right"] = {
        time = 10/30,
        anim = "akimbo_sprint_out_l",
    },
    ["sprint_loop_akimbo_right"] = {
        time = 30/40,
        anim = "akimbo_sprint_loop_l",
    },
    ["pullout_akimbo_right"] = {
        time = 26/30 /4,
        anim = "akimbo_raise_l",
    },
    ["putaway_akimbo_right"] = {
        time = 26/30 /4,
        anim = "akimbo_drop_l",
    },
}

att.Hook_TranslateSequence = function(wep, anim)
    if awesomelist[anim] then
        local bab = awesomelist[anim]
        wep:DoLHIKAnimation(bab.anim, bab.time)
    end
end

att.Hook_LHIK_TranslateAnimation = function(wep, anim)
    if anim == "idle" then
        --wep:DoLHIKAnimation("idle", 200/30) This will fucking crash your game because it plays idle when the animation playing is idle WHY DIDNT I CALL IT IDLE_AKIMBO_LEFT WOEISME
        return "DoNotPlayIdle"
    end
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    -- this bitch
    local fixedcone = wep:GetDispersion() / 360 / 60

    wep.Owner:FireBullets({
		Src = wep.Owner:EyePos(),
		Num = 1,
		Damage = 40,
		Force = 1,
		Attacker = wep.Owner,
		Dir = wep.Owner:EyeAngles():Forward(),
		Spread = Vector(fixedcone, fixedcone, 0),
		Callback = function(_, tr, dmg)
			local dist = (tr.HitPos - tr.StartPos):Length() * ArcCW.HUToM

			local dmgmax = 40
			local dmgmin = 20

			local delta = dist / 800 * 0.025

			delta = math.Clamp(delta, 0, 1)

			local amt = Lerp(delta, dmgmax, dmgmin)

			dmg:SetDamage(amt)
		end
	})
    wep:EmitSound("weapons/fmg/weap_fmg_fire_npc.wav", 130, 115 * math.Rand(1 - 0.05, 1 + 0.05))
                            -- This is kinda important
                                            -- Wep volume
                                                    -- Weapon pitch (along with the pitch randomizer)




    wep:SetClip2(wep:Clip2() - 1)
    
    if wep:Clip2() > 0 then
        wep:DoLHIKAnimation("akimbo_fire_l", 16/30)
    else
        wep:DoLHIKAnimation("akimbo_settle_l", 16/30)
    end

    wep:DoEffects()

    return false
end

att.UBGL_Reload = function(wep, ubgl)
        if wep:Clip2() >= 30 then return end
        if Ammo(wep) <= 0 then return end

    wep:SetInUBGL(false)
    wep:Reload()

    if wep:Clip2() <= 0 then
        wep:DoLHIKAnimation("akimbo_reload_l", 63/30)
        wep:SetNextSecondaryFire(CurTime() + 63/30)
        wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 1.429)
        wep:PlaySoundTable({
            {s = "weapons/foley/wpfoly_fmg_reload_clipout_v1.wav", 	t = 0.35},
            {s = "weapons/foley/wpfoly_fmg_reload_clipin_v1.wav",  	t = 39/30},
            {s = "weapons/foley/wpfoly_fmg_akimbo_charge_v1", 	t = 48/30},
        })
    else
        wep:DoLHIKAnimation("akimbo_reload_l", 59/30)
        wep:SetNextSecondaryFire(CurTime() + 59/30)
        wep:SetMW2Masterkey_ShellInsertTime(CurTime() + 1.429)
        wep:PlaySoundTable({
            {s = "weapons/foley/wpfoly_fmg_reload_clipout_v1.wav", 	t = 0.5},
            {s = "weapons/foley/wpfoly_fmg_reload_clipin_v1.wav", 	    t = 39/30},
        })
    end
end

att.Hook_GetHUDData = function( wep, data )
    if ArcCW:ShouldDrawHUDElement("CHudAmmo") then
        data.clip = wep:Clip2() .. " / " .. wep:Clip1()
    else
        data.clip = wep:Clip1() + wep:Clip2()
    end
    data.ubgl = nil
    return data
end