---@alias tts__UIAssetType 0 | 1

---@shape tts__UI_AssetTypes
---@field Image 0
---@field AssetBundle 1

---@class tts__UI
---@field AssetType tts__UI_AssetTypes
UI = {}

---@alias tts__UIAssetName string

---@shape tts__UIAsset
---@field type nil | tts__UIAssetType
---@field name tts__UIAssetName
---@field url string

---@alias tts__UILayoutElement_Tag "HorizontalLayout" | "VerticalLayout" | "TableLayout" | "Panel" | "VerticalScrollView"
---@alias tts__UIElement_Tag  "Defaults" | tts__UILayoutElement_Tag
---@alias tts__UILayoutElement tts__UIHorizontalLayoutElement | tts__UIVerticalLayoutElement
---@alias tts__UIElement tts__UIDefaultsElement | tts__UILayoutElement | tts__UIButtonElement | tts__UIPanelElement | tts__UITextElement | tts__UIDropdownElement | tts__UIOptionElement | tts__UIImageElement | tts__UIToggleElement | tts__UIToggleButtonElement | tts__UIToggleGroupElement


---@alias tts__UIElement_Alignment "UpperLeft" | "UpperCenter" | "UpperRight" | "MiddleLeft" | "MiddleCenter" | "MiddleRight" | "LowerLeft" | "LowerCenter" | "LowerRight"
---@alias tts__UIElement_Boolean boolean | "true" | "false" | "1" | "0" | 1 | 0
---@alias tts__UIElement_Color string
---@alias tts__UIElement_ColorBlock string
---@alias tts__UIElement_ContentSizeFit "vertical" | "horizontal" | "both" | "none"
---@alias tts__UIElement_FontStyle "Normal" | "Bold" | "Italic" | "BoldItalic"
---@alias tts__UIElement_IconAlignment "Left" | "Right"
---@alias tts__UIElement_Id string
---@alias tts__UIElement_Navigation "None" | "Horizontal" | "Vertical" | "Automatic" | "Explicit"
---@alias tts__UIElement_Number number | string
---@alias tts__UIElement_Padding string
---@alias tts__UIElement_Percentage string
---@alias tts__UIElement_Vector2 string
---@alias tts__UIElement_Vector3 string

---@alias tts__UIElement_HideAnimation "None" | "Shrink" | "FadeOut" | "SlideOut_Left" | "SlideOut_Right" | "SlideOut_Top" | "SlideOut_Bottom"
---@alias tts__UIElement_ShowAnimation "None" | "Grow" | "FadeIn" | "SlideIn_Left" | "SlideIn_Right" | "SlideIn_Top" | "SlideIn_Bottom"


---@alias tts__UIElement_CallbackFunction fun(player: tts__Player, value: string, id: nil | string)

--- The name of global function matching the type tts__UIElement_CallbackFunction.
---
--- By default the global function is looked for in the Lua script context belonging to the same
--- object as the UI was presented on (or in Global if the UI is Global UI). However, prefixing the
--- function name with either "Global/" or "[Object GUID]/", will cause the message to be delivered
--- to the corresponding script context.
---@alias tts__UIElement_CallbackFunctionName string

