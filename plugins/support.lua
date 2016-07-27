do

function run(msg, matches)
  return " لینک ساپورت : \n https://telegram.me/joinchat/DQ3RTj8dfYTlfXzNJ4Q16g\n-------------------------------------\nManager:@vVv_ERPO_vVv"
  end
return {
  description = "shows support link", 
  usage = "tosupport : Return supports link",
  patterns = {
    "^support$",
    "^/tosupport$",
    "^#tosupport$",
    "^>tosupport$",
  },
  run = run
}
end
