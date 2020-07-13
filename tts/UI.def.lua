---@class tts__UI
local UI

---@shape tts__UICustomAsset
---@field name string
---@field url string

---@return string
function UI.getXml() end

---@return table<string, any>[]
function UI.getXmlTable() end

---@overload fun(xml: string)
---@param xml string
---@param assets tts__UICustomAsset[]
---@return boolean
function UI.setXml(xml, assets) end

---@overload fun(xmlTable: table<string, any>[])
---@param xmlTable table<string, any>[]
---@param assets tts__UICustomAsset[]
---@return boolean
function UI.setXmlTable(xmlTable, assets) end
