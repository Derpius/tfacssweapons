SWEP.Base = "tfa_gun_base"
SWEP.Gun = "tfcss_usp"
SWEP.Category = "TFA CS:S Rewritten" -- The category.  Please, just choose something generic or something I've already done if you plan on only doing like one swep..
SWEP.Manufacturer = "Heckler & Koch" -- Gun Manufactrer (e.g. Hoeckler and Koch )
SWEP.Author = "Derpius" -- Author Tooltip
SWEP.Purpose = "Decent sidearm with heavy damage at its rate of fire, and an optional suppressor" -- Purpose Tooltip

SWEP.Spawnable = true -- Can you, as a normal user, spawn this?
SWEP.AdminSpawnable = true -- Can an adminstrator spawn this?  Does not tie into your admin mod necessarily, unless its coded to allow for GMod's default ranks somewhere in its code.  Evolve and ULX should work, but try to use weapon restriction rather than these.
SWEP.DrawCrosshair = true      -- Draw the crosshair?
SWEP.DrawCrosshairIS = false -- Draw the crosshair in ironsights?
SWEP.PrintName = "USP"       -- Weapon name (Shown on HUD)
SWEP.Slot = 1             -- Slot in the weapon selection menu.  Subtract 1, as this starts at 0.
SWEP.SlotPos = 40            -- Position in the slot
SWEP.AutoSwitchTo = true      -- Auto switch to if we pick it up
SWEP.AutoSwitchFrom = false      -- Auto switch from if you pick up a better weapon
SWEP.Weight = 15            -- This controls how "good" the weapon is for autopickup.
SWEP.DrawWeaponInfoBox = true -- Should draw the weapon info box
SWEP.DrawAmmo = true -- Should draw the default HL2 ammo counter

-- [[WEAPON HANDLING]] --
SWEP.Primary.Sound = Sound("Weapon_USP.1") -- This is the sound of the weapon, when you shoot.
SWEP.Primary.SilencedSound = Sound("Weapon_USP.2") -- This is the sound of the weapon, when silenced.
SWEP.Primary.PenetrationMultiplier = 1.5 -- Change the amount of something this gun can penetrate through

SWEP.Primary.Damage = 34 -- Damage, in standard damage points.
SWEP.Primary.DamageTypeHandled = true -- true will handle damagetype in base
SWEP.Primary.DamageType = DMG_BULLET -- See DMG enum.  This might be DMG_SHOCK, DMG_BURN, DMG_BULLET, etc.  Leave nil to autodetect.  DMG_AIRBOAT opens doors.
SWEP.Primary.HullSize = 0 -- Big bullets, increase this value.  They increase the hull size of the hitscan bullet.
SWEP.Primary.NumShots = 1 -- The number of shots the weapon fires.  SWEP.Shotgun is NOT required for this to be >1.
SWEP.Primary.Automatic = false -- Automatic/Semi Auto
SWEP.Primary.RPM = 400 -- This is in Rounds Per Minute / RPM

SWEP.CanJam = false -- whenever weapon cam jam

SWEP.FiresUnderwater = true

-- Silencing
SWEP.CanBeSilenced = true -- Can we silence?  Requires animations.
SWEP.Silenced = false -- Silenced by default?

-- Selective Fire Stuff
SWEP.SelectiveFire = false -- Allow selecting your firemode?
SWEP.DisableBurstFire = false -- Only auto/single?
SWEP.OnlyBurstFire = false -- No auto, only burst/single?
SWEP.BurstFireCount = 3 -- Burst fire count override (autocalculated by the clip size if nil)
SWEP.DefaultFireMode = "" -- Default to auto or whatev
SWEP.FireModeName = nil -- Change to a text value to override it
SWEP.FireSoundAffectedByClipSize = true -- Whenever adjuct pitch (and proably other properties) of fire sound based on current clip / maxclip
SWEP.Primary.ClipSize = 12 -- This is the size of a clip
SWEP.Primary.DefaultClip = 100 -- This is the number of bullets the gun gives you, counting a clip as defined directly above.
SWEP.Primary.Ammo = "pistol" -- What kind of ammo.  Options, besides custom, include pistol, 357, smg1, ar2, buckshot, slam, SniperPenetratedRound, and AirboatGun.
SWEP.Primary.AmmoConsumption = 1 -- Ammo consumed per shot
-- Pistol, buckshot, and slam like to ricochet. Use AirboatGun for a light metal peircing shotgun pellets
SWEP.DisableChambering = false -- Disable round-in-the-chamber

-- Recoil Related
SWEP.Primary.KickUp = 0.3 -- This is the maximum upwards recoil (rise)
SWEP.Primary.KickDown = 0.03 -- This is the maximum downwards recoil (skeet)
SWEP.Primary.KickHorizontal = 0.01 -- This is the maximum sideways recoil (no real term)
SWEP.Primary.StaticRecoilFactor = 0.05 -- Amount of recoil to directly apply to EyeAngles.  Enter what fraction or percentage (in decimal form) you want.  This is also affected by a convar that defaults to 0.5.

-- Firing Cone Related
SWEP.Primary.Spread = 0.0005 -- This is hip-fire acuracy.  Less is more (1 is horribly awful, .0001 is close to perfect)
SWEP.Primary.IronAccuracy = 0.0001 -- Ironsight accuracy, should be the same for shotguns

