local addonName = "Baggins_Search_Command"
local addon = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0")
local command = "bs"

function addon:OnInitialize()
  self:RegisterChatCommand(command, "Command")
end

function addon:IsBagginsOpen()
  return Baggins:IsWhateverOpen()
end

function addon:OpenBaggins()
  Baggins:OpenAllBags()
end

function addon:PopulateSearchEditBox(text)
  BagginsSearch_Label:Hide()
  BagginsSearch_EditBox:SetText(text)
end

function addon:SearchBaggins(query)
  BagginsSearch:Search(query)
end

function addon:ClearSearch()
  BagginsSearch_EditBox:SetText("")
  BagginsSearch_Label:Show()
end

function addon:IsSearchInProgress()
  local contents = BagginsSearch_EditBox:GetText()
  return contents and contents ~= ""
end

function addon:Command(input)
  if not input or string.len(input) == 0 then
    -- no query given.
    -- clear current search
    -- print usage guidelines if there is no current search
    if not self:IsSearchInProgress() then
      self:Print("Usage: /" .. command .. " <search query>")
    else
      self:ClearSearch()
      self:Print("Search cleared!")
    end

    return
  end

  if not self:IsBagginsOpen() then self:OpenBaggins() end

  self:PopulateSearchEditBox(input)
  self:SearchBaggins(input)
end

