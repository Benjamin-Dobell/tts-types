---@alias tts__GridType 1 | 2 | 3
---@alias tts__GridSnapping 1 | 2 | 3 | 4

---@class tts__GlobalGrid
---@field type tts__GridType
---@field show_lines boolean
---@field color tts__Color @TODO: Luanalysis limitation at time of writing. Technically the "setter" ought to be typed tts__ColorShape
---@field opacity number
---@field thick_lines boolean
---@field snapping tts__GridSnapping
---@field offsetX number
---@field offsetY number
---@field sizeX number
---@field sizeY number
Grid = {}
