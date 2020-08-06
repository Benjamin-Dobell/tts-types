
---@overload fun(label: string, callback:fun(label: string, object: tts__Object, pointerPosition: nil | tts__Vector, isKeyUp: boolean): void)
---@param label string
---@param methodName string
---@param triggerOnKeyUp boolean @Defaults to false
function addHotkey(label, methodName, triggerOnKeyUp) end

---@overload fun(message: string):boolean
---@param message string
---@param color string
---@return boolean
function broadcastToAll(message, color) end

---@overload fun(message: string, playerColor: string):boolean
---@param message string
---@param playerColor string
---@param messageColor string
---@return boolean
function broadcastToColor(message, playerColor, messageColor) end

---@param objects tts__Object[]
---@return (tts__Container|tts__Stackable)[]
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

---@overload fun(player_color: string):string
---@param player_color string
---@return string
function stringColorToRGB(player_color) end

