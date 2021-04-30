# Defined in - @ line 1
function inkscape-svg-to-png --wraps='inkscape --pipe --export-area-drawing --export-type=png 2>/dev/null' --description 'alias inkscape-svg-to-png=inkscape --pipe --export-area-drawing --export-type=png 2>/dev/null'
  inkscape --pipe --export-area-drawing --export-type=png 2>/dev/null $argv;
end
