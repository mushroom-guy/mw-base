AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("mw19.papa90.fire.s")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("Atmo_SMG_Sup.Outside"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {
    {"att_perk", "attachment_vm_sm_papa90_perk_soh", "att_perk_fmj"}, 

    {"att_stock", "attachment_vm_sm_papa90_stock_tactical", "attachment_vm_sm_papa90_stockl", "attachment_vm_sm_papa90_stocks"},

    {"attachment_vm_sm_papa90_mag"},

    {"attachment_vm_sm_papa90_barrel", "attachment_vm_sm_papa90_longbarrel", "attachment_vm_sm_papa90_custombarrel"},

    {"att_muzzle", "att_vm_breacher01", "att_vm_breacher02", "att_vm_compensator01", 
    "att_vm_compensator02", "att_vm_flashhider01", "att_vm_flashhider02", 
    "att_vm_flashhider03", "att_vm_flashhider04", "att_vm_muzzlebrake01",
    "att_vm_muzzlebrake02", "att_vm_muzzlebrake03",
    "att_vm_silencer01", "att_vm_silencer02", "att_vm_silencer03",
    "att_vm_silencer04", "att_vm_silencer05", "att_vm_silencer06"},

    {"att_sight", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02_tall", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_hybrid_west03", "att_vm_4x_east01_tall", "att_vm_2x_west01",
    "att_vm_4x_west01_tall", "att_vm_4x_west02_tall", "att_vm_reflex_west04",
    "att_vm_scope_mike14", "att_vm_scope_vz", "attachment_vm_sm_papa90_reddotscope"},

    {"att_laser", "attachment_vm_sm_papa90_laser01", "attachment_vm_sm_papa90_laser02", 
    "attachment_vm_sm_papa90_laser03"},
}