---@shape tts__UIElementBase_Attributes
---@field id nil | tts__UIElement_Id
---@field name nil | string
---@field opacity number
---@field class nil | string @Space separated list of class names
---@field active nil | tts__UIElement_Boolean @Default true
---@filed visibility nil | string
---@field raycastTarget nil | tts__UIElement_Boolean @Default true
---@field onClick nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseDown nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseUp nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" (Left), "-2" (Right) or "-3" (Middle) as the value.
---@field onMouseEnter nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" as the value.
---@field onMouseExit nil | tts__UIElement_CallbackFunctionName @Unless you provide your own parameter as part of the name, the callback is passed "-1" as the value.
---@field shadow nil | tts__UIElement_Color @Default "None"
---@field shadowDistance nil | tts__UIElement_Vector2 @Default "1 -1"
---@field outline nil | tts__UIElement_Color @Default "None"
---@field outlineSize nil | tts__UIElement_Vector2 @Default "1 -1"
---@field ignoreLayout nil | tts__UIElement_Boolean @Default false
---@field minWidth nil | tts__UIElement_Number
---@field minHeight nil | tts__UIElement_Number
---@field preferredWidth nil | tts__UIElement_Number
---@field preferredHeight nil | tts__UIElement_Number
---@field flexibleWidth nil | tts__UIElement_Number
---@field flexibleHeight nil | tts__UIElement_Number
---@field rectAlignment nil | tts__UIElement_Alignment @Default "MiddleCenter"
---@field width nil | tts__UIElement_Number | tts__UIElement_Percentage @Default "100%"
---@field height nil | tts__UIElement_Number | tts__UIElement_Percentage @Default "100%"
---@field offsetXY nil | tts__UIElement_Vector2 @Default "0 0"
---@field showAnimation nil | tts__UIElement_ShowAnimation @Default "None"
---@field hideAnimation nil | tts__UIElement_HideAnimation @Default "None"
---@field showAnimationDelay nil | tts__UIElement_Number @Default "0"
---@field hideAnimationDelay nil | tts__UIElement_Number @Default "0"
---@field animationDuration nil | tts__UIElement_Number @Default "0.25"
---@field contentSizeFitter nil | tts__UIElement_ContentSizeFit @Default "none"
---@field anchorMin nil | tts__UIElement_Vector2
---@field anchorMax nil | tts__UIElement_Vector2
---@field sizeDelta nil | tts__UIElement_Vector2
---@field pivot nil | tts__UIElement_Vector2
---@field rotation nil | tts__UIElement_Vector3
---@field scale nil | tts__UIElement_Vector2
---@field offsetMin nil | tts__UIElement_Vector2
---@field offsetMax nil | tts__UIElement_Vector2
---@field offsetMax nil | tts__UIElement_Vector2
---@field selected nil | tts__UIElement_Boolean @Default false
---@field navigation nil | tts__UIElement_Navigation @Default "Automatic"
---@field selectOnUp nil | tts__UIElement_Id
---@field selectOnDown nil | tts__UIElement_Id
---@field selectOnLeft nil | tts__UIElement_Id
---@field selectOnRight nil | tts__UIElement_Id

---@shape tts__UIElementBase<Attributes : tts__UIElementBase_Attributes, Child : tts__UIElement>
---@field attributes nil | Attributes
---@field children nil | Child[]

---@shape tts__UIInputElementBase_Attributes : tts__UIElementBase_Attributes
---@field onValueChanged nil | tts__UIElement_CallbackFunctionName @Name of function with the type tts__UIElement_CallbackFunction

---@shape tts__UIInputElementBase<Attributes : tts__UIInputElementBase_Attributes, Child : tts__UIElement> : tts__UIElementBase<Attributes, Child>

---@alias tts__UIButtonElement_Transition "None" | "ColorTint" | "SpriteSwap" | "Animation"

---@shape tts__UIButtonElement_Attributes : tts__UIElementBase_Attributes
---@field fontSize nil | tts__UIElement_Number @Default 14
---@field fontStyle nil | tts__UIElement_FontStyle @Default "Normal"
---@field interactable nil | tts__UIElement_Boolean @Default true
---@field textColor nil | tts__UIElement_Color @Default "#000000"
---@field colors nil | tts__UIElement_ColorBlock @Default "#FFFFFF|#FFFFFF|#C8C8C8|rgba(0.78,0.78,0.78,0.5)"
---@field textColors nil | tts__UIElement_ColorBlock
---@field textShadow nil | tts__UIElement_Color @Default "None"
---@field textOutline nil | tts__UIElement_Color @Default "None"
---@field textAlignment nil | tts__UIElement_Alignment @Default "UpperLeft"
---@field icon nil | tts__UIAssetName @Default ""
---@field iconWidth nil | tts__UIElement_Color
---@field iconHeight nil | tts__UIElement_Color
---@field iconAlignment nil | tts__UIElement_IconAlignment @Default "Left"
---@field padding nil | tts__UIElement_Padding @Default "0 0 0 0"
---@field transition nil | tts__UIButtonElement_Transition
---@field highlightedSprite nil | tts__UIAssetName
---@field pressedSprite nil | tts__UIAssetName
---@field disabledSprite nil | tts__UIAssetName
---@field highlightedSprite nil | tts__UIAssetName

