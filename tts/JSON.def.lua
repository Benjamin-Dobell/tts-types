---@class tts__JSON
JSON = {}

---@generic T
---@param tbl T[]
---@return T[]
function JSON:newArray(tbl) end

---@generic T
---@param tbl T
---@return T
function JSON:newObject(tbl) end

---@param text string
---@return table
function JSON.decode(text) end

---@shape tts__JSON__EncodeOptions
---@field pretty nil | boolean
---@field align_keys nil | boolean
---@field indent nil | string

---@overload fun(value: table | string | number | boolean)
---@param value table | string | number | boolean
---@param etc any @Unused
---@param options tts__JSON__EncodeOptions
---@return string
function JSON.encode(value, etc, options) end

---@param value table | string | number | boolean
---@param etc any @Unused
---@param options tts__JSON__EncodeOptions
---@return string
function JSON.encode_pretty(value, etc, options) end
