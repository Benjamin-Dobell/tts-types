---@class tts__GlobalWebRequest
local GlobalWebRequest = {}

WebRequest = GlobalWebRequest

---@class tts__WebRequest
---@field download_progress number
---@field error string
---@field is_error boolean
---@field is_done boolean
---@field response_code number
---@field text string
---@field upload_progress number
---@field url string
local WebRequest = {}

---@param name string
---@return nil | string
function WebRequest.getResponseHeader(name) end

---@return table<string, string>
function WebRequest.getResponseHeaders() end

---@alias tts__WebRequest_Callback fun(request: tts__WebRequest): void

---@param url string
---@param method string
---@param download boolean
---@param data nil | string
---@param headers nil | table<string, string>
---@param callback_function tts__WebRequest_Callback
---@return tts__WebRequest
function GlobalWebRequest.custom(url, method, download, data, headers, callback_function) end

---@param url string
---@param callback_function tts__WebRequest_Callback
---@return tts__WebRequest
function GlobalWebRequest.get(url, callback_function) end

---@param url string
---@param form table<string, string>
---@param callback_function tts__WebRequest_Callback
---@return tts__WebRequest
function GlobalWebRequest.post(url, form, callback_function) end

---@param url string
---@param data string
---@param callback_function tts__WebRequest_Callback
---@return tts__WebRequest
function GlobalWebRequest.put(url, data, callback_function) end
