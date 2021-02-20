---@shape tts__CharVectorShape
---@field x number
---@field y number
---@field z number

---@shape tts__NumVectorShape
---@field [1] number
---@field [2] number
---@field [3] number

---@alias tts__VectorShape tts__CharVectorShape | tts__NumVectorShape

---@class tts__Vector : tts__CharVectorShape
---@overload fun(x: number, y: number, z: number): tts__Vector
---@overload fun(src: tts__VectorShape): tts__Vector
---@field __isVector true
---@field [1] number
---@field [2] number
---@field [3] number
Vector = {}

---@overload fun(src: tts__VectorShape): tts__Vector
---@param x number
---@param y number
---@param z number
---@return tts__Vector
function Vector.new(x, y, z) end

---@param k 'x' | 'y' | 'z'
---@return self
function Vector:setAt(k, v) end

---@param x nil | number
---@param y nil | number
---@param z nil | number
---@return self
function Vector:set(x, y, z) end

---@return number, number, number
function Vector:get() end

---@return tts__Vector
function Vector:copy() end

---@param other tts__CharVectorShape
---@return self
function Vector:add(other) end

---@param v1 tts__Vector
---@param v2 tts__CharVectorShape
---@return tts__Vector
function Vector.__add(v1, v2) end

---@param other tts__CharVectorShape
---@return self
function Vector:sub(other) end

---@param v1 tts__Vector
---@param v2 tts__CharVectorShape
---@return tts__Vector
function Vector.__sub(v1, v2) end

---@param other tts__CharVectorShape
---@return number
function Vector:dot(other) end

---@return number
function Vector:sqrMagnitude() end

---@return number
function Vector:magnitude() end

---@overload fun(scale: number): self
---@overload fun(scale: tts__Vector): self
---@param x string
---@param y string
---@param z string
---@return self
function Vector:scale(x, y, z) end

---@overload fun(v1: tts__Vector, v2: tts__Vector): tts__Vector
---@overload fun(v: tts__Vector, scale: number): tts__Vector
---@overload fun(scale: number, v: tts__Vector): tts__Vector
---@param v tts__Vector
---@param scaleX string
---@param scaleY string
---@param scaleZ string
---@return tts__Vector
function Vector.__mul(v, scaleX, scaleY, scaleZ) end

---@param other tts__CharVectorShape
---@return number
function Vector:sqrDistance(other) end

---@param other tts__CharVectorShape
---@return number
function Vector:distance(other) end

---@overload fun(other: any): boolean
---@param other any
---@param margin number
---@return boolean
function Vector:equals(other, margin) end

---@overload fun(other: any): boolean
---@param other any
---@param margin number
---@return boolean
function Vector:__eq(other, margin) end

---@overload fun(): string
---@param prefix string
---@return string
function Vector:string(prefix) end

---@return string
function Vector:__tostring() end

---@param other tts__Vector
---@return number
function Vector:angle(other) end

---@param maxLen number
---@return self
function Vector:clamp(maxLen) end

---@param other tts__CharVectorShape
---@return tts__Vector
function Vector:cross(other) end

---@param from tts__Vector
---@param to tts__Vector
---@return tts__Vector
function Vector.between(from, to) end

---@param target tts__Vector
---@param t number
---@return tts__Vector
function Vector:lerp(target, t) end

---@param target tts__Vector
---@param maxDist number
---@return tts__Vector
function Vector:moveTowards(target, maxDist) end

---@return self
function Vector:normalize() end

---@return tts__Vector
function Vector:normalized() end

---@param other tts__Vector
---@return self
function Vector:project(other) end

---@param unitTarget tts__Vector
---@param maxDelta number
---@return self
function Vector:rotateTowardsUnit(unitTarget, maxDelta) end

---@param target tts__Vector
---@param maxDelta number
---@return self
function Vector:rotateTowards(target, maxDelta) end

---@param planeNormal tts__Vector
---@return self
function Vector:reflect(planeNormal) end

---@param axis 'x' | 'y' | 'z'
---@param angle number
---@return self
function Vector:rotateOver(axis, angle) end

---@param v1 tts__CharVectorShape
---@param v2 tts__CharVectorShape
---@return tts__Vector
function Vector.max(v1, v2) end

---@param v1 tts__CharVectorShape
---@param v2 tts__CharVectorShape
---@return tts__Vector
function Vector.min(v1, v2) end

---@return self
function Vector:inverse() end

---@param planeNormal tts__Vector
---@return self
function Vector:projectOnPlane(planeNormal) end

---@overload fun(): self, tts__Vector, tts__Vector
---@param binormalPlanar tts__Vector
---@return self, tts__Vector, tts__Vector
function Vector:orthoNormalize(binormalPlanar) end

---@overload fun(): number, number, number
---@param axis 'x' | 'y' | 'z'
---@return number
function Vector:heading(axis) end
