---@alias tts__ObjectType "3D Text" | "Backgammon Piece" | "Bag" | "Block" | "Board" | "Calculator" | "Card" | "Checker" | "Chess" | "Chip" | "Clock" | "Coin" | "Counter" | "Deck" | "Dice" | "Domino" | "Figurine" | "Fog" | "FogOfWar" | "GoPiece" | "Hand" | "Infinite" | "InventoryBackground" | "InventoryBotBG" | "InventoryItemBlank" | "InventoryTopBG" | "Mp3" | "Notecard" | "Jigsaw" | "Jigsaw Box" | "Pointer" | "Randomize" | "rpgFigurine" | "Scripting" | "Stack" | "Superfight" | "Surface" | "Tablet" | "Tileset" | "VR UI"

---@alias tts__JointType "Fixed" | "Hinge" | "Spring"

---@shape tts__JointParameters
---@field type tts__JointType
---@field joint_object_guid nil | string
---@field collision nil | boolean
---@field break_force nil | number
---@field break_torgue nil | number
---@field axis nil | tts__VectorShape
---@field anchor nil | tts__VectorShape
---@field connected_anchor nil | tts__VectorShape

---@alias tts__FixedJointOptions tts__JointParameters

---@shape tts__SpringJointOptions : tts__JointParameters
---@field spring nil | number @Default 10
---@field damper nil | number @Default 0.2

---@shape tts__HingeJointOptions : tts__JointParameters
---@field motor_force nil | number
---@field motor_velocity nil | number
---@field motor_free_spin nil | boolean
---@field max_distance nil | number
---@field min_distance nil | number

---@class tts__Object
---@field angular_drag number
---@field AssetBundle tts__AssetBundle  @[Read only]
---@field auto_raise boolean
---@field bounciness number
---@field drag number
---@field drag_selectable boolean
---@field dynamic_friction number
---@field grid_projection boolean
---@field guid string @[Read only]
---@field held_by_color nil | tts__PlayerColor @[Read only]
---@field hide_when_face_down boolean
---@field ignore_fog_of_war boolean
---@field interactable boolean
---@field is_face_down boolean @[Read only]
---@field loading_custom boolean @[Read only]
---@field locked boolean
---@field mass number
---@field max_typed_number number
---@field memo nil | string
---@field name string @[Read only] Internal resource name for this Object. Typically only useful for spawnObjectData()/spawnObjectJSON(). Generally, you want getName() instead.
---@field pick_up_position tts__Vector @[Read only]
---@field pick_up_rotation tts__Vector @[Read only]
---@field remainder nil | tts__Object @[Read only]
---@field resting boolean
---@field script_code string
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
local Object

--- The following are not real types in TTS, but this allows us to strongly type our code where an object of a specific type is required.
--- NOTE: There is no tts__AssetBundle or tts__Model, because these objects always masquerade as another object type.


---@class tts__Container : tts__Object
local Container

---@class tts__Stackable : tts__Object
local Stackable

---@class tts__BackgammonPiece : tts__Object

---@class tts__Bag : tts__Container

---@class tts__Block : tts__Object

---@class tts__Board : tts__Object

---@class tts__Calculator : tts__Object

---@class tts__Card : tts__Object
local Card

---@class tts__CardCustom : tts__Card
local CardCustom

---@class tts__Checker : tts__Stackable

---@class tts__Chess : tts__Object

---@class tts__Chip : tts__Stackable

---@class tts__Clock : tts__Object

---@class tts__Coin : tts__Object

---@class tts__Counter : tts__Object

---@class tts__Deck : tts__Container

---@class tts__DeckCustom : tts__Deck
local DeckCustom

---@class tts__Die : tts__Object

---@class tts__DieCustom : tts__Die
local DieCustom

---@class Hand : tts__Object
local Hand

---@return tts__PlayerHandColor
function Hand.getValue() end

---@param newValue tts__PlayerHandColor
---@return boolean
function Hand.setValue(newValue)  end

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

---@class tts__Superfight : tts__Object

---@class tts__Surface : tts__Object

