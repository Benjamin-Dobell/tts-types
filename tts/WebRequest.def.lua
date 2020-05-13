---@class tts__WebRequest
---@field download_progress number
---@field error string
---@field is_error boolean
---@field is_done boolean
---@field text string
---@field upload_progress number
---@field url string

---@alias tts__WebRequest_Callback fun(request: tts__WebRequest): void

---@class tts__GlobalWebRequest
WebRequest = {}

---@param url string
---@param callback_function tts__WebRequest_Callback
function WebRequest.get(url, callback_function) end

---@param url string
---@param form table<string, string>
---@param callback_function tts__WebRequest_Callback
function WebRequest.post(url, form, callback_function) end

---@param url string
---@param data string
---@param callback_function tts__WebRequest_Callback
function WebRequest.put(url, data, callback_function) end
