set hlsearch 			"Highlight
set nu 				"Line number
set showmatch 			"Show match
set ruler 			"Move the line
"set paste 			"Paste while insert mode(can't use jedi)
set cursorline			"Sho visual line

autocmd Filetype cpp setlocal expandtab tabstop=2 shiftwidth=2
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

call plug#begin('~/.vim/plugged')
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 	"Lively Previewing LaTeX PDF Output
Plug 'tmhedberg/SimpylFold' 				"Python folding 
Plug 'vim-airline/vim-airline'				"Statusline at the bottom of each vim window
Plug 'vim-airline/vim-airline-themes'
Plug 'gsiano/vmux-clipboard'				"Copy between other panes
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'davidhalter/jedi-vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }	"Document
Plug 'majutsushi/tagbar'				"Tagbar

" 잘 안쓰거나 기능을 정확히 모름
Plug 'ctrlpvim/ctrlp.vim'				"File finder
Plug 'christoomey/vim-tmux-navigator'			
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'			" pydocstring으로 대체하거나....
call plug#end()

"let g:vimspector_enable_mappings = 'HUMAN'	"vimspector
"let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
"packadd! vimspector

" for tagbar
nmap <F8> :TagbarToggle<CR>

" for latex-live-preview
let g:livepreview_previewer = 'evince'
" for vmux-clipboard
let mapleader = ","	
map <silent> <leader>y :WriteToVmuxClipboard<cr>
map <silent> <leader>p :ReadFromVmuxClipboard<cr>
" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
"Markdown Preivew
nmap <C-s> <Plug>MarkdownPreview
" for ctrlp
" let g:ctrlp_map = '<c-p>'

" for ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
