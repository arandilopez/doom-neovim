vim.cmd([[
filetype plugin indent on
syntax enable
set nocompatible
set noswapfile
set autoread
set encoding=utf8
set vb t_vb="
set noerrorbells
set visualbell
set timeout timeoutlen=500
set number relativenumber
set wrap
set tabstop=2
set shiftwidth=2
set shiftround
set smarttab
set expandtab
set cursorline
set showmatch
set mousehide
set showcmd
set list
set list lcs=trail:·,space:·,tab:»·,eol:¬
set noshowmode
set laststatus=2
set backspace=2
set wildignore+=*/tmp/*,*/vendor/*,*/node_modules/*,*/.git/*,*/log/*,*.so,*.swp,*.zip
set wildmenu
set ignorecase
set smartcase
set hlsearch
" set ncsearch
set sc
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set conceallevel=0
set splitbelow
set splitright
set clipboard=unnamedplus
]])
