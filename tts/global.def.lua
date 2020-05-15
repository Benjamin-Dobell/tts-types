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

---@param message string
---@return boolean
function printToAll(message) end

---@overload fun(player_color: string):string
---@param player_color string
---@return string
function stringColorToRGB(player_color) end

