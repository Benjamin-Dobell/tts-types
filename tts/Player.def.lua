---@class tts__GlobalPlayer
---@field White tts__Player
---@field Brown tts__Player
---@field Red tts__Player
---@field Orange tts__Player
---@field Yellow tts__Player
---@field Green tts__Player
---@field Teal tts__Player
---@field Blue tts__Player
---@field Purple tts__Player
---@field Pink tts__Player
---@field Black tts__Player
---@field Grey tts__Player
Player = {}

---@alias tts__PlayerRegularColor 'White' | 'Brown' | 'Red' | 'Orange' | 'Yellow' | 'Green' | 'Teal' | 'Blue' | 'Purple' | 'Pink'
---@alias tts__PlayerGameMasterColor 'Black'
---@alias tts__PlayerSpectatorColor 'Grey'

---@alias tts__PlayerHandColor tts__PlayerRegularColor | tts__PlayerGameMasterColor
---@alias tts__PlayerColor tts__PlayerHandColor | tts__PlayerSpectatorColor

---@class tts__Player
---@field admin boolean
---@field blindfolded boolean
---@field color tts__PlayerColor
---@field host boolean
---@field lift_height number
---@field promoted boolean
---@field seated boolean
---@field steam_id string
---@field steam_name string
---@field team string
local PlayerInstance = {}

---@shape tts__HandTransform
---@field position tts__Vector
---@field rotation tts__Vector
---@field scale tts__Vector
---@field forward tts__Vector
---@field right tts__Vector
---@field up tts__Vector

---@param handIndex number
---@return tts__HandTransform
function PlayerInstance.getHandTransform(handIndex) end

---@param handIndex number
---@return tts__Object[]
function PlayerInstance.getHandObjects(handIndex) end
