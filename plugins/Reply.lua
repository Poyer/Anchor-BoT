do

local function run(msg, matches)
  local reply_id = msg['id']
  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
reply_msg(reply_id, text, ok_cb, false)
end

return {
  description = "Simplest plugin ever!",
  usage = "!reply [whatever]: echoes the msg",
  patterns = {
    "^[!/#]reply +(.+)$"
  }, 
  run = run 
}
