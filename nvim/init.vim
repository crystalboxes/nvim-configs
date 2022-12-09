lua require('plugins')
lua require('keybindings')
lua require('dap_config')

set termguicolors

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
" autocmd vimenter * ++nested colorscheme github_light
" autocmd vimenter * ++nested colorscheme vim-material
" set background=light   " Setting light mode
let g:gruvbox_contrast_light='hard'

" vim-airline
let g:airline_theme = 'gruvbox'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"coc global plugins
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-prettier', 'coc-pyright']

    " Reveal 
nnoremap \ :NeoTreeReveal<cr>

" Other
nnoremap <Enter> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>
command! -nargs=0 SnakeToCamel :NameConvert lowerCamelCase

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_enabled_python = ['black']


" dap
nnoremap <silent> <F5> <Cmd>lua require'dap'.continue()<CR>
nnoremap <silent> <F10> <Cmd>lua require'dap'.step_over()<CR>
nnoremap <silent> <F11> <Cmd>lua require'dap'.step_into()<CR>
nnoremap <silent> <F12> <Cmd>lua require'dap'.step_out()<CR>
nnoremap <silent> <Leader>b <Cmd>lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>

lua require('dap-python').setup()


" delimitMate
let b:delimitMate_quotes = "\" `"
let b:delimitMate_nesting_quotes = ['`']

