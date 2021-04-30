# Defined in /home/garyparrot/.config/fish/functions/game.fish @ line 2
function game
adb shell env weapon=$weapon buy_awk=$buy sh /storage/self/primary/click.sh $argv
end
