do

function run(msg, matches)
local reply_id = msg['id']
local text = 'سلام بابایی:)'
if matches[1] == 'ط·آ³ط¸â€‍ط·آ§ط¸â€¦ ط¸آ¾ط·آ³ط·آ±ط¸â€¦' or 'ط·آ³ط¸â€‍ط·آ§ط¸â€¦ ط·آ¯ط¸ث†ط·آ³ط·ع¾ط·آ§ط¸â€ ' then
    if is_sudo(msg) then
reply_msg(reply_id, text, ok_cb, false)
end
end 
end
return {
patterns = {
    "^[Hh][Ii]$",
    "سلام",
    "سلام پسرم",
    "سلام دوستان"
},
run = run
}

end


