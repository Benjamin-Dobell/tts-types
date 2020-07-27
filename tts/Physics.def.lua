---@alias tts__Physics_CastParametersType 1 | 2 | 3

---@shape tts__Physics_CastParameters
---@field type tts__Physics_CastParametersType
---@field origin nil | tts__VectorShape @Position of the starting point. Default (0,0,0)
---@field direction nil | tts__VectorShape @A direction for the cast to move in.
---@field max_distance nil | number @How far the cast will travel. Default Infinity
---@field debug nil | boolean @If the cast is visualized for the user. Default false

---@shape tts__Physics_CastRayParameters: tts__Physics_CastParameters
---@field type 1

---@shape tts__Physics_CastSphereParameters: tts__Physics_CastParameters
---@field type 2
---@field size nil | tts__VectorShape @size.x specifies the diameter of the sphere. Default (0,0,0)

---@shape tts__Physics_CastBoxParameters: tts__Physics_CastParameters
---@field type 3
---@field size nil | tts__VectorShape @Size of the box. Default (0,0,0)
---@field orientation nil | tts__VectorShape @Euler angles (in degrees) specifying the rotation of the box. Default (0,0,0)

---@shape tts__Physics_CastResult
---@field point tts__Vector @Position the cast impacted the Object.
---@field normal tts__Vector @The surface normal of the impact point.
---@field distance number @Distance between cast origin and impact point.
---@field hit_object tts__Object @An Object reference to the Object hit by the cast.

---@class tts__Physics
---@field play_area number @The play area being used (i.e. how far from middle you can get). Values from 0-1. Default 0.5
Physics = {}

--- Returns an array (of up to 1000) intersections.
---@param parameters tts__Physics_CastRayParameters | tts__Physics_CastSphereParameters | tts__Physics_CastBoxParameters
---@return tts__Physics_CastResult[]
function Physics.cast(parameters) end

--- Returns a Vector representing the direction and magnitude of gravity.
---@return tts__Vector
function Physics.getGravity() end

--- Sets the direction and magnitude of gravity.
---@param gravity tts__VectorShape
---@return boolean
function Physics.setGravity(gravity) end
