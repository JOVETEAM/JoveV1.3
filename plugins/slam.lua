do

function run(msg, matches)
local reply_id = msg['id']
local text = 'ڛـلام بابايےツ'
if matches[1] == 'سلام پسرم' or 'سلام' or 'slm' or 'Hello dadi' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^سلام پسرم$",
    "^سلام$",
    "^slm$",
    "^Hello dadi$"
},
run = run
}

end
