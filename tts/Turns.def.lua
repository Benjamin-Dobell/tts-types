-- Auto | Custom
---@alias tts__TurnsType 1 | 2

---@class tts__Turns
---@field enable boolean @Whether the turn system is enabled.
---@field type tts__TurnsType @The turn progression scheme being used. Automatic (built-in default) or a custom user provided order. 1 = Auto, 2 = Custom
---@field order tts__PlayerHandColor[] @Turn order represented by an array of player colours.
---@field reverse_order boolean @Whether turns should take place in the reverse order to that which has been specified.
---@field skip_empty_hands boolean @Skips a player's turn if there are no objects in the player's (primary) hand. WARNING: Does not presently work when using a custom turn ordering.
---@field disable_interactations boolean @When enabled, players whose turn it is not will be unable to interact with objects.
---@field pass_turns boolean @Whether the player whose turn it currently is permitted to choose to pass their turn to any other seated player.
---@field turn_color nil | tts__PlayerHandColor @The color of the player whose turn it currently is.
Turns = {}

---@return tts__PlayerHandColor
function Turns.getNextTurnColor() end

---@return tts__PlayerHandColor
function Turns.getPreviousTurnColor() end
