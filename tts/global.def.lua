

---addHotkey - Add a bindable control. User may assign a key to it in Options->Game Keys.
---@overload fun(label:string,  callback:fun())
---@param label string
---@param method_name string
---@param trigger_on_key_up boolean @Defaults to false
function addHotkey(label, method_name, trigger_on_key_up) end

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
---@return tts__Container[]
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


---@shape tts__SnapPoint
---@field position tts__Vector Position of the snap point. The position is relative to the entity's center (a local position).
---@field rotation tts__Vector Rotation of the snap point. The rotation is relative to the entity's rotation (a local rotation).
---@field rotation_snap boolean If the snap point is a "rotation" snap point.

---@overload fun(parameters: table):string
---@param parameters tts__SnapPoint[]
---@return string
function setSnapPoints(parameters) end

--- Returns a table of sub-tables, each sub-table representing one snap point.
---@return tts__SnapPoint[]
function getSnapPoints() return {} end


---@shape tts__VectorLineGroup
---@field points tts__Vector[] An array of 2 or more points.  Lines are drawn between each consecutive pair of points.
---@field color nil|tts__Color @Default Color(1,1,1). The color to draw the lines.
---@field rotation nil|tts__Vector  @Default Vector(0,0,0). Rotation of  lines. The rotation is relative to the entity's rotation (a local rotation).
---@field thickness nil|number  @Default 0.1. The thickness of the lines

--- Render vector lines  from a list of parameters.
---@param parameters tts__VectorLineGroup[]
function setVectorLines(parameters) end

--- Returns a table of sub-tables, each sub-table representing VectorLineGroup.
---@return tts__VectorLineGroup[]
function getVectorLines()
    return {}
end
