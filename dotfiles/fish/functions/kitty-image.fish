# Defined in - @ line 1
function kitty-image --wraps='kitty +kitten icat --align left' --description 'alias kitty-image=kitty +kitten icat --align left'
  kitty +kitten icat --align left $argv;
end
