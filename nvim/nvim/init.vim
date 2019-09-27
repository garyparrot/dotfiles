:set number relativenumber
:set cursorcolumn cursorline
:set tabstop=4 shiftwidth=4 expandtab mouse=n laststatus=2
:set foldmethod=marker

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

Plug 'vim-syntastic/syntastic'
Plug 'junegunn/vim-easy-align'
Plug '/usr/local/share/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
Plug 'SkyLeach/pudb.vim'
Plug 'Yggdroot/indentLine'
Plug 'MarcWeber/vim-addon-manager'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline-themes'
Plug 'philip-karlsson/bolt.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'iCyMind/NeoSolarized'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" }}}

for f in split(glob('~/.config/nvim/init.d/*.vim'),'\n')
	exe 'source' f
endfor

if filereadable("./init.vim")
    source ./init.vim
endif