---@class tts__Tablet : tts__Object

---@class tts__Text : tts__Object

---@class tts__Tile : tts__Stackable
local Tile

---@class tts__Tileset : tts__Object

---@class tts__Token : tts__Stackable
local Token

---@class tts__VRUI : tts__Object


---@alias tts__Object_DealDestination tts__PlayerHandColor | "All" | "Seated"

---@param object tts__Object
---@return boolean
function Object.addAttachment(object) end

---@overload fun(label: string, callback: (fun(playerColor: tts__PlayerHandColor): void)): true
---@param label string @Text for the menu item.
---@param callback fun(playerColor: tts__PlayerHandColor): void
---@param keepOpen boolean @Whether the context menu should remain open after the item is selected. Defaults to false.
---@return true @Technically, returns false if your `callback` param is nil. However, Luanalysis won't allow you to make that mistake.
function Object.addContextMenuItem(label, callback, keepOpen) end

---@return true
function Object.clearContextMenu() end

---@shape tts__ButtonParameters
---@field click_function string @A String of the function's name that will be run when button is clicked.
---@field function_owner nil | string @The Object which contains the click_function function. Defaults to Global>
---@field label nil | string @Text that appears on the button. Defaults to ''.
---@field position nil | tts__VectorShape @Where the button appears, relative to the Object's center.
---@field rotation nil | tts__VectorShape @How the button is rotated, relative to the Object's rotation. Defaults to {x=0, y=0, z=0}.
---@field scale nil | tts__VectorShape @Scale of the button, relative to the Object's scale. Defaults to {x=1, y=1, z=1}.
---@field width nil | number @How wide the button will be, relative to the Object. Defaults to 100.
---@field height nil | number @How tall the button will be, relative to the Object. Defaults to 100.
---@field font_size nil | number @Size the label font will be, relative to the Object. Defaults to 100.
---@field color nil | tts__ColorShape @A Color for the clickable button. Defaults to {r=1, g=1, b=1}.
---@field font_color nil | tts__ColorShape @A Color for the label text.  Defaults to {r=0, g=0, b=0}.
---@field hover_color nil | tts__ColorShape @A Color for the background during mouse-over.
---@field press_color nil | tts__ColorShape @A Color for the background when clicked.
---@field tooltip nil | string @Popup of text, similar to how an Object's name is displayed on mouseover.  Defaults to ''.

---
--- Removes all buttons from the object.
---
---@return true
function Object.clearButtons() end

---@alias tts__CreateButtonParameters tts__ButtonParameters

---
--- Creates a new button on the object.
---
--- Returns false if you provide invalid parameters (e.g. blank `click_function` string), otherwise true.
---
---@param parameters tts__CreateButtonParameters
---@return boolean
function Object.createButton(parameters) end

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

---@shape tts__EditButtonParameters : tts__ButtonParameters
---@field index number

---
--- Edits an existing button, referred to by the button's 0-based index (order of creation, starting at zero).
---
--- Returns false if you provide invalid parameters (e.g. blank `click_function` string), otherwise true.
---
---@param parameters tts__EditButtonParameters
---@return boolean
function Object.editButton(parameters) end

---@return boolean
function Object.flip() end

---
--- Returns the object's angular velocity, in radians per second.
---@return tts__Vector
function Object.getAngularVelocity() end

---@return tts__IndexedSimpleObjectState[]
function Object.getAttachments() end

---@shape tts__Bounds
---@field center tts__Vector
---@field size tts__Vector
---@field offset tts__Vector

---
--- Returns an axis aligned bounding box encompassing the object. Position is in global coordinates, however the size of bounds takes into account the
--- underlying object model scale, which is not exposed directly to Lua.
---
--- As any (non-spherical) object rotates, these bounds change size to encompass the object's current orientation.
---@return tts__Bounds
---@see tts__Object#getBoundsNormalized
function Object.getBounds() end

