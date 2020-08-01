---@class tts__UI
UI = {}

---@alias tts__UIAssetName string

---@shape tts__UIAsset
---@field name tts__UIAssetName
---@field url string


---@alias tts__UILayoutElement_Tag "HorizontalLayout" | "VerticalLayout"
---@alias tts__UILayoutElement tts__UIHorizontalLayoutElement | tts__UIVerticalLayoutElement
---@alias tts__UIElement_Tag  tts__UILayoutElement_Tag | "Button" | "Panel" | "Text"
---@alias tts__UIElement tts__UILayoutElement | tts__UIButtonElement | tts__UIPanelElement | tts__UITextElement


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

--- Left | Right | Middle
---@alias tts__UIElement_MouseButton -1 | -2 | -3

---@alias tts__UIElement_MouseButtonCallback fun(player: tts__Player, value: tts__UIElement_MouseButton, id: nil | string)
---@alias tts__UIElement_MouseCallback fun(player: tts__Player, value: -1, id: nil | string)


---@shape tts__UIElementBase_Attributes
---@field id nil | tts__UIElement_Id
---@field name nil | string
---@field class nil | string @Space separated list of class names
---@field active nil | tts__UIElement_Boolean @Default true
---@field onClick nil | tts__UIElement_MouseButtonCallback
---@field onMouseDown nil | tts__UIElement_MouseButtonCallback
---@field onMouseUp nil | tts__UIElement_MouseButtonCallback
---@field onMouseEnter nil | tts__UIElement_MouseCallback
---@field onMouseExit nil | tts__UIElement_MouseCallback
---@field shadow nil | tts__UIElement_Color @Default "None"
---@field shadowDistance nil | tts__UIElement_Vector2 @Default "1 -1"
---@field outline nil | tts__UIElement_Color @Default "None"
---@field outlineSize nil | tts__UIElement_Vector2 @Default "1 -1"
---@field ignoreLayout nil | tts__UIElement_Boolean @Default false
---@field minWidth nil | tts__UIElement_Number
---@field minHeight nil | tts__UIElement_Number
---@field preferredWidth nil | tts__UIElement_Number
---@field preferredHeight nil | tts__UIElement_Number
---@field flexibleWidth nil | tts__UIElement_Boolean
---@field flexibleHeight nil | tts__UIElement_Boolean
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

---@shape tts__UIElementBase
---@field tag tts__UIElement_Tag
---@field attributes nil | tts__UIElementBase_Attributes
---@field children nil | tts__UIElement[]

---@alias tts__UIButtonElement_Transition "None" | "ColorTint" | "SpriteSwap" | "Animation"

---@shape tts__UIButtonElement_Attributes : tts__UIElementBase_Attributes
---@field interactable nil | tts__UIElement_Boolean @Default true
---@field textColor nil | tts__UIElement_ColorBlock @Default "#000000"
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
---@field highlightedSprite nil | tts__UIAssetName
---@field highlightedSprite nil | tts__UIAssetName
---@field highlightedSprite nil | tts__UIAssetName
---@field highlightedSprite nil | tts__UIAssetName

---@shape tts__UIButtonElement : tts__UIElementBase
---@field attributes nil | tts__UIButtonElement_Attributes
---@field value nil | string

---@alias tts__UITextElement_HorizontalOverflow "Wrap" | "Overflow"
---@alias tts__UITextElement_VerticalOverflow "Truncate" | "Overflow"

---@shape tts__UITextElement_Attributes : tts__UIElementBase_Attributes
---@field alignment nil | tts__UIElement_Alignment
---@field color nil | tts__UIElement_Color
---@field font nil | string @Note: At present TTS doesn't really support custom fonts. You can reference a system font name, but each OS has a different font list, so it's probably a bad idea.
---@field fontStyle nil | tts__UIElement_FontStyle
---@field fontSize nil | tts__UIElement_Number
---@field resizeTextForBestFit nil | tts__UIElement_Boolean
---@field resizeTextMinSize nil | tts__UIElement_Number
---@field resizeTextMaxSize nil | tts__UIElement_Number
---@field horizontalOverflow nil | tts__UITextElement_HorizontalOverflow
---@field verticalOverflow nil | tts__UITextElement_VerticalOverflow

---@shape tts__UITextElement : tts__UIElementBase
---@field tag "Text"
---@field attributes nil | tts__UITextElement_Attributes
---@field children nil
---@field value nil | string

---@shape tts__UIPanelElement : tts__UILayoutElementBase
---@field tag "Panel"


---@shape tts__UILayoutElementBase_Attributes : tts__UIElementBase_Attributes
---@field childAlignment nil | tts__UIElement_Alignment
---@field padding nil | tts__UIElement_Padding

---@shape tts__UILayoutElementBase
---@field attributes nil | tts__UILayoutElementBase_Attributes

---@shape tts__UIHorizontalOrVerticalLayoutElementBase_Attributes : tts__UILayoutElementBase_Attributes
---@field spacing nil | tts__UIElement_Number @Default 0
---@field childForceExpandWidth nil | tts__UIElement_Boolean @Default true
---@field childForceExpandHeight nil | tts__UIElement_Boolean @Default true
---@field childControlWidth nil | tts__UIElement_Boolean @Default true
---@field childControlHeight nil | tts__UIElement_Boolean @Default true
---@field childScaleWidth nil | tts__UIElement_Boolean @Default false
---@field childScaleHeight nil | tts__UIElement_Boolean @Default false

---@shape tts__UIHorizontalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIHorizontalLayoutElement : tts__UIElementBase
---@field tag "HorizontalLayout"
---@field attributes nil | tts__UIHorizontalLayoutElement_Attributes

---@shape tts__UIVerticalLayoutElement_Attributes : tts__UIHorizontalOrVerticalLayoutElementBase_Attributes

---@shape tts__UIVerticalLayoutElement : tts__UIElementBase
---@field tag "VerticalLayout"
---@field attributes nil | tts__UIVerticalLayoutElement_Attributes


---@return string
function UI.getXml() end

---@return tts__UIElement[]
function UI.getXmlTable() end

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
