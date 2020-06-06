---@shape tts__ObjectState_Transform
---@field posX nil|number
---@field posY nil|number
---@field posZ nil|number
---@field rotX nil|number
---@field rotY nil|number
---@field rotZ nil|number
---@field scaleX nil|number
---@field scaleY nil|number
---@field scaleZ nil|number

---@shape tts__ObjectState_CustomDeck
---@field FaceURL string
---@field BackURL string
---@field NumWidth number
---@field NumHeight number
---@field BackIsHidden boolean
---@field UniqueBack boolean

--- D4 | D6 | D8 | D10 | D12 | D20
---@alias tts_DieType 0 | 1 | 2 | 3 | 4 | 5

---@shape tts__ObjectState_CustomImage_CustomDie
---@field Type tts_DieType

---@shape tts__ObjectState_CustomImage_CustomToken
---@field Thickness nil|number
---@field MergeDistancePixels nil|number
---@field Stackable nil|boolean

---@shape tts__ObjectState_CustomImage_CustomJigsawPuzzle
---@field NumPuzzlePieces number
---@field ImageOnBoard nil|boolean

--- Box | Hex | Circle | Rounded
---@alias tts_TileType 0 | 1 | 2 | 3

---@shape tts__ObjectState_CustomImage_CustomTile
---@field Type tts_TileType
---@field Thickness nil|number
---@field Stackable nil|boolean
---@field Stretch nil|boolean

---@shape tts__ObjectState_CustomImage
---@field ImageURL string
---@field ImageSecondaryURL nil|string
---@field ImageScale nil|number
---@field WidthScale nil|number

---@alias tts__ObjectState_BoardImage tts__ObjectState_CustomImage

---@shape tts__ObjectState_DieCustomImage : tts__ObjectState_CustomImage
---@field CustomDice tts__ObjectState_CustomImage_CustomDie

---@shape tts__ObjectState_FigureCustomImage : tts__ObjectState_CustomImage
---@field CustomDice tts__ObjectState_CustomImage_CustomDie

---@shape tts__ObjectState_TokenCustomImage : tts__ObjectState_CustomImage
---@field CustomToken tts__ObjectState_CustomImage_CustomToken

---@shape tts__ObjectState_JigsawPuzzleCustomImage : tts__ObjectState_CustomImage
---@field CustomJigsawPuzzle tts__ObjectState_CustomImage_CustomJigsawPuzzle

---@shape tts__ObjectState_TileCustomImage : tts__ObjectState_CustomImage
---@field CustomTile tts__ObjectState_CustomImage_CustomTile

---@shape tts__ObjectState_RotationValue
---@field Value number|string
---@field Rotation tts__CharVectorShape

---@shape tts__ObjectState
---@field Name string
---@field Transform nil|tts__ObjectState_Transform
---@field Nickname nil|string @Default ""
---@field Description nil|string @Default ""
---@field GMNotes nil|string @Default ""
---@field GUID nil|string
---@field LuaScript nil|string @Default ""
---@field LuaScriptState nil|string @Default ""
---@field XmlUI nil|string @Default ""
---@field Grid nil|boolean @Default true
---@field Snap nil|boolean @Default true
---@field DragSelectable nil|boolean @Default true
---@field Autoraise nil|boolean @Default true
---@field Sticky nil|boolean @Default true
---@field Tooltip nil|boolean @Default true
---@field Locked nil|boolean @Default false
---@field IgnoreFoW nil|boolean @Default false
---@field GridProjection nil|boolean @Default false
---@field MeasureMovement nil|boolean
---@field HideWhenFaceDown nil|boolean
---@field Hands nil|boolean
---@field AltSound nil|boolean
---@field DeckIDs nil|number[] @Despite the name, these are card IDs not deck IDs
---@field CardID nil|number
---@field ColorDiffuse nil|tts__CharColorShape
---@field MaterialIndex nil|number
---@field MeshIndex nil|number
---@field Number nil|number
---@field SidewaysCard nil|boolean
---@field RPGmode nil|boolean
---@field RPGdead nil|boolean
---@field FogColor nil|string
---@field FogHidePointers nil|boolean
---@field FogReverseHiding nil|boolean
---@field FogSeethrough nil|boolean
---@field FogReverseHiding nil|boolean
---@field vector nil|tts__CharVectorShape

---@shape tts__ContainerState : tts__ObjectState
---@field ContainedObjects tts__ObjectState[]

---@shape tts__BoardState : tts__ObjectState
---@field Name 'Custom_Board'
---@field CustomImage tts__ObjectState_BoardImage

---@shape tts__CardState : tts__ObjectState
---@field Name 'Card'
---@field CardID number

---@shape tts__CardCustomState : tts__ObjectState
---@field Name 'CardCustom'
---@field CardID number
---@field CustomDeck table<string, tts__ObjectState_CustomDeck>

---@shape tts__DeckState : tts__ContainerState
---@field Name 'Deck'
---@field DeckIDs number[] @Despite the name, these are card IDs not deck IDs
---@field ContainedObjects tts__ObjectState[]

---@shape tts__DeckCustomState : tts__ContainerState
---@field Name 'DeckCustom'
---@field CustomDeck table<string, tts__ObjectState_CustomDeck>
---@field DeckIDs number[] @Despite the name, these are card IDs not deck IDs
---@field ContainedObjects tts__ObjectState[]

---@alias tts__StandardDieName 'Die_4' | 'Die_6' | 'Die_6_Rounded' | 'Die_8' | 'Die_10' | 'Die_12' | 'Die_20'

---@shape tts__DieState : tts__ObjectState
---@field Name 'Custom_Dice' | tts__StandardDieName
---@field RotationValues nil|tts__ObjectState_RotationValue[]

---@shape tts__DieCustomState : tts__DieState
---@field Name 'Custom_Dice'
---@field CustomImage tts__ObjectState_DieCustomImage

---@shape tts__FigurineCustomState : tts__ObjectState
---@field Name 'Figurine_Custom'
---@field CustomImage tts__ObjectState_CustomImage

---@shape tts__InfiniteBagState : tts__ContainerState
---@field Name 'Infinite_Bag'
