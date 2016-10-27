:syn on

:colorscheme mustang 
:set nu
:set ignorecase
:set smartcase

:set guioptions-=T

:set sessionoptions=buffers,curdir,folds,help,winsize
:set autochdir
autocmd BufEnter * silent! lcd %:p:h
"autocmd BufEnter * :cd %:p:h 
":au BufEnter,BufFilePost * lc <afile>:h

:set guioptions=mr

:map <C-d> :ex %:p:h<CR>
":map <C-w> :bdelete %<CR>

let mapleader=","

map <Leader>v :e ~/.vimrc<CR>
map <Leader>u :source ~/.vimrc<CR>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
"nmap <silent> <C-Left> :wincmd h<CR>
"nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>



:set backupdir=~/.backup
:set directory=~/.backup

:set et
:set sw=2
:set smarttab

:set foldmethod=indent
:set foldlevel=99
:set foldnestmax=2

:set laststatus=2

filetype plugin indent on

set tags=./tags,tags;/

set rtp+=~/.vim/bundle/Vundle.vim

"set rtp+=~/.vim/bundle/taglist.vim

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/

"syntax enable
"filetype plugin indent on


call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'


Plugin 'gmarik/Vundle.vim'
Plugin 'yegappan/grep.vim'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'vim-scripts/EnhCommentify.vim'
Plugin 'fatih/vim-go'

Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'

Plugin 'derekwyatt/vim-scala'
Plugin 'chaquotay/ftl-vim-syntax'

Plugin 'niklasl/vim-rdf'

Plugin 'wincent/command-t'

Plugin 'bling/vim-airline'

Plugin 'airblade/vim-gitgutter'

Plugin 'edkolev/tmuxline.vim'
Plugin 'mileszs/ack.vim'

" https://github.com/Shougo/unite.vim
Plugin 'shougo/unite.vim'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat' 

Plugin 'svermeulen/vim-easyclip'

Plugin 'junegunn/fzf'

Plugin 'lambdatoast/elm.vim'

Plugin 'dietsche/vim-lastplace'
"
call vundle#end()    

let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let Tlist_GainFocus_On_ToggleOpen = 1

" http://snk.tuxfamily.org/log/vim-256color-bce.html
" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
  set t_ut=
endif


" Do I have to do this?
"au BufRead,BufNewFile *.go set filetype=go
"au BufRead,BufNewFile *.coffee set filetype=coffee
filetype plugin indent on

au BufRead,BufNewFile {Capfile} set filetype=ruby
"au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
au BufNewFile,BufRead *.ftl set ft=html.ftl
au BufNewFile,BufRead *.n3  setfiletype n3 

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

set clipboard=unnamed
set wildmenu
set wildmode=longest:full,full

"http://stackoverflow.com/questions/1497958/how-do-i-use-vim-registers
" to delete a character without replacing default register
noremap x "_x
" to paste in visual mode without updating the default register:
vnoremap p "_dP

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

syntax enable

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

let g:airline_section_b='%F'
let g:airline_section_y='%{fugitive#statusline()}' " Git 
"set statusline+=%{fugitive#statusline()} "  Git Hotness
"set statusline=%F 


let g:CommandTFileScanner="find"
let g:CommandTCancelMap="<C-x>"

"let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='zenburn'
"let g:airline_theme = 'jellybeans'
"let g:airline_theme='ubaryd'

"let g:netrw_liststyle=3

let g:tmuxline_preset = 'tmux'

let g:ackprg = 'ag --nogroup --nocolor --column'

 
"Platinum Searcher

nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
endif

"Unite
let g:unite_source_history_yank_enable = 1

let g:gitgutter_max_signs = 2048

:au FocusLost * :set norelativenumber
:au FocusGained * :set relativenumber

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber

" Uncomment the following to have Vim jump to the last position when
" reopening a file
" if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" endif