---
--- Returns the object's bounds, in global coordinates, as if the object were rotated to {0, 0, 0}.
---
--- The size of these bounds remain unchanged under rotation. However, changes in the object's position are reflected in the bound's center position.
---@return tts__Bounds
function Object.getBoundsNormalized() end

---@shape tts__Button
---@field click_function string @Name of a global function that will be executed when the button is clicked.
---@field function_owner string @The Object where click_function is defined.
---@field label string @Text that appears on the button.
---@field position tts__Vector @Where the button appears, relative to the Object's center.
---@field rotation tts__Vector @How the button is rotated, relative to the Object's rotation.
---@field scale tts__Vector @Scale of the button, relative to the Object's scale.
---@field width number @How wide the button is relative to the Object.
---@field height number @How tall the button is relative to the Object.
---@field font_size number @Size of the label font, relative to the Object.
---@field color tts__Color @The Color of the button background.
---@field font_color tts__Color @The Color of the label text.
---@field hover_color tts__Color @The Color of the background during mouse-over.
---@field press_color tts__Color @The Color of the background when clicked.
---@field tooltip string @Pop-up description displayed on hover.
---@field index number

---@return tts__Button[]
function Object.getButtons() end

---@shape tts__Object_ImageCustomObject
---@field image string
---@field image_bottom string @Same value as image_secondary
---@field image_secondary string
---@field image_scalar number

--- Plastic | Wood | Metal | Cardboard | Glass
---@alias tts__MaterialType 0 | 1 | 2 | 3 | 4

--- Generic | Coin | Bag | Figurine | Board | Infinite | Dice
---@alias tts__AssetBundleType 0 | 1 | 2 | 3 | 4 | 5 | 6

---@shape tts__Object_AssetBundleCustomObject
---@field assetbundle string
---@field assetbundle_secondary string
---@field type tts__AssetBundleType
---@field material tts__MaterialType

---@shape tts__Object_CardCustomObject
---@field face string
---@field unique_back boolean
---@field back string
---@field width number
---@field height number
---@field sideways boolean
---@field back_is_hidden boolean
---@field type tts__CardType

---@shape tts__Object_DeckCustomObject_CustomDeck
---@field face string
---@field unique_back boolean
---@field back string
---@field width number
---@field height number
---@field number number
---@field sideways boolean
---@field back_is_hidden boolean
---@field type tts__CardType

---@alias tts__Object_DeckCustomObject table<string, tts__Object_DeckCustomObject_CustomDeck>

---@shape tts__Object_DieCustomObject : tts__Object_ImageCustomObject
---@field type tts__DieType

--- Generic | Figurine | Dice | Coin | Board | Chip | Bag | Infinite
---@alias tts__ModelType 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7

---@shape tts__Object_ModelCustomObject
---@field mesh string
---@field diffuse string
---@field normal string
---@field collider string
---@field convex boolean
---@field type_index tts__ModelType
---@field material tts__MaterialType
---@field cast_shadows boolean
---@field specular_intensity number
---@field specular_color number
---@field specular_sharpness tts__Color
---@field fresnel_strength number

---@shape tts__Object_TileCustomObject : tts__Object_ImageCustomObject
---@field type tts__TileType
---@field thickness number
---@field stackable boolean

---@shape tts__Object_TokenCustomObject : tts__Object_ImageCustomObject
---@field thickness number
---@field merge_distance number
---@field stand_up boolean
---@field stackable boolean

---@alias tts__Object_CustomObject tts__Object_AssetBundleCustomObject | tts__Object_CardCustomObject | tts__Object_DeckCustomObject | tts__Object_DieCustomObject | tts__Object_ModelCustomObject | tts__Object_TileCustomObject | tts__Object_TokenCustomObject

---@return {} | tts__Object_CustomObject
function Object.getCustomObject() end

---@return tts__Object_CardCustomObject
function CardCustom.getCustomObject() end

---@return tts__Object_DeckCustomObject
function DeckCustom.getCustomObject() end

---@return tts__Object_DieCustomObject
function DieCustom.getCustomObject() end

---@return tts__Object_TileCustomObject
function Tile.getCustomObject() end

