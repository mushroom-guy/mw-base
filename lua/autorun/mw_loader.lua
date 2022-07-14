CreateConVar("mgbase_precacheatts", "0", FCVAR_ARCHIVE + FCVAR_REPLICATED, "Attachments limit.", 0, 1)

local function IncludeDir(dir) 
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then 
            AddCSLuaFile(dir..v)
            include(dir..v) 
        end   
    end
    
    for k, v in ipairs(Directory) do 
        IncludeDir(dir..v)   
    end    
end      
     
CHAN_ATMO = 137 
CHAN_REFLECTION = 138
CHAN_CASINGS = 139 
CHAN_TRIGGER = 140  
CHAN_MINIGUNFIRE = 141 
CHAN_MAGAZINEDROP = 142
CHAN_WPNFOLEY = 143
 

CUSTOMIZATION_COLOR_COMMON = Color(0, 220, 30, 255)
CUSTOMIZATION_COLOR_LEGENDARY = Color(255, 175, 0, 255)
CUSTOMIZATION_COLOR_EPIC = Color(255, 0, 150, 255)
CUSTOMIZATION_COLOR_RARE = Color(0, 175, 255, 255)

--define your own down here starting from 140:
--e.g: 
-- CHAN_JAKE = 140
-- CHAN_ALESSIO = 141

IncludeDir("weapons/mg_base/modules/sounds")

MW_RIGS = {}
MW_GLOVES = {}
local function loadRigs(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then 
            RIG = {} 
            GLOVE = {}
            
            local name = string.Replace(v, ".lua", "")
            AddCSLuaFile(dir..v)
            include(dir..v)
            
            if (!table.IsEmpty(RIG)) then
                MW_RIGS[name] = table.Copy(RIG)
            end
            
            if (!table.IsEmpty(GLOVE)) then
                MW_GLOVES[name] = table.Copy(GLOVE)
            end
            
            RIG = nil
            GLOVE = nil
        end
    end
     
    for k, v in ipairs(Directory) do 
        loadRigs(dir..v)
    end  
end
loadRigs("weapons/mg_base/modules/rigs")

--load attachments
MW_ATTS = {}
  
function GetAttachmentBaseClass(base)
    MW_ATTS[base] = MW_ATTS[base] || {}

    return MW_ATTS[base]
end

function LoadAttachment(path, fileName)
    ATTACHMENT = {} 
             
    AddCSLuaFile(path..fileName)
    include(path..fileName) 
    
    local name = string.Replace(fileName, ".lua", "")
    ATTACHMENT.ClassName = name
    ATTACHMENT.Folder = path
    
    table.Merge(GetAttachmentBaseClass(name), table.Copy(ATTACHMENT))
end

local oldModel = Model  
function Model(dir) --sorry 
    if (GetConVar("mgbase_precacheatts"):GetInt() > 0) then
        util.PrecacheModel(dir)
    end
    return dir     
end    
     
local function loadAttachments(dir) 
    dir = dir .. "/"    
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then   
            LoadAttachment(dir, v)
        end  
    end
     
    for k, v in ipairs(Directory) do
        loadAttachments(dir..v)
    end 
end
 
loadAttachments("weapons/mg_base/modules/attachmentss")
Model = oldModel
  
--check baseclass 
local function checkBaseClassInAttachments()
    for name, att in pairs(MW_ATTS) do
        if (istable(name)) then
            error("You may have defined BaseClass twice! "..(name.Name || "error class"))
        end

        if (name != "att_base") then
            if (att.Base == nil) then
                error(name.." doesn't inherit from anything! This will cause problems...")
            end

            if (att.Base == name) then
                error("You are inheriting from self (Base = myself)! This would freeze your game. ("..name..")")
            end

            if (MW_ATTS[att.Base] == nil) then
                error(name.." is trying to inherit from missing attachment! ("..(att.Base || "missing class")..")")
            end
        end
    end
end
checkBaseClassInAttachments()

--inherit 
local function inherit(current, base)
    for k, v in pairs(base) do
        if (!istable(v)) then 
            if (current[k] == nil) then 
                current[k] = v 
            end
        else 
            if (current[k] == nil) then
                current[k] = {}
            end
            inherit(current[k], v)
        end
    end
end

function DoAttachmentInheritance(att)
    local baseClass = MW_ATTS[att.Base]
    while (baseClass != nil) do
        inherit(att, baseClass)
        baseClass = MW_ATTS[baseClass.Base]
    end 
end

local function finishAttachments()
    for name, att in pairs(MW_ATTS) do
        DoAttachmentInheritance(att)
    end
end
finishAttachments()

--load injectors
MW_ATT_INJECTORS = {}

local function loadInjectors(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if (string.EndsWith(v, ".lua")) then 
            INJECTOR = {}
            
            local name = string.Replace(v, ".lua", "")
            AddCSLuaFile(dir..v)
            include(dir..v)
            
            INJECTOR.ClassName = name

            if (!table.IsEmpty(INJECTOR)) then
                MW_ATT_INJECTORS[name] = table.Copy(INJECTOR)
            end
        end 
    end
    
    for k, v in ipairs(Directory) do
        loadInjectors(dir..v) 
    end 
end
loadInjectors("weapons/mg_base/modules/injectors")

--load presets
MW_PRESETS = {} 
local function loadPresets(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if (string.EndsWith(v, ".lua")) then 
            PRESET = {}
                
            local name = string.Replace(v, ".lua", "")
            AddCSLuaFile(dir..v)
            include(dir..v)
                
            PRESET.ClassName = name
            PRESET._bUserGenerated = false

            if (!table.IsEmpty(PRESET)) then
                MW_PRESETS[name] = table.Copy(PRESET)
            end
        end 
    end
        
    for k, v in ipairs(Directory) do
        loadPresets(dir..v) 
    end 
end
loadPresets("weapons/mg_base/modules/presets")

if (CLIENT) then 
    local function loadPresetsFromData(dir)
        dir = dir .. "/"  
        local File, Directory = file.Find(dir.."*", "DATA")
        for k, v in ipairs(File) do
            if (string.EndsWith(v, ".json")) then  
                local name = string.Replace(v, ".json", "") 
                local preset = util.JSONToTable(file.Read(dir..v))

                if (preset == nil || table.IsEmpty(preset)) then
                    continue 
                end 

                if (preset.Name == nil || preset.SWEP == nil || preset.Attachments == nil) then
                    continue
                end

                if (!isstring(preset.Name) || !isstring(preset.SWEP)) then
                    continue
                end

                if (!istable(preset.Attachments)) then
                    continue
                end

                preset.ClassName = name
                preset._bUserGenerated = true

                MW_PRESETS[name] = table.Copy(preset)
            end 
        end
            
        for k, v in ipairs(Directory) do
            loadPresetsFromData(dir..v) 
        end 
    end
    loadPresetsFromData("mwbase/presets")
end

hook.Call("MW19_OnAssetsLoaded")