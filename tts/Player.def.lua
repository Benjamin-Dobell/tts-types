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

--- Changes (moves) the player to the seat of an available color.
--- Returns false on failure (i.e. if the specified color is already occupied), otherwise true.
---@param color tts__PlayerColor
---@return boolean
function PlayerInstance.changeColor(color) end

--- Clears the player's current selection.
--- Returns false if the player is incapable of object selection (a Grey player), otherwise true.
---@return boolean
function PlayerInstance.clearSelectedObjects() end

---@overload fun(): tts__HandTransform
---@param handIndex number @Default 1
---@return tts__HandTransform
function PlayerInstance.getHandTransform(handIndex) end

---@overload fun(): tts__Object[]
---@param handIndex number @Default 1
---@return tts__Object[]
function PlayerInstance.getHandObjects(handIndex) end

-- Returns an array of objects currently held by the player.
---@return tts__Object[]
function PlayerInstance.getHoldingObjects() end

--- Returns the object the player's pointer is currently hovering over.
---@return nil | tts__Object
function PlayerInstance.getHoverObject() end

--- Returns the world coordinates of the player's pointer.
---@return tts__Vector
function PlayerInstance.getPointerPosition() end

--- Returns the player's pointer's Y-axis rotation.
---@return number
function PlayerInstance.getPointerRotation() end

-- Returns an array of objects currently selected by the player.
---@return tts__Object[]
function PlayerInstance.getSelectedObjects() end

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
---@field [tts__PlayerColor] tts__Player
Player = {}

--- Returns player colors for which there is a seat (i.e. at least one hand zone), irrespective of
--- whether or not there is a player seated.
---@return tts__PlayerHandColor[]
function Player.getAvailableColors() end

--- Returns all possible player colors supported by Tabletop Simulator, including GM/black and
--- spectators/grey.
---@return tts__PlayerColor[]
function Player.getColors() end

--- Returns all players.
---@return tts__Player[]
function Player.getPlayers() end

--- Returns all spectating (grey) players.
---@return tts__Player[]
function Player.getSpectators() end
