"set number
"set colorcolumn=80
set tabstop=2
"set noexpandtab
set expandtab
set shiftwidth=2
"set softtabstop=1
set scroll=10
set scrolloff=10
set list listchars=tab:»·,trail:·
set t_Co=256

" Function keys
nnoremap <F5> :call ColorColumnToggle()<CR>
imap <F5> <C-o>:call ColorColumnToggle()<CR>

function ColorColumnToggle()
	if &colorcolumn
		set colorcolumn=
	else
		set colorcolumn=80
	endif
endfunction

"" Disable arrows to learn to stop using them
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>

" Windows
nnoremap <silent> <C-Left> :wincmd h<CR>
nnoremap <silent> <C-Up> :wincmd k<CR>
nnoremap <silent> <C-Right> :wincmd l<CR>
nnoremap <silent> <C-Down> :wincmd j<CR>
inoremap <silent> <C-Left> <C-O>:wincmd h<CR>
inoremap <silent> <C-Up> <C-O>:wincmd k<CR>
inoremap <silent> <C-Right> <C-O>:wincmd l<CR>
inoremap <silent> <C-Down> <C-O>:wincmd j<CR>

" Tabs
map <silent> <C-T> :tabnew<CR>
"map <silent> <C-Q> :tabclose<CR>
"map <silent> <kPageUp> :tabprevious<CR>
"map <silent> <kPageDown> :tabnext<CR>
"map <silent> <Leader>H :tabprevious<CR>
"map <silent> <Leader>L :tabnext<CR>
imap <silent> <C-T> <C-O>:tabnew<CR>
"imap <silent> <C-Q> <C-O>:tabclose<CR>
"imap <silent> <kPageUp> <C-O>:tabprevious<CR>
"imap <silent> <kPageDown> <C-O>:tabnext<CR>
"map <silent> <C-H> :tabfirst<CR>
"imap <silent> <C-H> <C-O>:tabfirst<CR>

" very dangerous, automatically remove all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

execute pathogen#infect()
syntax on
filetype plugin indent on
