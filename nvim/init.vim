lua require('plugins')
lua require('keybindings')

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
" syntax on
set ruler
set number
" Better command line completion 
set wildmenu

" mouse support
set mouse=a
set mousemodel=popup
set t_Co=256
set guioptions=egmrti


"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Colors
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark   " Setting light mode

" vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"coc global plugins
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-prettier']

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument


" Reveal 
nnoremap \ :NeoTreeReveal<cr>

" Other
nnoremap <Enter> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>
command! -nargs=0 SnakeToCamel :NameConvert lowerCamelCase

