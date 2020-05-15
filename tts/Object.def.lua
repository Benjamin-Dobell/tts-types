---@alias tts__ObjectType "3D Text" | "Backgammon Piece" | "Bag" | "Block" | "Board" | "Calculator" | "Card" | "Checker" | "Chess" | "Chip" | "Clock" | "Coin" | "Counter" | "Deck" | "Dice" | "Domino" | "Figurine" | "Fog" | "FogOfWar" | "GoPiece" | "Hand" | "Infinite" | "InventoryBackground" | "InventoryBotBG" | "InventoryItemBlank" | "InventoryTopBG" | "Mp3" | "Notecard" | "Jigsaw" | "Jigsaw Box" | "Pointer" | "Randomize" | "rpgFigurine" | "Scripting" | "Stack" | "Superfight" | "Surface" | "Tablet" | "Tileset" | "VR UI"

---@alias tts__JointType "Fixed" | "Hinge" | "Spring"

---@shape tts__JointParameters
---@field type tts__JointType
---@field joint_object_guid nil|string
---@field collision nil|boolean
---@field break_force nil|number
---@field break_torgue nil|number
---@field axis nil|tts__VectorShape
---@field anchor nil|tts__VectorShape
---@field connected_anchor nil|tts__VectorShape

---@alias tts__FixedJointOptions tts__JointParameters

---@shape tts__SpringJointOptions : tts__JointParameters
---@field spring nil|number @Default 10
---@field damper nil|number @Default 0.2

---@shape tts__HingeJointOptions : tts__JointParameters
---@field motor_force nil|number
---@field motor_velocity nil|number
---@field motor_free_spin nil|boolean
---@field max_distance nil|number
---@field min_distance nil|number

---@class tts__Object
---@field angular_drag number
---@field auto_raise boolean
---@field bounciness number
---@field drag number
---@field drag_selectable boolean
---@field dynamic_friction number
---@field grid_projection boolean
---@field guid string @[Read only]
---@field held_by_color nil|tts__PlayerColor @[Read only]
---@field hide_when_face_down boolean
---@field ignore_fog_of_war boolean
---@field interactable boolean
---@field is_face_down boolean @[Read only]
---@field loading_custom boolean @[Read only]
---@field locked boolean
---@field mass number
---@field max_typed_number number
---@field remainder nil|tts__Object @[Read only]
---@field resting boolean
---@field script_state string
---@field spawning boolean
---@field static_friction number
---@field sticky boolean
---@field tag tts__ObjectType @An identifier indicating the type of Tabletop Simulator object. [Read only]
---@field tooltip boolean
---@field UI tts__UI @[Read only]
---@field use_gravity boolean
---@field use_grid boolean
---@field use_hands boolean @Whether or not this object may be held within a hand zone.
---@field use_rotation_value_flip boolean
---@field use_snap_points boolean
---@field value number
---@field value_flags number
local Object = {}

--- The following are not real types in TTS, but this allows us to strongly type our code where an object of a specific type is required.

---@class tts__Container : tts__Object
local Container

---@class tts__BackgammonPiece : tts__Object

---@class tts__Bag : tts__Container

---@class tts__Block : tts__Object

---@class tts__Board : tts__Object

---@class tts__Calculator : tts__Object

---@class tts__Card : tts__Object

---@class tts__Checker : tts__Object

---@class tts__Chess : tts__Object

---@class tts__Chip : tts__Object

---@class tts__Clock : tts__Object

---@class tts__Coin : tts__Object

---@class tts__Counter : tts__Object

---@class tts__Deck : tts__Container

---@class tts__Die : tts__Object

---@class tts__Domino : tts__Object

---@class tts__Figurine : tts__Object

---@class tts__Fog : tts__Object

---@class tts__FogOfWar : tts__Object

---@class tts__GoPiece : tts__Object

---@class tts__Hand : tts__Object

---@class tts__Infinite : tts__Object

