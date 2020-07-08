-- File: ClassicAutoBWLOrb.lua
-- Name: ClassicAutoBWLOrb
-- Author: ThatKalle
-- Description: Automatically enter Blackwing Lair when interacting with the Orb of Command.
-- Version: 1.0.1

local E = CreateFrame("Frame")
E:RegisterEvent("GOSSIP_SHOW")
E:SetScript("OnEvent", function(self, event, ...)
    return self[event] and self[event](self, ...)
end)

function E:GOSSIP_SHOW()
    local npcGuid = UnitGUID("npc") or nil
    if npcGuid then
        local void, void, void, void, void, npcID = strsplit("-", npcGuid)
        if (not npcID) then return end
        -- Orb of Command
        if npcID == "179879" then
            -- Orb of Command only has one gossipOption
            SelectGossipOption(1)
        end
    end
end
