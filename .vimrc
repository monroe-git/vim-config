set hlsearch 			"Highlight
set nu 				"Line number
set showmatch 			"Show match
set ruler 			"Move the line
"set paste 			"Paste while insert mode(can't use jedi)
set cursorline			"Show visual line
autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

call plug#begin('~/.vim/plugged')

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 	"Lively Previewing LaTeX PDF Output
" for latex-live-preview
let g:livepreview_previewer = 'evince'

Plug 'tmhedberg/SimpylFold' 				"Python folding 

Plug 'vim-airline/vim-airline'				"Statusline at the bottom of each vim window
Plug 'vim-airline/vim-airline-themes'
" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'

Plug 'gsiano/vmux-clipboard'				"Copy between other panes
" for vmux-clipboard
let mapleader = ","	
map <silent> <leader>y :WriteToVmuxClipboard<cr>
map <silent> <leader>p :ReadFromVmuxClipboard<cr>

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Markdown Preivew
nmap <C-s> <Plug>MarkdownPreview

Plug 'davidhalter/jedi-vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }	"Document

Plug 'majutsushi/tagbar'				"Tagbar
" for tagbar
nmap <F8> :TagbarToggle<CR>

" 잘 안쓰거나 기능을 정확히 모름
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
" set conceallevel=1
" let g:tex_conceal='abdmg'

Plug 'ctrlpvim/ctrlp.vim'				"File finder
Plug 'christoomey/vim-tmux-navigator'			
Plug 'SirVer/ultisnips'
" for ultisnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories = ['~/.vim/plugged/vim-snippets/snippets']
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']
Plug 'honza/vim-snippets'			" pydocstring으로 대체하거나 없애거나
call plug#end()
