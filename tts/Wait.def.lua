---@class tts__Wait
Wait = {}

---
--- Enqueues a function to be executed once, after a specified condition has been met.
---
--- conditionFunc will be executed (possibly several times) until if eventually returns true, at which point the
--- enqueued  function (func) will be executed, and conditionFunc will no longer be executed again.
---
--- Optionally, a timeout and timeoutFunc may be specified. If conditionFunc does not return true before the specified
--- timeout (seconds) has elapsed, then the enqueued function is cancelled i.e. dequeued, and will not be called. If a
--- timeoutFunc is provided, then it will be called when the timeout is reached.
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply enqueued to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the enqueued function before it runs.
---@overload fun(func: (fun(): void), conditionFunc: (fun(): boolean), timeout: number): void
---@overload fun(func: (fun(): void), conditionFunc: (fun(): boolean)): void
---@param func fun(): void
---@param conditionFunc fun(): boolean
---@param timeout number
---@param timeoutFunc fun(): void
---@return number
---@see tts__Wait#stop
function Wait.condition(func, numberFrames) end

---
--- Enqueues a function to be executed after the specified amount of time (in seconds) has elapsed.
---
--- repetitions is optional and defaults to 1. When specified as X > 1, func will execute for X repetitions with the
--- specified time delay before and between each execution. When repetitions = -1, func will repeatedly be delayed,
--- executed and re-enqueued indefinitely (i.e. infinite repetitions).
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply enqueued to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the enqueued function before it runs.
---@overload fun(func: (fun(): void), seconds: number): void
---@param func fun(): void
---@param seconds number
---@param repetitions number
---@return number
---@see tts__Wait#stop
function Wait.time(func, seconds, repetitions) end

---
--- Enqueues a function to be executed once, after the specified number of frames have elapsed.
---
--- numberFrames is optional and defaults to 1.
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply enqueued to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the enqueued function before it runs.
---@overload fun(func: fun(): void): void
---@param func fun(): void
---@param numberFrames number
---@return number
---@see tts__Wait#stop
function Wait.frames(func, numberFrames) end

---
--- Attempts to cancel a Wait-enqueued function.
---
--- If the enqueued function corresponding with the provided waitIdentifier has yet to be executed, it will be cancelled
--- and true will be returned. If the enqueued function has already executed, this function will return false.
---
---@param waitIdentifier number
---@return boolean
---@see tts__Wait#stop
function Wait.stop(waitIdentifier) end

---
--- Cancels all pending Wait-enqueued functions.
---
--- WARNING: You should be extremely careful using this function; ideally never. If you're using any third-party
--- scripts/libraries, cancelling all enqueued functions may be break them. Instead you should use Wait.stop to cancel
--- specific enqueued functions.
---
---@see tts__Wait#stop
function Wait.stopAll() end
