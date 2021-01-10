
---@overload fun(label: string, callback: fun(label: string, object: tts__Object, pointerPosition: nil | tts__Vector, isKeyUp: boolean): void): true
---@param label string
---@param callback fun(label: string, object: tts__Object, pointerPosition: nil | tts__Vector, isKeyUp: boolean): void
---@param triggerOnKeyUp boolean @Defaults to false
---@return true
function addHotkey(label, callback, triggerOnKeyUp) end

---@overload fun(label: string, callback: (fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void)): true
---@overload fun(label: string, callback: (fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void), keepOpen: boolean): true
---@param label string @Text for the menu item.
---@param callback fun(playerColor: tts__PlayerHandColor, menuPosition: nil | tts__Vector): void
---@param keepOpen boolean @Whether the context menu should remain open after the item is selected. Defaults to false.
---@param requireTable boolean @Whether the menu item is only included if the table is being hovered over. Defaults to false.
---@return true @Technically, returns false if your `callback` param is nil. However, Luanalysis won't allow you to make that mistake.
function addContextMenuItem(label, callback, keepOpen, requireTable) end

---@return true
function clearContextMenu() end

---@overload fun(message: string): boolean
---@param message string
---@param color string
---@return boolean
function broadcastToAll(message, color) end

---@overload fun(message: string, playerColor: string): boolean
---@param message string
---@param playerColor string
---@param messageColor string
---@return boolean
function broadcastToColor(message, playerColor, messageColor) end

---@param objects tts__Object[]
---@return (tts__Container | tts__Stackable)[]
function group(objects) end

---@overload fun(value: any): string
---@overload fun(value: any, label: string): string
---@param value any
---@param label string
---@param tags string
---@return string
function log(value, label, tags) end

---@overload fun(value: any): string
---@overload fun(value: any, label: string): string
---@overload fun(value: any, label: string, tag: string): string
---@overload fun(value: any, label: string, tag: string, concise: boolean): string
---@param value any
---@param label string
---@param tag string
---@param concise boolean @Default false
---@param displayTag boolean @Default false
---@return string
function logString(value, label, tag, concise, displayTag) end

---@overload fun(message: string): boolean
---@param message string
---@param color tts__ColorShape
---@return boolean
function printToAll(message, color) end

---@overload fun(player_color: string): string
---@param player_color string
---@return string
function stringColorToRGB(player_color) end

