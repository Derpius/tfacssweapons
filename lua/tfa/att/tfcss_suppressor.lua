if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Suppressor"
ATTACHMENT.ID = "tfcss_suppressor"
ATTACHMENT.Description = {TFA.Attachments.Colors["+"], "Less firing noise", TFA.Attachments.Colors["+"], "10% less spread", TFA.Attachments.Colors["+"], "10% less vertical recoil", TFA.Attachments.Colors["-"], "5% less damage"}
ATTACHMENT.Icon = "entities/tfa_br_supp.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.ShortName = "SUPP"

ATTACHMENT.WeaponTable = {
	["VElements"] = {
		["suppressor"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["suppressor"] = {
			["active"] = true
		}
	},
	["Primary"] = {
		["Damage"] = function(wep,stat) return stat * 0.95 end,
		["KickUp"] = function(wep,stat) return stat * 0.9 end,
		["KickDown"] = function(wep,stat) return stat * 0.9 end,
		["Spread"] = function(wep,stat) return stat * 0.9 end,
		["IronAccuracy"] = function(wep,stat) return stat * 0.9 end,
		["Sound"] = function(wep,stat) return wep.Primary.SilencedSound or stat end
	},
	["MuzzleFlashEffect"] = "tfa_muzzleflash_silenced",
}

function ATTACHMENT:Attach(wep)
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:SendWeaponAnim(ACT_VM_IDLE_SILENCED)
		if game.SinglePlayer() then
			wep:CallOnClient("SendWeaponAnim", tostring(ACT_VM_IDLE_SILENCED))
		end

		if wep.WorldModelSuppressed then wep.WorldModel = wep.WorldModelSuppressed end
		wep:SetSilenced(true)
	end
end

function ATTACHMENT:Detach(wep)
	if TFA.Enum.ReadyStatus[wep:GetStatus()] then
		wep:SendWeaponAnim(ACT_VM_IDLE)
		if game.SinglePlayer() then
			wep:CallOnClient("SendWeaponAnim", tostring(ACT_VM_IDLE))
		end

		if wep.WorldModelUnsuppressed then wep.WorldModel = wep.WorldModelUnsuppressed end
		wep:SetSilenced(false)
	end
end


if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end