---@alias tts__Grid_Type 1 | 2 | 3
---@alias tts__Grid_Snapping 1 | 2 | 3 | 4

---@class tts__Grid
---@field type tts__Grid_Type
---@field show_lines boolean
---@field color tts__Color @TODO: Luanalysis limitation at time of writing. Technically the "setter" ought to be typed tts__ColorShape
---@field opacity number
---@field thick_lines boolean
---@field snapping tts__Grid_Snapping
---@field offsetX number
---@field offsetY number
---@field sizeX number
---@field sizeY number
Grid = {}
