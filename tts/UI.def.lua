---@class tts__UI
UI = {}

---@shape tts__UICustomAsset
---@field name string
---@field url string

---@param id string  @The Id that was assigned, as an attribute, to the desired XML UI element.
---@param attribute string @The name of the attribute you wish to get the value of.
---@return any
function UI.getAttribute(id, attribute) end


---@return string
function UI.getXml() end

---@return table<string, any>[]
function UI.getXmlTable() end

---hide Hides the given UI element. Unlike the "active" attribute, hide triggers animations.
---@param id string @The Id that was assigned, as an attribute, to the desired XML UI element.
---@return boolean
function UI.hide(id) end


---@param id string  @The Id that was assigned, as an attribute, to the desired XML UI element.
---@param attribute string @The name of the attribute you wish to set the value of.
---@param value any @The value to set for the attribute.
---@return boolean
function UI.setAttribute(id, attribute, value) end


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


---@param id string @he Id that was assigned, as an attribute, to the desired XML UI element.
---@return boolean
function UI.show(id) end
