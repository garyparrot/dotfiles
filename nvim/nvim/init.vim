:set number relativenumber
:set cursorcolumn cursorline
:set tabstop=4 shiftwidth=4 expandtab mouse=n laststatus=2
:set foldmethod=marker
:set modeline

:let g:nvim='~/.config/nvim/'

:augroup CNvimTag
:autocmd Filetype c :set tags+=./tags
:augroup END

" There is some short link to other configuration.
" Use shortcut <Ctrl-gf> to open it in new tab
" ~/.config/nvim/init.d/mapping.vim
" ~/.config/nvim/init.d/ultisnips.vim

" Plugin {{{

call plug#begin('~/.nvim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'camspiers/animate.vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vista.vim'
Plug 'mhinz/vim-startify'
Plug 'psliwka/vim-smoothie'
Plug 'honza/vim-snippets'
Plug 'justinmk/vim-sneak'
Plug 'harenome/vim-mipssyntax'
Plug 'joshdick/onedark.vim'
" Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-easy-align'
Plug '/usr/local/share/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline-themes'
Plug 'file:///home/garyparrot/Programming/vim-airline-RedDope'
Plug 'philip-karlsson/bolt.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'iCyMind/NeoSolarized'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'jceb/vim-orgmode'

call plug#end()

" }}}

:let mapleader='-'

for f in split(glob('~/.config/nvim/init.d/*.vim'),'\n')
	exe 'source' f
endfor

set cmdheight=1
