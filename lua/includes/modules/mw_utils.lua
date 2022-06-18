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

--https://gist.github.com/jrus/3197011
local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

function mw_utils.SavePreset(swepClass, name, attachmentList)
    if (SERVER) then
        error("SavePreset called on server! (?)")
    end

    local fileName = uuid()
    local preset = {
        SWEP = swepClass,
        Name = name,
        Attachments = attachmentList
    }

    file.CreateDir("mwbase/presets")
    file.Write("mwbase/presets/" .. fileName .. ".json", util.TableToJSON(preset, true))

    preset.ClassName = fileName
    preset._bUserGenerated = true

    MW_PRESETS[fileName] = table.Copy(preset)
end

function mw_utils.RemovePreset(className)
    if (SERVER) then
        error("RemovePreset called on server! (?)")
    end

    local pathAndName = "mwbase/presets/"..className..".json"

    if (file.Exists(pathAndName, "DATA")) then
        file.Delete(pathAndName)
        MW_PRESETS[className] = nil
    end
end