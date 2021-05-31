SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - IW" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "RPR Evo"
SWEP.Trivia_Class = "Sub-Machine Gun / Assault Rifle"
SWEP.Trivia_Desc = "Full-auto ballistic firearm. Press the zoom button to toggle assault rifle mode. An integrated hybrid sight enhances longer range engagements."
SWEP.Trivia_Manufacturer = "Armacor Advanced Industries"
SWEP.Trivia_Calibre = "5.56x45"
SWEP.Trivia_Mechanism = "space magic or something"
SWEP.Trivia_Country = "Mexico"
SWEP.Trivia_Year = 2142

SWEP.Slot = 2

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 100

SWEP.UseHands = true

SWEP.ViewModel = "models/the_RPR_EVO.mdl"
SWEP.WorldModel = "models/the_RPR_EVO.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 30
SWEP.DamageMin = 16 -- damage done at maximum range
SWEP.Range = 25 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 350 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 32
SWEP.MaxRecoilBlowback = 3

SWEP.Recoil = 1
SWEP.RecoilSide = 0.15
SWEP.RecoilRise = 0.90
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 967 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 2
    }
}

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "smg1" 

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/ripper/weap_ripper_lyr_01.wav"
SWEP.ShootSoundSilenced = "weapons/ripper/weap_rippersup_fire_01b.wav"
SWEP.DistantShootSound = "weapons/ripper/weap_ripper_mech_01c.wav"

SWEP.MuzzleEffect = "muzzleflash_3"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1.25

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.23

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 1

SWEP.BarrelLength = 14

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.07, 5.792, -10.131),
    Ang = Angle(0.503, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-0.201, 11.574, -10.24)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 10, -5)
SWEP.HolsterAng = Angle(-15, 5, -10)

SWEP.CustomizePos = Vector(6.829, 12.84, -12.021)
SWEP.CustomizeAng = Angle(11.069, 21.49, 10.512)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.CrouchPos = Vector(-0.201, 15.074, -11.24)
SWEP.CrouchAng = Angle(0, 0, -10)

SWEP.SprintPos = Vector(6.829, 10.84, -12.021)
SWEP.SprintAng = Angle(-16.181, 45.729, -12.664)

SWEP.ShellRotateAngle = Angle(5, 0, 40)
SWEP.ExtraSightDist = 7

SWEP.WorldModelOffset = {
    pos = Vector(-5, -1.5, -3.5),
    ang = Angle(-10, 0, 180)
}

SWEP.Hook_TranslateAnimation = function(wep, anim)
    local fucking = wep.Attachments[1].Installed == "ar_mode"
    if fucking and wep:GetCurrentFiremode().Mode == 1 then
        wep.Damage = 45
        wep.DamageMin = 30
        wep.SightTime = 0.25
        wep.Range = 45
        wep.IronSightStruct = {
            Pos = Vector(-3.25, 5.025, -10.65),
            Ang = Angle(3, 0, 0),
            Magnification = 2,
            CrosshairInSights = false,
        }
        return anim .. "_ar"
    else
        wep.Damage = 30
        wep.DamageMin = 16
        wep.SightTime = 0.23
        wep.Range = 25
        wep.IronSightStruct = {
            Pos = Vector(-3.233, 5.025, -10.4),
            Ang = Angle(0, 0.079, 0),
            Magnification = 1.1,
            CrosshairInSights = false,
        }
    end
end

