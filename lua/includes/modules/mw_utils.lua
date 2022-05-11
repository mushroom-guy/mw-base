AddCSLuaFile()
module("mw_utils", package.seeall)

function mw_utils.LoadInjectors(swep)
    if (swep.Customization == nil) then
        error("Customization is nil! Are you loading before it?")
    end

    local swepClass = string.GetFileFromFilename(swep.Folder)
    
    for className, inj in pairs(MW_ATT_INJECTORS) do
        if (inj.SWEPs != nil && table.HasValue(inj.SWEPs, swepClass)) then
            swep.Customization[inj.Slot] = swep.Customization[inj.Slot] || {}
            table.insert(swep.Customization[inj.Slot], inj.Attachment)
        end
    end
end