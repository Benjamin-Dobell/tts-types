---@class tts__Wait
Wait = {}

---
--- Schedules a function to be executed once, after a specified condition has been met.
---
--- conditionFunc will be executed (possibly several times) until if eventually returns true, at which point the
--- scheduled function (func) will be executed, and conditionFunc will no longer be executed again.
---
--- Optionally, a timeout and timeoutFunc may be specified. If conditionFunc does not return true before the specified
--- timeout (seconds) has elapsed, then the scheduled function is cancelled i.e. will not be called. If a timeoutFunc is
--- provided, then it will be called when the timeout is reached.
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply scheduled to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the scheduled function before it runs.
---@overload fun(func: (fun(): void), conditionFunc: (fun(): boolean), timeout: number): number
---@overload fun(func: (fun(): void), conditionFunc: (fun(): boolean)): number
---@param func fun(): void
---@param conditionFunc fun(): boolean
---@param timeout number @seconds
---@param timeoutFunc fun(): void
---@return number
---@see tts__Wait#stop
function Wait.condition(func, conditionFunc, timeout, timeoutFunc) end

---
--- Schedules a function to be executed after the specified amount of time (in seconds) has elapsed.
---
--- repetitions is optional and defaults to 1. When specified as X > 1, func will execute for X repetitions with the
--- specified time delay before and between each execution. When repetitions = -1, func will repeatedly be delayed,
--- executed and re-scheduled indefinitely (i.e. infinite repetitions).
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply scheduled to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the scheduled function before it runs.
---@overload fun(func: (fun(): void), seconds: number): number
---@param func fun(): void
---@param seconds number
---@param repetitions number
---@return number
---@see tts__Wait#stop
function Wait.time(func, seconds, repetitions) end

---
--- Schedules a function to be executed once, after the specified number of frames have elapsed.
---
--- numberFrames is optional and defaults to 1.
---
--- Note that this function does not pause Lua execution, it always returns immediately. The specified function is
--- simply scheduled to be run at a later time.
---
--- The return value is a unique identifier that may be used to cancel the scheduled function before it runs.
---@overload fun(func: fun(): void): number
---@param func fun(): void
---@param numberFrames number
---@return number
---@see tts__Wait#stop
function Wait.frames(func, numberFrames) end

---
--- Cancels a Wait-scheduled function.
---
--- If there's a scheduled function corresponding with the provided `waitIdentifier`, it will be cancelled and `true`
--- will be returned.
--- If there's no corresponding scheduled function (e.g. it's already executed and no longer scheduled), then `false`
--- will be return
---
---@param waitIdentifier number
---@return boolean
---@see tts__Wait#stop
function Wait.stop(waitIdentifier) end

---
--- Cancels all Wait-scheduled functions.
---
--- WARNING: You should be extremely careful using this function; ideally never. If you're using any third-party
--- scripts/libraries, cancelling all scheduled functions may break them. Instead you should use Wait.stop to cancel
--- specific scheduled functions.
---
---@see tts__Wait#stop
function Wait.stopAll() end
