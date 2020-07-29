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

---@shape tts__SnapPoint
---@field position tts__Vector @Position of the snap point. The position is relative to the entity's center (a local position).
---@field rotation tts__Vector @Rotation of the snap point. The rotation is relative to the entity's rotation (a local rotation).
---@field rotation_snap boolean @If the snap point is a "rotation" snap point.

--- Returns an array  of sub-tables, each sub-table representing one snap point.
---@return tts__SnapPoint[]
function getSnapPoints() end

---@shape tts__VectorLineGroup
---@field points tts__Vector[] @An array of 2 or more points. Lines are drawn between each consecutive pair of points.
---@field color tts__Color @The color to draw the lines.
---@field rotation tts__Vector @Rotation of lines. The rotation is relative to the entity's rotation (a local rotation).
---@field thickness number @The thickness of the lines

------ Returns an array of sub-tables, each sub-table representing VectorLineGroup.
---@return tts__VectorLineGroup[]
function getVectorLines() end

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


---@shape tts__SnapPointParameters
---@field position nil | tts__VectorShape @Default Vector(0,0,0). Position of the snap point. The position is relative to the entity's center (a local position).
---@field rotation nil | tts__VectorShape @Default Vector(0,0,0). Rotation of the snap point. The rotation is relative to the entity's rotation (a local rotation).
---@field rotation_snap nil | boolean @default false. If the snap point is a "rotation" snap point.

--- Spawns snap points from an array of parameters.
---@overload fun(parameters: table):string
---@param parameters tts__SnapPointParameters[]
---@return string
function setSnapPoints(parameters) end

---@shape tts__VectorLineGroupParameters
---@field points tts__VectorShape[] @An array of 2 or more points. Lines are drawn between each consecutive pair of points.
---@field color nil | tts__Color @Default Color(1,1,1). The color to draw the lines.
---@field rotation nil | tts__VectorShape @Default Vector(0,0,0). Rotation of lines. The rotation is relative to the entity's rotation (a local rotation).
---@field thickness nil | number @Default 0.1. The thickness of the lines

--- Render vector lines from an array of parameters.
---@param parameters tts__VectorLineGroupParameters[]
function setVectorLines(parameters) end