---@return tts__Object_TokenCustomObject
function Token.getCustomObject() end

--- Returns object's data (serialized saved state).
---@return tts__ObjectState
function Object.getData() end

--- Returns object's data (serialized saved state).
---@return tts__ContainerState
function Container.getData() end

---@shape tts__Object_Decal
---@field name string
---@field url string
---@field position tts__Vector
---@field rotation tts__Vector
---@field scale tts__Vector

---
--- Returns an array of decals, or nil if there are no decals on the object.
---
---@return nil | tts__Object_Decal[]
function Object.getDecals() end

---@return string
function Object.getDescription() end

---@return string
function Object.getGMNotes() end

---
--- Object's unique identifier.
---@return string
function Object.getGUID() end

---@return nil | tts__Color
function Object.getHighlightColor() end

---
--- Returns object's data (saved state) serialized into a JSON encoded string.
---@return string
function Object.getJSON() end

--- Returns whether or not the object is locked/frozen in place.
---@return boolean
function Object.getLock() end

---
--- Returns object's name, as depicted in the object's tooltip.
---@return string
function Object.getName() end

---@shape tts__SimpleObjectState
---@field name string
---@field nickname nil | string
---@field description nil | string
---@field gm_notes nil | string
---@field guid string
---@field lua_script nil | string
---@field lua_script_state nil | string
---@field memo nil | string

---@shape tts__IndexedSimpleObjectState : tts__SimpleObjectState
---@field index number

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return nil | tts__Object[] | tts__IndexedSimpleObjectState[]
function Object.getObjects() end

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return tts__IndexedSimpleObjectState[]
function Container.getObjects() end

--- If this object is a scripting trigger, bag or deck, returns the objects contained within. Otherwise, logs an error and returns nil
---@return tts__Object[]
function ScriptingTrigger.getObjects() end

--- Combines 2 combinable objects to form a new container (Deck, Stat, etc)
---
---@param object tts__Object
---@return self
function Object.putObject(object) end

--- Places an object into a container.
---
---@param object tts__Object
---@return self
function Container.putObject(object) end

--- Places an chip onto another chip, forming a stack.
---
---@param object tts__Stackable
---@return self
function Stackable.putObject(object) end

--- Places an card onto another card, forming a deck.
---
---@param object tts__Card|tts__Deck
---@return tts__Deck
function Card.putObject(object) end

---@param object tts__Card
---@return tts__Deck
function Card.putObject(object) end

---@param index number
---@return tts__Object
function Object.removeAttachment(index) end

---
--- Returns the object's position.
---@return tts__Vector
function Object.getPosition() end

---
--- Returns the object's rotation represented as a Vector of Euler angles.
---@return tts__Vector
function Object.getRotation() end

---
--- Returns the object's rotation value identifier. Often a number, but may also be a string.
---
--- At the time of writing, the only non-custom die that has string rotation values is Die_Piecepack, which has values
--- "Blank" and "Symbol" in place of the numbers 1 and 6 respectively (on a D6).
---
---@return number | string
function Object.getRotationValue() end

---@shape tts__Object_RotationValue
---@field value number | string
---@field rotation tts__CharVectorShape

---
--- Returns the object's rotation values.
---
---@return tts__Object_RotationValue[]
function Object.getRotationValues() end

---
--- Returns the object's rotation values. Typically a number, but may also be a string for certain special dice.
---
--- At the time of writing, the only non-custom die that has string rotation values is Die_Piecepack, which has values
--- "Blank" and "Symbol" in place of the numbers 1 and 6 respectively (on a D6).
---
---@return number | string
function Object.getRotationValue() end

---
--- Returns the object's scale.
---@return tts__Vector
function Object.getScale() end

---@shape tts__Object_SnapPoint
---@field position tts__Vector @Position of the snap point. The position is relative to the object's center (a local position).
---@field rotation tts__Vector @Rotation of the snap point. The rotation is relative to the object's rotation (a local rotation).
---@field rotation_snap boolean @If the snap point is a "rotation" snap point.

