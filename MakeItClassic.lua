local function MoveMouseDown() this:StartMoving() end
local function MoveMouseUp() this:StopMovingOrSizing() end

local f = CreateFrame("Frame", "MakeItClassic", UIParent)
f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
f:SetWidth(140)
f:SetHeight(112)
f:SetScale(.7)

f:SetMovable(true)
f:EnableMouse(true)
f:SetScript("OnMouseDown", MoveMouseDown)
f:SetScript("OnMouseUp", MoveMouseUp)
f:SetUserPlaced(true)

f.tex = f:CreateTexture(nil, "OVERLAY")
f.tex:SetPoint("CENTER", 0, 0)
f.tex:SetWidth(256)
f.tex:SetHeight(256)
f.tex:SetTexture("Interface\\AddOns\\MakeItClassic\\bugreport")

local tooltip = CreateFrame("Frame", "MakeItClassicTooltip", GameTooltip)
tooltip:SetScript("OnShow", function()
  local t = UnitName("mouseover") and "Creature" or "Item"
  GameTooltip:AddLine(" ", .5,.7,1)
  GameTooltip:AddLine("Press F6 to submit a bug for this " .. t, .5,.7,1)
  GameTooltip:Show()
end)