---@class tts__InventoryBackground : tts__Object

---@class tts__InventoryBotBG : tts__Object

---@class tts__InventoryItemBlank : tts__Object

---@class tts__InventoryTopBG : tts__Object

---@class tts__MP3 : tts__Object

---@class tts__Notecard : tts__Object

---@class tts__Jigsaw : tts__Object

---@class tts__JigsawBox : tts__Object

---@class tts__Pointer : tts__Object

---@class tts__Randomize : tts__Object

---@class tts__RPGFigurine : tts__Object

---@class tts__ScriptingTrigger : tts__Object
local ScriptingTrigger

---@class tts__Stack : tts__Object

---@class tts__Superfight : tts__Object

---@class tts__Surface : tts__Object

---@class tts__Tablet : tts__Object

---@class tts__Text : tts__Object

---@class tts__Tileset : tts__Object

---@class tts__VRUI : tts__Object


---@alias tts__Object_DealDestination tts__PlayerHandColor | "All" | "Seated"

---
--- If the object is a bag, deck or stack, deals an object from within to the specified player hand.
---
---@overload fun(count: number)
---@overload fun(count: number, destination: tts__Object_DealDestination)
---@param count number
---@param destination tts__Object_DealDestination @Default "Seated"
---@param handIndex number @Default 1
---@return true
function Object.deal(count, destination, handIndex) end

---
--- Destroys the underlying Tabletop Simulator object.
---
---@return boolean
function Object.destruct() end

---
--- Returns the object's angular velocity, in radians per second.
---@return tts__Vector
function Object.getAngularVelocity() end

---
--- Object's unique identifier.
---@return string
function Object.getGUID() end

---@shape tts__SimpleObjectState
---@field name string
---@field nickname nil|string
---@field description nil|string
---@field gm_notes nil|string
---@field guid string
---@field lua_script nil|string
---@field lua_script_state nil|string

---@shape tts__IndexedSimpleObjectState : tts__SimpleObjectState
---@field index number

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return nil|tts__Object[]|tts__IndexedSimpleObjectState[]
function Object.getObjects() end

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return tts__IndexedSimpleObjectState[]
function Container.getObjects() end

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return tts__Object[]
function ScriptingTrigger.getObjects() end

--- Returns the objects contained within.
---@return table[]
function Container.getObjects() end

--- Returns the objects contained within.
---@return table[]
function ScriptingTrigger.getObjects() end

---
--- Returns the object's position.
---@return tts__Vector
function Object.getPosition() end

---
--- Returns the object's rotation represented as a Vector of Euler angles.
---@return tts__Vector
function Object.getRotation() end

---
--- Returns the object's rotation value. Typically a number, but may also be a string for certain special dice.
---
--- At the time of writing, only Die_Piecepack has non-number rotation values; which are "Blank" and "Symbol" in place
--- of the numbers 1 and 6 respectively (on a D6).
---
---@return number|string
function Object.getRotationValue() end

---
--- Returns the object's scale.
---@return tts__Vector
function Object.getScale() end

---
--- If the object is a bag, deck or stack, returns the number of objects within, otherwise -1.
---@return number
function Object.getQuantity() end

---
--- Returns the object's velocity.
---@return tts__Vector
function Object.getVelocity() end

---Returns if the object is presently smooth moving, false, otherwise.
function Object.isSmoothMoving() end

---
--- When called with arguments, creates a joint between this object and another object.
---
--- When called without any arguments, removes all joints on this object.
---
---@overload fun(): void
---@overload fun(parameters: tts__JointParameters): boolean
---@param object tts__Object
---@param parameters tts__JointParameters
---@return boolean
function Object.jointTo(object, parameters) end

---
--- Scales the object by the specified multiplier(s), relative to the object's existing scale.
---
---@overload fun(scale: tts__VectorShape): true
---@param scale number
---@return true
function Object.scale(scale) end

