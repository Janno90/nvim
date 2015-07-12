call plug#begin('~/.nvim/plugged')

Plug 'tomasr/molokai'

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/syntastic'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'

call plug#end()

colorscheme molokai

set relativenumber
set number

set undofile
set undodir=~/.nvim/undodir
set history=1000

set autoindent
set ts=2
set shiftwidth=2
set expandtab
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

set wildmenu
set wildmode=list:longest,full

set list listchars=tab:-·,trail:·
set laststatus=2
set scrolljump=5
set backspace=indent,eol,start
set linebreak

set scrolloff=8
set sidescrolloff=15
set sidescroll=1

highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

hi MatchParen ctermbg=0
hi MatchParen ctermfg=Red

" Map leader key to space
noremap <Space> <NOP>
let mapleader = " "

" Change tab
map ö :tabp <Enter>
map ä :tabn <Enter>

" Switch lines
map Ö :m .+1<CR>==
map Ä :m .-2<CR>==

" Disable Shift-k
nnoremap K <NOP>

" CTRL+Arrows to resize splits
nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>

" F4 to remove trailing whitespace
nnoremap <silent> <F4> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

command WQ wq
command Wq wq
command W w
command Q q

" Go to tag under cursor
noremap <leader>g <C-]>
" Show tags available for word under cursor
noremap <leader>f g]

" Search buffers
map <Leader>b :CtrlPBuffer<cr>



" Increased ctrl matches
let g:ctrlp_match_window = 'results:30'

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<s-c-j>"
