---@class tts__UI
UI = {}

---@shape tts__UICustomAsset
---@field name string
---@field url string

---@alias tts__UIElement_Boolean boolean | "true" | "false" | "1" | "0" | 1 | 0
---@alias tts__UIElement_Color string
---@alias tts__UIElement_ColorBlock string
---@alias tts__UIElement_ContentSizeFit "vertical" | "horizontal" | "both" | "none"
---@alias tts__UIElement_Id string
---@alias tts__UIElement_Navigation "None" | "Horizontal" | "Vertical" | "Automatic" | "Explicit"
---@alias tts__UIElement_Number number | string
---@alias tts__UIElement_Percentage string
---@alias tts__UIElement_RectAlignment "UpperLeft" | "UpperCenter" | "UpperRight" | "MiddleLeft" | "MiddleCenter" | "MiddleRight" | "LowerLeft" | "LowerCenter" | "LowerRight"
---@alias tts__UIElement_Vector2 string
---@alias tts__UIElement_Vector3 string

--- Left | Right | Middle
---@alias tts__UIElement_MouseButton -1 | -2 | -3

---@alias tts__UIElement_MouseButtonCallback fun(player: tts__Player, value: tts__UIElement_MouseButton, id: nil | string)
---@alias tts__UIElement_MouseCallback fun(player: tts__Player, value: -1, id: nil | string)

---@shape tts__UIElement_Attributes
---@field id nil | tts__UIElement_Id
---@field name nil | string
---@field class nil | string @Space separated list of class names
---@field active nil | tts__UIElement_Boolean
---@field onClick nil | tts__UIElement_MouseButtonCallback
---@field onMouseDown nil | tts__UIElement_MouseButtonCallback
---@field onMouseUp nil | tts__UIElement_MouseButtonCallback
---@field onMouseEnter nil | tts__UIElement_MouseCallback
---@field onMouseExit nil | tts__UIElement_MouseCallback
---@field shadow nil | tts__UIElement_Color
---@field shadowDistance nil | tts__UIElement_Vector2
---@field outline nil | tts__UIElement_Color
---@field outlineSize nil | tts__UIElement_Vector2
---@field ignoreLayout nil | tts__UIElement_Boolean
---@field minWidth nil | tts__UIElement_Number
---@field minHeight nil | tts__UIElement_Number
---@field preferredWidth nil | tts__UIElement_Number
---@field preferredHeight nil | tts__UIElement_Number
---@field flexibleWidth nil | tts__UIElement_Number
---@field flexibleHeight nil | tts__UIElement_Number
---@field rectAlignment nil | tts__UIElement_RectAlignment
---@field width nil | tts__UIElement_Number | tts__UIElement_Percentage
---@field height nil | tts__UIElement_Number | tts__UIElement_Percentage
---@field offsetXY nil | tts__UIElement_Vector2
---@field contentSizeFitter nil | tts__UIElement_ContentSizeFit
---@field anchorMin nil | tts__UIElement_Vector2
---@field anchorMax nil | tts__UIElement_Vector2
---@field sizeDelta nil | tts__UIElement_Vector2
---@field pivot nil | tts__UIElement_Vector2
---@field rotation nil | tts__UIElement_Vector3
---@field scale nil | tts__UIElement_Vector2
---@field offsetMin nil | tts__UIElement_Vector2
---@field offsetMax nil | tts__UIElement_Vector2
---@field selected nil | tts__UIElement_Boolean
---@field navigation nil | tts__UIElement_Navigation
---@field selectOnUp nil | tts__UIElement_Id
---@field selectOnDown nil | tts__UIElement_Id
---@field selectOnLeft nil | tts__UIElement_Id
---@field selectOnRight nil | tts__UIElement_Id

-- TODO: Union of string literals
---@alias tts__UIElement_Tag string

---@shape tts__UIElement
---@field tag string
---@field attributes nil | table<string, any>
---@field children nil | tts__UIElement[]

---@return string
function UI.getXml() end

---@return tts__UIElement[]
function UI.getXmlTable() end

---@overload fun(xml: string)
---@param xml string
---@param assets tts__UICustomAsset[]
---@return boolean
function UI.setXml(xml, assets) end

---@overload fun(xmlTable: tts__UIElement[])
---@param xmlTable tts__UIElement[]
---@param assets tts__UICustomAsset[]
---@return boolean
function UI.setXmlTable(xmlTable, assets) end
