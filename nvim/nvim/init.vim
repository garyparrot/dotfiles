:set number relativenumber
:set cursorcolumn cursorline
:set tabstop=4 shiftwidth=4 expandtab mouse=n laststatus=2
:set foldmethod=marker
:set modeline

:let g:nvim='~/.config/nvim/'


" There is some short link to other configuration.
" Use shortcut <Ctrl-gf> to open it in new tab
" ~/.config/nvim/init.d/mapping.vim
" ~/.config/nvim/init.d/ultisnips.vim

" Plugin {{{

call plug#begin('~/.nvim/plugged')

" Userful widget
Plug 'norcalli/nvim-colorizer.lua'
Plug 'mhinz/vim-startify'

" Useful tool
Plug 'liuchengxu/vista.vim'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fancy
Plug 'ryanoasis/vim-devicons'
Plug 'psliwka/vim-smoothie'
Plug 'vim-airline/vim-airline-themes'
Plug 'file:///home/garyparrot/Programming/vim-airline-RedDope'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'pearofducks/ansible-vim'

" Syntax
Plug 'harenome/vim-mipssyntax'
Plug 'neoclide/jsonc.vim'
Plug 'chr4/nginx.vim'
Plug 'chemzqm/vim-jsx-improve'
Plug 'mustache/vim-mustache-handlebars'
Plug 'lifepillar/pgsql.vim'

" Useful binding
Plug 'justinmk/vim-sneak'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'

" Deprecated
" Plug 'majutsushi/tagbar'
" Plug 'lervag/vimtex'
" Plug 'iCyMind/NeoSolarized'
" Plug 'jiangmiao/auto-pairs'
" Plug 'vim-syntastic/syntastic'
" Plug 'SirVer/ultisnips'

" Disabled
" Plug 'camspiers/animate.vim'
" Plug 'briancollins/vim-jst'
" Plug 'philip-karlsson/bolt.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

" }}}

:let mapleader='-'

for f in split(glob('~/.config/nvim/init.d/*.vim'),'\n')
	exe 'source' f
endfor

set cmdheight=1
