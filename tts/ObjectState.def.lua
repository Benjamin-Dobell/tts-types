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
---@alias tts_DiceType 0 | 1 | 2 | 3 | 4 | 5

---@shape tts__ObjectState_CustomImage_CustomDie
---@field Type tts_DiceType

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
---@field URL string
---@field ImageSecondaryURL nil|string
---@field ImageScale nil|number
---@field WidthScale nil|number
---@field BackIsHidden nil|boolean
---@field UniqueBack nil|boolean

---@shape tts__ObjectState_DieCustomImage : tts__ObjectState_CustomImage
---@field CustomDice tts__ObjectState_CustomImage_CustomDie

---@shape tts__ObjectState_TokenCustomImage : tts__ObjectState_CustomImage
---@field CustomToken tts__ObjectState_CustomImage_CustomToken

---@shape tts__ObjectState_JigsawPuzzleCustomImage : tts__ObjectState_CustomImage
---@field CustomJigsawPuzzle tts__ObjectState_CustomImage_CustomJigsawPuzzle

---@shape tts__ObjectState_TileCustomImage : tts__ObjectState_CustomImage
---@field CustomTile tts__ObjectState_CustomImage_CustomTile

---@shape tts__ObjectState
---@field Name string
---@field Transform nil|tts__ObjectState_Transform
---@field Nickname nil|string
---@field Description nil|string
---@field GMNotes nil|string
---@field GUID nil|string
---@field LuaScript nil|string
---@field LuaScriptState nil|string

---@shape tts__ContainerState : tts__ObjectState
---@field ContainedObjects tts__ObjectState[]

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

---@shape tts__DieCustomState : tts__ObjectState
---@field Name 'Custom_Dice'
---@field CustomImage tts__ObjectState_DieCustomImage