---@shape tts__UIButtonElement : tts__UIElementBase<tts__UIButtonElement_Attributes, tts__UIElement>
---@field tag "Button"
---@field value nil | string

---@shape tts__UICellElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>

---@shape tts__UIDefaultsElement_Attributes : tts__UIElementBase_Attributes

---@shape tts__UIDefaultsElement : tts__UIElementBase<tts__UIDefaultsElement_Attributes, tts__UIElement>
---@field tag "Defaults"

---@shape tts__UIDropdownElement_Attributes : tts__UIInputElementBase_Attributes
---@field onValueChanged tts__UIElement_CallbackFunctionName @Callback name may be optionally followed by "(selectedText)", "(selectedValue)" or "(selectedIndex)". The latter causes the selected Option's index (0-based) to be passed to the callback (but represented as a string). The former two are identical and match the default behavior (no parameter specified) passing the text value of the Option to the callback.
---@field textAlignment nil | tts__UIElement_Alignment @Default "UpperLeft"
---@field textColor nil | tts__UIElement_Color @Default "#000000"
---@field textOutline nil | tts__UIElement_Color @Default "None"
---@field textShadow nil | tts__UIElement_Color @Default "None"
---@field itemBackgroundColors nil | tts__UIElement_ColorBlock @Default "#FFFFFF|#FFFFFF|#C8C8C8|rgba(0.78,0.78,0.78,0.5)"
---@field itemTextColor nil | tts__UIElement_Color @Default "#000000"
---@field checkColor nil | tts__UIElement_Color @Default "#000000"
---@field checkImage nil | tts__UIAssetName
---@field checkImagePreserveAspect nil | boolean
---@field checkSize nil | number
---@field arrowColor nil | tts__UIElement_Color @Default "#000000"
---@field arrowImage nil | tts__UIAssetName
---@field arrowOffset nil | tts__UIElement_Vector2
---@field dropdownBackgroundColor nil | tts__UIElement_Color @Default "None"
---@field dropdownBackgroundImage nil | tts__UIAssetName
---@field dropdownHeight nil | number
---@field scrollbarColors nil | tts__UIElement_ColorBlock
---@field scrollbarImage nil | tts__UIAssetName
---@field scrollbarBackgroundColor nil | tts__UIElement_Color @Default "None"
---@field scrollbarBackgroundImage nil | tts__UIAssetName
---@field scrollSensitivity nil | number @Default 1.0. A factor/multiplier to augment the scroll speed.
---@field itemHeight nil | number

---@shape tts__UIDropdownElement : tts__UIElementBase<tts__UIDropdownElement_Attributes, tts__UIOptionElement>
---@field tag "Dropdown"

---@shape tts__UIImageElement_Attributes : tts__UIElementBase_Attributes
---@field image string
---@field preserveAspect nil | tts__UIElement_Boolean

---@shape tts__UIImageElement : tts__UIElementBase<tts__UIImageElement_Attributes, tts__UIElement>
---@field tag "Image"

---@shape tts__UIRowElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>

---@alias tts__UITextElement_HorizontalOverflow "Wrap" | "Overflow"
---@alias tts__UITextElement_VerticalOverflow "Truncate" | "Overflow"

---@shape tts__UITextElement_Attributes : tts__UIElementBase_Attributes
---@field alignment nil | tts__UIElement_Alignment @Default "MiddleCenter"
---@field color nil | tts__UIElement_Color
---@field font nil | string @Note: At present TTS doesn't really support custom fonts. You can reference a system font name, but each OS has a different font list, so it's probably a bad idea.
---@field fontStyle nil | tts__UIElement_FontStyle @Default "Normal"
---@field fontSize nil | tts__UIElement_Number @Default 14
---@field resizeTextForBestFit nil | tts__UIElement_Boolean @Default false
---@field resizeTextMinSize nil | tts__UIElement_Number @Default 10
---@field resizeTextMaxSize nil | tts__UIElement_Number @Default 40
---@field horizontalOverflow nil | tts__UITextElement_HorizontalOverflow @Default "Overflow"
---@field verticalOverflow nil | tts__UITextElement_VerticalOverflow @Default "Truncate"

