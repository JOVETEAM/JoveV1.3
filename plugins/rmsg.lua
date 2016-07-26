local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" چرت و پرتای اخیر سوپر گروه حذف شد', ok_cb, false)
  else
    send_msg(extra.chatid, 'تعداد چرتو پرتای مورد نظر پاک شد', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'clean' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "باکیا شدیم هفتادوپنج میلیون!خره بالاتر از 1بزن"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "احمق عمت تو گپ معمولی میتونی پی ام بپاکه؟توسوپرگپ بزن خره"
    end
  else
    return "میزنم جرت میدما!دسترسی نداری ایقد نزن"
  end
end

return {
    patterns = {
        '^[!/#](clean) msg (%d*)$'
    },
    run = run
}
