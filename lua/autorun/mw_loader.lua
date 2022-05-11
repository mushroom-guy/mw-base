print("Init MW Loader\n")
print("With sv_cheats and developer convars set to 1, you can reload attachments every time you customize your gun")

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

local oldModel = Model  
function Model(dir) --sorry 
    return dir     
end    
    
local function loadAttachments(dir) 
    dir = dir .. "/"   
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then   
            ATTACHMENT = {}
             
            local name = string.Replace(v, ".lua", "")
            AddCSLuaFile(dir..v)
            include(dir..v)
             
            ATTACHMENT.ClassName = name
            table.Merge(GetAttachmentBaseClass(name), table.Copy(ATTACHMENT))
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
        if (name != "att_base") then
            if (att.Base == nil) then
                error(name.." doesn't inherit from anything! This will cause problems...")
            end

            if (MW_ATTS[att.Base] == nil) then
                error(name.." is trying to inherit from missing attachment! ("..(att.Base || "missing class")..")")
            end
        end
    end
end
checkBaseClassInAttachments()

--inherit
local function finishAttachments()
    for name, att in pairs(MW_ATTS) do
        local baseClass = MW_ATTS[att.Base]
        while (baseClass != nil) do
            table.Inherit(att, baseClass)
            baseClass = MW_ATTS[baseClass.Base]
        end
    end
end
finishAttachments()

--load injectors
MW_ATT_INJECTORS = {}

local function loadInjectors(dir)
    dir = dir .. "/"
    local File, Directory = file.Find(dir.."*", "LUA")
    for k, v in ipairs(File) do
        if string.EndsWith(v, ".lua") then 
            INJECTOR = {}
            
            local name = string.Replace(v, ".lua", "")
            AddCSLuaFile(dir..v)
            include(dir..v)
            
            INJECTOR.ClassName = name

            if (!table.IsEmpty(INJECTOR)) then
                MW_ATT_INJECTORS[name] = table.Copy(INJECTOR)
            end
            
            INJECTOR = nil 
        end 
    end
    
    for k, v in ipairs(Directory) do
        loadInjectors(dir..v) 
    end 
end
loadInjectors("weapons/mg_base/modules/injectors")

hook.Call("MW19_OnAssetsLoaded")