/*------------------------------------------------------

Bullshit about not offering support cause you extracted it was here
- Derpius

------------------------------------------------------*/

if SERVER then
	-- Iterate over material files and mark for downloading
	local entMats = file.Find("materials/vgui/entities/tfcss_*.vmt", "GAME")
	local hudMats = file.Find("materials/vgui/hud/tfcss_*.vmt", "GAME")

	for i = 1, #entMats do
		resource.AddFile("materials/vgui/entities/"..entMats[i])
	end

	for i = 1, #hudMats do
		resource.AddFile("materials/vgui/hud/"..hudMats[i])
	end

	AddCSLuaFile()

	print("TFA CSSource SWEPS Server Init")
end

local icol = Color(255, 255, 255, 255)
if CLIENT then
	killicon.Add("tfcss_ak47", "vgui/hud/tfcss_ak47", icol)
	killicon.Add("tfcss_deagle", "vgui/hud/tfcss_deagle", icol)
	killicon.Add("tfcss_dualelites", "vgui/hud/tfcss_dualelites", icol)
	killicon.Add("tfcss_famas", "vgui/hud/tfcss_famas", icol)
	killicon.Add("tfcss_fiveseven", "vgui/hud/tfcss_fiveseven", icol)
	killicon.Add("tfcss_galil", "vgui/hud/tfcss_galil", icol)
	killicon.Add("tfcss_glock", "vgui/hud/tfcss_glock", icol)
	killicon.Add("tfcss_m3", "vgui/hud/tfcss_m3", icol)
	killicon.Add("tfcss_m4a1", "vgui/hud/tfcss_m4a1", icol)
	killicon.Add("tfcss_m249", "vgui/hud/tfcss_m249", icol)
	killicon.Add("tfcss_mac10", "vgui/hud/tfcss_mac10", icol)
	killicon.Add("tfcss_mp5", "vgui/hud/tfcss_mp5", icol)
	killicon.Add("tfcss_p90", "vgui/hud/tfcss_p90", icol)
	killicon.Add("tfcss_p228", "vgui/hud/tfcss_p228", icol)
	killicon.Add("tfcss_tmp", "vgui/hud/tfcss_tmp", icol)
	killicon.Add("tfcss_ump45", "vgui/hud/tfcss_ump45", icol)
	killicon.Add("tfcss_usp", "vgui/hud/tfcss_usp", icol)
	killicon.Add("tfcss_xm1014", "vgui/hud/tfcss_xm1014", icol)
	
	-- No idea if this is necessary given the comment, leaving it here just incase(tm) - Derpius
	--language.Add("tfa_ammo_explosion", "Poor Decision Making Skills") --i dont know if I got rid of that or not, whatever

	print("TFA CSSource SWEPS Client Init")
end

sound.Add({
	name = 			"Weapon_Glock.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/glock/glock18-1.wav"
})

sound.Add({
	name = 			"Weapon_Galil.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/galil/galil-1.wav"
})

sound.Add({
	name = 			"Weapon_M249.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m249/m249-1.wav"
})

sound.Add({
	name = 			"Weapon_XM1014.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/xm1014/xm1014-1.wav"
})

sound.Add({
	name = 			"Weapon_M3.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m3/m3-1.wav"
})

sound.Add({
	name = 			"Weapon_MAC10.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mac10/mac10-1.wav"
})

sound.Add({
	name = 			"Weapon_TMP.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/tmp/tmp-1.wav"
})

sound.Add({
	name = 			"Weapon_MP5Navy.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/mp5navy/mp5-1.wav"
})

sound.Add({
	name = 			"Weapon_P228.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/p228/p228-1.wav"
})

sound.Add({
	name = 			"Weapon_P90.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/p90/p90-1.wav"
})

sound.Add({
	name = 			"Weapon_FiveSeven.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/fiveseven/fiveseven-1.wav"
})

sound.Add({
	name = 			"Weapon_UMP45.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/ump45/ump45-1.wav"
})

sound.Add({
	name = 			"Weapon_USP.2",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/usp/usp1.wav"
})

sound.Add({
	name = 			"Weapon_USP.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/usp/usp_unsil-1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m4a1/m4a1_unsil-1.wav"
})

sound.Add({
	name = 			"Weapon_M4A1.2",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/m4a1/m4a1-1.wav"
})

sound.Add({
	name = 			"Weapon_ELITE.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/elite/elite-1.wav"
})

sound.Add({
	name = 			"Weapon_FAMAS.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/famas/famas-1.wav"
})

sound.Add({
	name = 			"Weapon_Deagle.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/deagle/deagle-1.wav"
})

sound.Add({
	name = 			"Weapon_AK47.1",
	channel = 		CHAN_STATIC,
	volume = 		1.0,
	sound = 			"weapons/ak47/ak47-1.wav"
})

tfacss_autorun_mounted = true