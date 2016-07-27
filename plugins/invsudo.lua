--Created by @MehdiHS
--Telegram.me/MehdiHS
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'adddeveloper' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..218722292
        chat_add_user(chat, user1, callback, false)
	return "در حال دعوت توسعه دهنده..."
      end
if matches[1] == 'addmanager' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..126388065
        chat_add_user(chat, user2, callback, false)
	return "Adding Bot manager..."
      end
 
 end

return {
  description = "Invite Sudo and Admin:|", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^(adddeveloper)",
    "^(addmanager)",
    "^([Aa]ddsudo)",
    "^([Aa]ddsupport)",
  }, 
  run = run,
}


end
