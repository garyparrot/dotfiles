local awful = require("awful")

utility = {}

function utility.rofiBooks()
    awful.spawn("rofi-books")
end
function utility.rofiTODOlist()
    awful.spawn("rofi -modi TODO:todo.sh -key-todo SuperL+t -show TODO")
end
function utility.rofiRun()
    awful.spawn("rofi -show run" )
end
function utility.rofiDrun()
    awful.spawn("rofi -show drun -show-icons" )
end
function utility.rofiTranslate()
    awful.spawn("rofi_trans")
end

return utility
