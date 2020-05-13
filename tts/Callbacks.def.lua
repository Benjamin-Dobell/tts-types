---@type nil | fun(container: tts__Object, object: tts__Object): void
onObjectEnterContainer = nil

---@shape tts__CollisionInfo
---@field collision_object tts__Object
---@field contact_points tts__NumVectorShape[]
---@field relative_velocity tts__NumVectorShape

---@type nil | fun(registeredObject: tts__Object, collisionInfo: tts__CollisionInfo): void
onObjectCollisionEnter = nil

---@type nil | fun(registeredObject: tts__Object, collisionInfo: tts__CollisionInfo): void
onObjectCollisionExit = nil

---@type nil | fun(registeredObject: tts__Object, collisionInfo: tts__CollisionInfo): void
onObjectCollisionStay = nil
