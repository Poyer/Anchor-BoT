do

function run(msg, matches)
  return 'Telegram Bot '.. VERSION .. [[ 
 (Anchor-Bot) v.1 \n @AnchorGroup]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end
