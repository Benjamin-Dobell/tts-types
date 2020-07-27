---@shape tts__Physics_CastParameters
---@field origin tts__Vector|nil Position of the starting point. Default (0,0,0)
---@field direction tts__Vector|nil A direction for the cast to move in.
---@field max_distance number|nil How far the cast will travel. Default Infinity
---@field debug boolean|nil If the cast is visualized for the user. Default false

---@shape tts__Physics_CastRayParamaters: tts__Physics_CastParameters
---@field type 1

---@shape tts__Physics_CastSphereParamaters: tts__Physics_CastParameters
---@field type 2
---@field size tts__Vector|nil Size of the cast shape. Default (0,0,0)

---@shape tts__Physics_CastBoxParamaters: tts__Physics_CastParameters
---@field type 3
---@field size tts__Vector|nil Size of the cast shape. Default (0,0,0)
---@field orientation tts__Vector|nil Rotation of the cast shape. Default (0,0,0)

---@shape tts__Physics_CastResult
---@field point tts__Vector Position the cast impacted the Object.
---@field normal tts__Vector The surface normal of the impact point.
---@field distance number Distance between cast origin and impact point.
---@field hit_object tts__Object An Object reference to the Object hit by the cast.

---@class tts__Physics
---@field play_area number The play area being used (ie. how far from middle you can get). Values from 0-1. Default 0.5
Physics = {}

--- Returns Table containing information on hit Objects.
---@param parameters tts__Physics_CastRayParamaters | tts__Physics_CastSphereParamaters | tts__Physics_CastBoxParamaters
---@return tts__Physics_CastResult[]
function Physics.cast(parameters) end

--- Returns directional Vector of the direction gravity is pulling.
---@return tts__Vector
function Physics.getGravity() end

--- Sets the direction gravity gravity pulls.
---@param direction tts__Vector
---@return boolean
function Physics.setGravity(direction) end
