set -gx PATH ~/bin $PATH
set -g theme_nerd_fonts yes
set -g theme_color_scheme uesr
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# trigger neofetch in has not trigger in this session

# if isatty; and not set -q "neofetched"
#     if test $TERM = "xterm-kitty"
#         neofetch
#     else
#         neofetch --ascii_colors "1" --ascii "auto"        
#     end
#     set -x "neofetched"
# end