---@shape tts__UITextElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>
---@field tag "Text"
---@field children nil
---@field value nil | string

---@shape tts__UITableLayoutElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>

---@shape tts__UIToggleElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>
---@field tag "Toggle"

---@shape tts__UIToggleButtonElement : tts__UIInputElementBase<tts__UIInputElementBase_Attributes, tts__UIElement>
---@field tag "ToggleButton"
---@field value nil | string

---@shape tts__UIToggleGroupElement : tts__UIElementBase<tts__UIElementBase_Attributes, tts__UIElement>
---@field tag "ToggleGroup"

---@shape tts__UIPanelElement_Attributes : tts__UIElementBase_Attributes
---@field padding nil | tts__UIElement_Padding
---@field color nil | tts__UIElement_Color

---@shape tts__UIPanelElement : tts__UILayoutElementBase<tts__UIPanelElement_Attributes>
---@field tag "Panel"

---@shape tts__UIOptionElement_Attributes : tts__UIElementBase_Attributes
---@field selected nil | tts__UIElement_Boolean

---@shape tts__UIOptionElement : tts__UIElementBase<tts__UIOptionElement_Attributes, tts__UIElement>
---@field tag "Option"
---@field value nil | string | number

---@shape tts__UILayoutElementBase_Attributes : tts__UIElementBase_Attributes
---@field childAlignment nil | tts__UIElement_Alignment
---@field padding nil | tts__UIElement_Padding

---@shape tts__UILayoutElementBase<Attributes : tts__UILayoutElementBase_Attributes> : tts__UIElementBase<Attributes, tts__UIElement>

---@shape tts__UIHorizontalOrVerticalLayoutElementBase_Attributes : tts__UILayoutElementBase_Attributes
---@field spacing nil | tts__UIElement_Number @Default 0
---@field childForceExpandWidth nil | tts__UIElement_Boolean @Default true
---@field childForceExpandHeight nil | tts__UIElement_Boolean @Default true
---@field childControlWidth nil | tts__UIElement_Boolean @Default true
---@field childControlHeight nil | tts__UIElement_Boolean @Default true
---@field childScaleWidth nil | tts__UIElement_Boolean @Default false
---@field childScaleHeight nil | tts__UIElement_Boolean @Default false

---@shape tts__UIHorizontalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIHorizontalLayoutElement : tts__UIElementBase<tts__UIHorizontalLayoutElement_Attributes, tts__UIElement>
---@field tag "HorizontalLayout"

---@shape tts__UIVerticalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIVerticalLayoutElement : tts__UIElementBase<tts__UIVerticalLayoutElement_Attributes, tts__UIElement>
---@field tag "VerticalLayout"

---@param id tts__UIElement_Id
---@param name string
---@return string
function UI.getAttribute(id, name) end

---@param id tts__UIElement_Id
---@return table<string, string>
function UI.getAttributes(id) end

---@return  tts__UIAsset[]
function UI.getCustomAssets() end

---@param id tts__UIElement_Id
---@return string
function UI.getValue(id) end

---@return string
function UI.getXml() end

---@return tts__UIElement[]
function UI.getXmlTable() end

---@param id string
---@return boolean
function UI.hide(id) end

---@param id tts__UIElement_Id
---@param name string
---@param value string | number | boolean
---@return boolean
function UI.setAttribute(id, name, value) end

---@generic V : (string | number | boolean)
---@param id tts__UIElement_Id
---@param attributes table<string, V>
---@return boolean
function UI.setAttributes(id, attributes) end

---@param assets tts__UIAsset[]
---@return void
function UI.setCustomAssets(assets) end

---@param id tts__UIElement_Id
---@param value string
---@return boolean
function UI.setValue(id, value) end

---@overload fun(xml: string)
---@param xml string
---@param assets tts__UIAsset[]
---@return boolean
function UI.setXml(xml, assets) end

---@overload fun(xmlTable: tts__UIElement[])
---@param xmlTable tts__UIElement[]
---@param assets tts__UIAsset[]
---@return boolean
function UI.setXmlTable(xmlTable, assets) end

---@param id string
---@return boolean
function UI.show(id) end