--- Returns an array of snap points.
---@return tts__Object_SnapPoint[]
function Object.getSnapPoints() end

---
--- If the object is a bag, deck or stack, returns the number of objects within, otherwise -1.
---@return number
function Object.getQuantity() end

---@return any
function Object.getValue() end

---@param name string
---@return any
function Object.getVar(name) end

---@shape tts__Object_VectorLine
---@field points tts__Vector[] @An array of 2 or more points representing a series of line segments from one point to the next.
---@field color tts__Color @The color of the line.
---@field rotation tts__Vector @Rotation of vector line. The rotation is relative to the object's rotation (a local rotation).
---@field thickness number @The thickness of the line.

--- Returns an array of vector lines.
---@return tts__Object_VectorLine[]
function Object.getVectorLines() end

---
--- Returns the object's velocity.
---@return tts__Vector
function Object.getVelocity() end

---@return true
function Object.highlightOff() end

---@overload fun(color: tts__ColorShape): true
---@param color tts__ColorShape
---@param duration number
---@return true
function Object.highlightOn(color, duration) end

---Returns if the object is presently smooth moving, false, otherwise.
---@return boolean
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

--- Randomizes the object i.e. rolls a die, shuffles a deck, reorders a bag, or in the case of objects consisting of multiple states, randomly selects a state.
---@overload fun(): void
---@param playerColor tts__PlayerColor
---@return boolean
function Object.randomize(playerColor) end

---@param index number @button index for this object, starting at 0
---@return boolean
function Object.removeButton(index) end

---
--- Scales the object by the specified multiplier(s), relative to the object's existing scale.
---
---@overload fun(scale: tts__VectorShape): true
---@param scale number
---@return true
function Object.scale(scale) end

---@shape tts__Object_DecalParameters
---@field name string
---@field url string
---@field position nil | tts__VectorShape @Default Vector(0, 0, 0)
---@field rotation nil | tts__VectorShape @Default Vector(0, 0, 0)
---@field scale nil | tts__VectorShape @Default Vector(1, 1, 1)

---@param color tts__ColorShape
---@return boolean
function Object.setColorTint(color) end
---
--- Removes all existing decals, replacing them with a decal per entry in the provided decal parameters array.
---
--- Returns false if the provided decal parameters are invalid (e.g. blank string name or URL), otherwise true.
---
---@param decals tts__Object_DecalParameters[]
---@return boolean
function Object.setDecals(decals) end

---@param description string
---@return true
function Object.setDescription(description) end

---@param colors tts__PlayerColor[]
---@return boolean
function Object.setInvisibleTo(colors) end

---
--- Sets whether the object is locked/frozen in place.
---
---@param lock boolean
---@return true
function Object.setLock(lock) end

---@param name string
---@return true
function Object.setName(name) end

---
--- Sets the object's position.
---
---@param position tts__VectorShape
---@return true
function Object.setPosition(position) end

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

---@param scale tts__VectorShape
---@return true
function Object.setScale(scale) end

---@shape tts__Object_SnapPointParameters
---@field position nil | tts__VectorShape @Position of the snap point. The position is relative to the object's center (a local position). Default {0, 0, 0}
---@field rotation nil | tts__VectorShape @Rotation of the snap point. The rotation is relative to the object's rotation (a local rotation). Default {0, 0, 0}
---@field rotation_snap nil | boolean @If the snap point is a "rotation" snap point. Default false

--- Removes all existing snap points, replacing them with a snap point per entry in the provided snap point parameters array.
---@param snapPoints tts__Object_SnapPointParameters[]
---@return true
---@see tts__Object#getSnapPoints
function Object.setSnapPoints(snapPoints) end

---
--- Sets the object's rotation to the specified orientation, provided as a vector of Euler angles.
---
---@param rotation tts__VectorShape
---@return true
function Object.setRotation(rotation) end

