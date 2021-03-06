silent! call plug#begin('~/.vim_runtime/plugged')

""""""""""""""""""""""""""""""""
" language support
""""""""""""""""""""""""""""""""

" HTML
Plug 'othree/html5.vim', { 'for': 'html' }
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }

" Rust
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

" Python
Plug 'hdima/python-syntax', { 'for': 'python' }

" Handlebars
Plug 'mustache/vim-mustache-handlebars', { 'for': 'html' }

" Javascript, Coffeescript, Typescript, etc.
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffescript' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" Markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" %-operator will mach if endif etc.
Plug 'vim-scripts/matchit.zip'

" several text objects
Plug 'kana/vim-textobj-user'
Plug 'sgur/vim-textobj-parameter'
Plug 'kana/vim-textobj-function'

" browse the tags of source code files
Plug 'majutsushi/tagbar'

" new commenting operations
Plug 'scrooloose/nerdcommenter'

" display css colors
Plug 'ap/vim-css-color'

Plug 'asciidoc/vim-asciidoc', { 'for': 'asciidoc' }

""""""""""""""""""""""""""""""""
" fuzzy search tools
""""""""""""""""""""""""""""""""

" fuzzy file and buffer finder
Plug 'kien/ctrlp.vim'

" fzf tool integration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""""""""""""""""""""""""""""""""
" design / gui
""""""""""""""""""""""""""""""""

" Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'

" Airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""
" version control system
""""""""""""""""""""""""""""""""

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""
" dependencies
""""""""""""""""""""""""""""""""

" Dependencies / Tools
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'xolox/vim-misc'

""""""""""""""""""""""""""""""""
" multiple cursors
""""""""""""""""""""""""""""""""

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

""""""""""""""""""""""""""""""""
" file tools
""""""""""""""""""""""""""""""""

" NERDTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

""""""""""""""""""""""""""""""""
" search
""""""""""""""""""""""""""""""""

" search using ag or ack
Plug 'mileszs/ack.vim'

""""""""""""""""""""""""""""""""
" visual mode tools
""""""""""""""""""""""""""""""""

" + key expands selection
Plug 'terryma/vim-expand-region'

""""""""""""""""""""""""""""""""
" insert completion
""""""""""""""""""""""""""""""""

" insert completion using the tab key
Plug 'ervandew/supertab'

""""""""""""""""""""""""""""""""
" buffer tools
""""""""""""""""""""""""""""""""

" :BufOnly Command
Plug 'schickling/vim-bufonly'

""""""""""""""""""""""""""""""""
" text editing tools
""""""""""""""""""""""""""""""""

" surround operator
Plug 'tpope/vim-surround'

" repeat complex commands on .
Plug 'tpope/vim-repeat'

" several key mappings using [ and ]
Plug 'tpope/vim-unimpaired'

""""""""""""""""""""""""""""""""
" clipboard tools
""""""""""""""""""""""""""""""""

" yanks into stack
Plug 'maxbrunsfeld/vim-yankstack'

""""""""""""""""""""""""""""""""
" terminal support
""""""""""""""""""""""""""""""""

" adds support for modified keys in several terminals
Plug 'drmikehenry/vim-fixkey'

call plug#end()

