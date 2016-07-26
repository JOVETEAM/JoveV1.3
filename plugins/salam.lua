do

function run(msg, matches)
local reply_id = msg['id']
local text = 'سـلام بـابـاツ'
if matches[1] == 'سلام پسرم' or 'سلام' or 'salam' or 'slm' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^سلام پسرم$",
    "^سلام$",
    "^salam$",
    "^slm$"
},
run = run
}

end