---
--- Smoothly rotates the object to the specified orientation, provided as a vector of Euler angles.
---
---@overload fun(rotation: tts__VectorShape, collide: boolean): true
---@overload fun(rotation: tts__VectorShape): true
---@param rotation tts__VectorShape
---@param collide boolean @Whether collision detection is enabled. Default false.
---@param fast boolean @Whether object should rotate quickly. Default false.
---@return true
function Object.setRotationSmooth(rotation, collide, fast) end

---
--- Smoothly sets the object's rotation to the rotation corresponding with the provided rotation value identifier.
---
--- Must be a string/number corresponding with an existing rotation value identifier.
---
---@param value number | string
---@return true
---@see tts__Object#getRotationValues
function Object.setRotationValue(value) end

---@param newValue string
---@return any
function Object.setValue(newValue) end

---@param name string
---@param value any
---@return true
function Object.setVar(name, value) end

---@shape tts__Object_VectorLineParameters
---@field points tts__VectorShape[] @An array of 2 or more points representing a series of line segments from one point to the next.
---@field color nil | tts__ColorShape @The color of the line. Default {1, 1, 1}
---@field rotation nil | tts__VectorShape @Rotation of vector line. The rotation is relative to the object's rotation (a local rotation). Default {0, 0, 0}
---@field thickness nil | number @The thickness of the line. Default 0.1

--- Removes all existing vector lines, replacing them with a new vector line per entry in the provided vector line parameters array.
---@param lines tts__Object_VectorLineParameters[]
---@return true
---@see tts__Object#getVectorLines
function Object.setVectorLines(lines) end


---@return boolean
function Object.shuffle() end

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
---@field top nil | boolean
---@field smooth nil | boolean
---@field position nil | tts__VectorShape
---@field rotation nil | tts__VectorShape
---@field flip nil | boolean

---@shape tts__Object_GuidTakeObjectParameters : tts__Object_TakeObjectParameters
---@field guid nil | string

---@shape tts__Object_IndexTakeObjectParameters : tts__Object_TakeObjectParameters
---@field index nil | number


---
--- Registers this object for Global collision events, such as onObjectCollisionEnter. Always returns true.
---
---@overload fun(): true
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
---@return nil | tts__Object
function Object.takeObject(params) end

---
--- Deregisters this object for Global collision events. Returns true if the object was previously registered, false otherwise.
---
---@return boolean
function Object.unregisterCollisions() end

---@shape tts__Callback<T>
---@field callback_function nil | T
---@field callback nil | string @Deprecated - use callback_function
---@field callback_owner nil | tts__Object @Deprecated - use callback_function
---@field params nil | table @Deprecated - use callback_function

---@alias tts__ObjectCallbackFunction fun(object: tts__Object): void

---@shape tts__ObjectCallback : tts__Callback<tts__ObjectCallbackFunction>

---@shape tts__SpawnObjectParams : tts__ObjectCallback
---@field type string
---@field position nil | tts__VectorShape @Default Vector(0, 0, 0)
---@field rotation nil | tts__VectorShape @Default Vector(0, 0, 0)
---@field scale nil | tts__VectorShape @Default Vector(1, 1, 1)
---@field sound nil | boolean @Default true
---@field snap_to_grid nil | boolean

---@shape tts__SpawnObjectSerializedParams : tts__ObjectCallback
---@field position nil | tts__VectorShape
---@field rotation nil | tts__VectorShape
---@field scale nil | tts__VectorShape

---@shape tts__SpawnObjectDataParams : tts__SpawnObjectSerializedParams
---@field data tts__ObjectState

---@shape tts__SpawnObjectJSONParams : tts__SpawnObjectSerializedParams
---@field json string

---@param params tts__SpawnObjectParams
---@return tts__Object
function spawnObject(params)
end

---@param params tts__SpawnObjectDataParams
---@return tts__Object
function spawnObjectData(params)
end

---@param params tts__SpawnObjectJSONParams
---@return tts__Object
function spawnObjectJSON(params)
end

---@param guid string
---@return nil | tts__Object
function getObjectFromGUID(guid)
end

---@return tts__Object[]
function getAllObjects()
end

---@class tts__Global : tts__Object
Global = {}

---@class tts__Self : tts__Object
self = {}
