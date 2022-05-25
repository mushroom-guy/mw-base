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

            if (!table.HasValue(swep.Customization[inj.Slot], inj.Attachment)) then
                table.insert(swep.Customization[inj.Slot], inj.Attachment)
                --sort alphabetically (this is so someone can organize the order from file order in folder)
                table.sort(swep.Customization[inj.Slot], function(a, b) return a < b end)
            end
        end
    end
end