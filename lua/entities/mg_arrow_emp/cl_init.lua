include("shared.lua")

killicon.Add("mg_arrow_emp", "VGUI/entities/mg_crossbow", Color(255, 0, 0, 255))

hook.Add("HUDShouldDraw", "MW19_HUDShouldDraw_EMP", function(name)
    --[[if (IsValid(GetViewEntity())) then
        if (CurTime() < GetViewEntity():GetNetworkedFloat("MW19_EMPEffect", CurTime())) then
            for _, w in pairs(GetViewEntity():GetWeapons()) do
                if (w._mw19preEmpHudPaint == nil) then
                    w._mw19preEmpHudPaint = w.DrawHUD
                    w.DrawHUD = nil
                end
            end

            return name != "CHudAmmo" && name != "CHudBattery" && name != "CHudHealth" && name != "CHudSecondaryAmmo"
        else
            for _, w in pairs(GetViewEntity():GetWeapons()) do
                if (w._mw19preEmpHudPaint != nil) then
                    w.DrawHUD = w._mw19preEmpHudPaint
                    w._mw19preEmpHudPaint = nil
                end
            end
        end
    end]]
end)