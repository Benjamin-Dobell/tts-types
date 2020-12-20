---@shape tts__CharColorShape
---@field r number
---@field g number
---@field b number
---@field a nil | number

---@shape tts__NumColorShape
---@field [1] number
---@field [2] number
---@field [3] number
---@field [4] nil | number

---@alias tts__ColorShape tts__CharColorShape | tts__NumColorShape | tts__PlayerColor

---@class tts__Color
---@overload fun(src: tts__Color): tts__Color
---@overload fun(r: number, g: number, b: number): tts__Color
---@overload fun(r: number, g: number, b: number, a: number): tts__Color
---@field [tts__PlayerColor] tts__Color
---@field __isColor true
---@field r number
---@field g number
---@field b number
---@field a number
---@field [1] number
---@field [2] number
---@field [3] number
---@field [4] number
Color = {}

---@overload fun(src: tts__Color): tts__Color
---@overload fun(r: number, g: number, b: number): tts__Color
---@param r number
---@param g number
---@param b number
---@param a number
---@return tts__Color
function Color.new(r, g, b, a) end

---@param name string
---@param color tts__Color
function Color.Add(name, color) end

---@param strColor string
---@return tts__Color
function Color.fromString(strColor) end

---@param hexColor string
---@return tts__Color
function Color.fromHex(hexColor) end

---@return number, number, number, number
function Color:get()
    return self.r, self.g, self.b, self.a
end

---@overload fun(): string
---@param includeAlpha nil | boolean
---@return string
function Color:toHex(includeAlpha) end

---@overload fun(): string
---@param tolerance nil | number
---@return string
function Color:toString(tolerance) end

---@overload fun(r: number, g: number, b: number)
---@param r number
---@param g number
---@param b number
---@param a number
function Color:set(r, g, b, a) end

---@param key 'r' | 'g' | 'b' | 'a'
---@param value number
function Color:setAt(key, value) end

---@overload fun(other: any)
---@param other any
---@param margin number
---@return boolean
function Color:equals(other, margin) end

---@param other any
---@param margin number
---@return boolean
function Color:__eq(other, margin) end

---@return tts__Color
function Color:copy() end

---@overload fun(): string
---@param prefix string
---@return string
function Color:dump(prefix) end

---@return string
function Color:__tostring() end

---@param other tts__Color
---@param t number
function Color:lerp(other, t) end