SWEP.MirrorVMWM = true
SWEP.GuaranteeLaser = true
SWEP.Attachments = {
    {
        PrintName = "fun unlocker",
        DefaultAttName = "locked",
        Slot = "cool_ass_fun_switch",
    },
}
--    {
--        PrintName = "Muzzle",
--        DefaultAttName = "Standard Muzzle",
--        Slot = "muzzle",
--        Bone = "tag_silencer",
--        Offset = {
--            vpos = Vector(0, -3.15, 8),
--            vang = Angle(90, 0, -90),
--        },
--        ExcludeFlags = {"slog_csa_gluke_slide_sd"}		
--    },
--    {
--        PrintName = "Slide",
--        Slot = {"csa_gluke_slide"},
--        Bone = "W_Main", 
--        Offset = {
--            vpos = Vector(0.5, -3.5, 6), 
--            vang = Angle(90, 0, -90),
--        },			
--    },	
--    {
--        PrintName = "Magazine",
--        Slot = {"csa_gluke_mag"}
--    },	
--    {
--        PrintName = "Tactical",
--        Slot = "tac_pistol",
--        Bone = "W_Main",
--        Offset = {
--            vpos = Vector(0, -2, 6.5), 
--            vang = Angle(90, 0, -90),
--        },	
--    },	
--    {
--        PrintName = "Grip",
--        Slot = {"csa_gluke_grip"},
--        Bone = "W_Main", 
--        Offset = {
--            vpos = Vector(0, -3.8, 1.5), 
--            vang = Angle(90, 0, -90),
--        },	
--        MergeSlots = {11},			
--    },	
--    {
--        PrintName = "Stock",
--        Slot = {"csa_gluke_stock"},
--        Bone = "W_Main", 
--        MergeSlots = {12},			
--    },		
--    {
--        PrintName = "Ammo Type",
--        Slot = {"go_ammo"}
--    },
--    {
--        PrintName = "Perk",
--        Slot = {"go_perk"}
--    },		
--	
--    { -- thank you 8z very cool
--        Slot = "optic",
--        Bone = "W_Main", 
--        Offset = {
--            vpos = Vector(0, -4.55, 1.2), 
--            vang = Angle(90, 0, -90),
--        },
--        Hidden = true,
--        HideIfBlocked = true,
--        RequireFlags = {"slog_csa_gluke_slide_roni"},
--        VMScale = Vector(1.25, 1.25, 1.25),
--    },	
--
--    { 
--        Slot = "foregrip",
--        Bone = "W_Main", 
--        Offset = {
--            vpos = Vector(0, -0.8, 7), 
--            vang = Angle(90, 0, -90),
--        },
--        Hidden = true,
--        HideIfBlocked = true,
--        RequireFlags = {"slog_csa_gluke_slide_roni"},
--    },	
--	
--    { 
--        Slot = "csa_gluke_stock_roni",
--        Bone = "W_Main", 
--        Offset = {
--            vpos = Vector(0, -0.8, 7), 
--            vang = Angle(90, 0, -90),
--        },
--        Hidden = true,
--        HideIfBlocked = true,
--        RequireFlags = {"slog_csa_gluke_slide_roni"},
--    },		
--

SWEP.Animations = {

    ["idle"] = {Source = "idle",},
    ["idle_ar"] = {Source = "idle_ar",},
    ["ready"] = {
        Source = "pullout_first",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_first_pullout_v1.wav", 	t = 0.1},			
        },
    },
    ["draw"] = {
        Source = "pullout",
        SoundTable = {
		{s = "weapons/foley/pickup/weap_pickup_rattle_02.wav", 	t = 0.1},			
        },
    },
    ["holster"] = {
        Source = "putaway",
        SoundTable = {
		{s = "weapons/foley/pickup/weap_pickup_rattle_04.wav", 	t = 0.1},			
        },
    },
    ["holster_ar"] = {
        Source = "putaway_ar",
        SoundTable = {
		{s = "weapons/foley/pickup/weap_pickup_rattle_04.wav", 	t = 0.1},			
        },
    },
    ["bash"] = {Source = "melee",},
    ["melee_ar"] = {Source = "melee_ar",},
    ["1_to_2"] = {
        Source = "toggle_on",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_toggle_on_v1.wav", 	t = 0.1},
    },
    },
    ["2_to_1"] = {
        Source = "toggle_off",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_toggle_off_v1.wav", 	t = 0.1},
        },
    },
    ["fire"] = {
        Source = "fire",
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "ads_fire",
        ShellEjectAt = 0,
    },
    ["fire_ar"] = {
        Source = "fire_ar",
        ShellEjectAt = 0,
    },
    ["fire_iron_ar"] = {
        Source = "ads_fire_ar",
        ShellEjectAt = 0,
    },
    ["reload_empty_ar"] = {
        Source = "reload_ar",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_reload_clipout_v1.wav", 	t = 0.5},
        {s = "weapons/foley/wpfoly_rip_reload_clipin_v1.wav", 	t = 1.65},				
        },
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,	
    },
    ["reload"] = {
        Source = "reload",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_reload_clipout_v1.wav", 	t = 0.5},
        {s = "weapons/foley/wpfoly_rip_reload_clipin_v1.wav", 	t = 1.65},				
        },
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_ar"] = {
        Source = "reload_ar",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_reload_clipout_v1.wav", 	t = 0.5},
        {s = "weapons/foley/wpfoly_rip_reload_clipin_v1.wav", 	t = 1.65},				
        },
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
    ["reload_empty"] = {
        Source = "reload",
        SoundTable = {
		{s = "weapons/foley/wpfoly_rip_reload_clipout_v1.wav", 	t = 0.5},
        {s = "weapons/foley/wpfoly_rip_reload_clipin_v1.wav", 	t = 1.65},				
        },
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 0.2,
        LHIKOut = 0.5,
        LHIKEaseOut = 0.25,		
    },
}