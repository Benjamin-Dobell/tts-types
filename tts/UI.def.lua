---@class tts__UI
local UI

---@shape tts__UICustomAsset
---@field name string
---@field url string

---@overload fun(xml: string)
---@param xml string
---@param assets tts__UICustomAsset[]
---@return boolean
function UI.setXml() end
