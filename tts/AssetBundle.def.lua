---@class tts__AssetBundle
AssetBundle = {}

---@shape tts__AssetBundle_Effect
---@field index number
---@field name string

---@return tts__AssetBundle_Effect[]
function AssetBundle.getLoopingEffects() end

---@return number
function AssetBundle.getLoopingEffectIndex() end

---@return tts__AssetBundle_Effect[]
function AssetBundle.getTriggerEffects() end

---@param index number
---@return nil
function AssetBundle.playLoopingEffect(index) end

---@param index number
---@return nil
function AssetBundle.playTriggerEffect(index) end