---
--- Sets whether the object is locked/frozen in place.
---
---@param lock boolean
---@return true
function Object.setLock(lock) end

---
--- Smoothly moves the object to the specified position.
---
---@overload fun(position: tts__VectorShape, collide: boolean): true
---@overload fun(position: tts__VectorShape): true
---@param position tts__VectorShape
---@param collide boolean @Whether collision detection is enabled. Default false.
---@param fast boolean @Whether object should move quickly. Default false.
---@return true
function Object.setPositionSmooth(position, collide, fast) end

---
--- Smoothly rotates the object to the specified orientation, provided as a vector of Euler angles.
---
---@overload fun(position: tts__VectorShape, collide: boolean): true
---@overload fun(position: tts__VectorShape): true
---@param position tts__VectorShape
---@param collide boolean @Whether collision detection is enabled. Default false.
---@param fast boolean @Whether object should rotate quickly. Default false.
---@return true
function Object.setRotationSmooth(position, collide, fast) end

---
--- Returns a world coordinate position corresponding with local coordinate position.
---
---@param position tts__VectorShape
---@return tts__Vector
function Object.positionToLocal(position) end

---
--- Returns a local coordinate position corresponding with world coordinate position.
---
---@param position tts__VectorShape
---@return tts__Vector
function Object.positionToWorld(position) end

---@shape tts__Object_TakeObjectParameters : tts__ObjectCallback
---@field top nil|boolean
---@field smooth nil|boolean
---@field position nil|tts__VectorShape
---@field rotation nil|tts__VectorShape
---@field flip nil|boolean

---@shape tts__Object_GuidTakeObjectParameters : tts__Object_TakeObjectParameters
---@field guid nil|string

---@shape tts__Object_IndexTakeObjectParameters : tts__Object_TakeObjectParameters
---@field index nil|number


---
--- Registers this object for Global collision events, such as onObjectCollisionEnter. Always returns true.
---
---@param stay boolean @Default false. Whether we should register for onObjectCollisionStay. Stay events may negatively impact performance, only set this to true if absolutely necessary.
---@return true
function Object.registerCollisions(stay) end

---
--- If this object is a deck or bag, takes on object out.
---
--- Although an object reference is returned, it will not have spawned within the scene and thus is generally not safe
--- to use until callback_function been called.
---
---@param params tts__Object_GuidTakeObjectParameters | tts__Object_IndexTakeObjectParameters
---@return nil|tts__Object
function Object.takeObject(params) end

---@shape tts__Callback<T>
---@field callback_function nil|T
---@field callback nil|string @Deprecated - use callback_function
---@field callback_owner nil|tts__Object @Deprecated - use callback_function
---@field params nil|table @Deprecated - use callback_function

---@alias tts__ObjectCallbackFunction fun(object: tts__Object): void

---@shape tts__ObjectCallback : tts__Callback<tts__ObjectCallbackFunction>

---@shape tts__SpawnObjectParams : tts__ObjectCallback
---@field type string
---@field position nil|tts__VectorShape @Default Vector(0, 0, 0)
---@field rotation nil|tts__VectorShape @Default Vector(0, 0, 0)
---@field scale nil|tts__VectorShape @Default Vector(1, 1, 1)
---@field sound nil|boolean @Default true
---@field snap_to_grid nil|boolean

---@shape tts__SpawnObjectJSONParams : tts__ObjectCallback
---@field json string
---@field position nil|tts__VectorShape
---@field rotation nil|tts__VectorShape
---@field scale nil|tts__VectorShape

---@param params tts__SpawnObjectParams
---@return tts__Object
function spawnObject(params)
end

---@param params tts__SpawnObjectJSONParams
---@return tts__Object
function spawnObjectJSON(params)
end

---@param guid string
---@return nil|tts__Object
function getObjectFromGUID(guid)
end

---@return tts__Object[]
function getAllObjects()
end