-- Range Related
-- Use this for full control over damage dropoff.
SWEP.Primary.RangeFalloffLUT = {
	bezier = true, -- Whenever to use Bezier or not to interpolate points?
	-- you probably always want it to be set to true
	range_func = "quintic", -- function to spline range
	-- "linear" for linear splining.
	-- Possible values are "quintic", "cubic", "cosine", "sinusine", "linear" or your own function
	units = "meters", -- possible values are "inches", "inch", "hammer", "hu" (are all equal)
	-- everything else is considered to be meters
	lut = { -- providing zero point is not required
		-- without zero point it is considered to be as {range = 0, damage = 1}
		{range = 30, damage = 1},
		{range = 100, damage = 0.98},
		{range = 150, damage = 0.9},
		{range = 300, damage = 0.3},
		{range = 500, damage = 0},
	}
}

-- Penetration Related
SWEP.MaxPenetrationCounter = 4 -- The maximum number of ricochets.  To prevent stack overflows.

-- Misc
SWEP.IronRecoilMultiplier = 0.5 -- Multiply recoil by this factor when we're in ironsights.  This is proportional, not inversely.
SWEP.CrouchAccuracyMultiplier = 0.1 -- Less is more.  Accuracy * 0.5 = Twice as accurate, Accuracy * 0.1 = Ten times as accurate

-- Movespeed
SWEP.MoveSpeed = 1 -- Multiply the player's movespeed by this.
SWEP.IronSightsMoveSpeed = 0.6 -- Multiply the player's movespeed by this when sighting.

-- VIEWMODEL
SWEP.ViewModel = "models/weapons/cstrike/c_pist_usp.mdl" -- Viewmodel path
SWEP.ViewModelFOV = 55        -- This controls how big the viewmodel looks.  Less is more.
SWEP.ViewModelFlip = false     -- Set this to true for CSS models, or false for everything else (with a righthanded viewmodel.)
SWEP.UseHands = true -- Use gmod c_arms system.
SWEP.VMPos = Vector(0, 0, 0) -- The viewmodel positional offset, constantly.  Subtract this from any other modifications to viewmodel position.
SWEP.VMAng = Vector(0, 0, 0) -- The viewmodel angular offset, constantly.   Subtract this from any other modifications to viewmodel angle.
SWEP.VMPos_Additive = true -- Set to false for an easier time using VMPos. If true, VMPos will act as a constant delta ON TOP OF ironsights, run, whateverelse

SWEP.AllowIronSightsDoF = true -- whenever allow DoF effect on viewmodel when zoomed in with iron sights
SWEP.IronSightsReloadLock = true -- Lock ADS state when reloading

-- WORLDMODEL
SWEP.WorldModelUnsuppressed = "models/weapons/w_pist_usp.mdl"
SWEP.WorldModelSuppressed = "models/weapons/w_pist_usp_silencer.mdl"
SWEP.WorldModel = SWEP.Silenced and SWEP.WorldModelSuppressed or SWEP.WorldModelUnsuppressed
SWEP.HoldType = "pistol" -- This is how others view you carrying the weapon.
SWEP.Offset = {
	Pos = {
		Up = 0,
		Right = 0,
		Forward = 0
	},
	Ang = {
		Up = -1,
		Right = -2,
		Forward = 178
	},
	Scale = 1
} -- Procedural world model animation, defaulted for CS:S purposes.

SWEP.ThirdPersonReloadDisable = false -- Disable third person reload?  True disables.

SWEP.Shotgun = false -- Enable shotgun style reloading.
-- [[SPRINTING]] --
SWEP.RunSightsPos = Vector(0, 0, 0)
SWEP.RunSightsAng = Vector(-9.469, -1.701, 0)

-- [[IRONSIGHTS]] --
SWEP.data = {}
SWEP.data.ironsights = 0 -- Enable Ironsights
SWEP.Secondary.IronFOV = 60 -- How much you "zoom" in. Less is more!  Don't have this be <= 0.  A good value for ironsights is like 70.
-- SWEP.IronViewModelFOV = 65 -- Target viewmodel FOV when aiming down the sights.
SWEP.IronSightsPos = Vector(-5.89, -3.237, 2.68)
SWEP.IronSightsAng = Vector(0.087, 0.041, 0)

-- [[VIEWMODEL PROCEDURAL ANIMATION]] --
SWEP.DoProceduralReload = false -- Animate first person reload using lua?

-- [[HOLDTYPES]] --
SWEP.IronSightHoldTypeOverride = "" -- This variable overrides the ironsights holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.
SWEP.SprintHoldTypeOverride = "" -- This variable overrides the sprint holdtype, choosing it instead of something from the above tables.  Change it to "" to disable.

-- [[EFFECTS]] --
-- Attachments
SWEP.Attachments = {
	{atts = { "tfcss_suppressor" }, sel = 0}
}

SWEP.MuzzleAttachment           = "1"       -- Should be "1" for CSS models or "muzzle" for hl2 models
SWEP.ShellAttachment            = "2"       -- Should be "2" for CSS models or "shell" for hl2 models
SWEP.MuzzleFlashEnabled = true -- Enable muzzle flash
SWEP.AutoDetectMuzzleAttachment = false -- For multi-barrel weapons, detect the proper attachment?
SWEP.EjectionSmokeEnabled = true -- Disable automatic ejection smoke

DEFINE_BASECLASS(SWEP.Base)