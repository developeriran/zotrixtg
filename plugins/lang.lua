do
local function run(msg, matches, callback, extra)
local hash = 'group:'..msg.to.id
local group_lang = redis:hget(hash,'lang')
if matches[1] == 'setlang' and  matches[2] == 'en' and is_owner(msg) then 
    
   redis:hdel(hash,'lang')
        return 'done\ngroup lang set to : en'
end



if matches[1] == 'setlang' and matches[2] == 'fa' and is_owner(msg) then
redis:hset(hash,'lang',matches[2])
        return 'تبریک زیان گروه شما فارسی شد'
end
if matches[1] == 'lang' then
if group_lang then 
return "زیان گروه شما فارسی است"
else
return "Group lang : en"
end
end
end
return {
  patterns = {
    "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Ff][Aa])$",
  "^[!#/]([Ss][Ee][Tt][Ll][Aa][Nn][Gg]) ([Ee][Nn])$",
  "^[!#/]([Ll][Aa][Nn][Gg])"
  },
  run = run
}
end
--setlang.end
--by @PartTeam
--Thanks for @M_O_T_A_F_E_G_H_I_N