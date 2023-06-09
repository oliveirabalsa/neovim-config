" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

inoremap <C-s> <esc>:w<bar>Prettier<cr> 
nnoremap <C-s> :w<bar>Prettier <cr>                     " save files and format using Prettier
inoremap <C-q> <esc>:exit<cr>               " quit discarding changes
nnoremap <C-q> :exit<cr>

inoremap ;; <Esc>

" Better tabbing
vnoremap < <gv
vnoremap > >gv


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open nerdTree with keyshortcut
let mapleader = ","
nmap <leader>ne :NERDTreeToggle<cr>

" TABS
noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>
nnoremap <C-t> :tabnew<CR>
noremap <C-e> :tabclose<CR>

nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz

" move among buffers with CTRL
nnoremap <C-i> :bnext<CR>
nnoremap <C-o> :bprev<CR>

" No more Arrow keys, deal with it
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <S>k <NOP>

tnoremap ;; <C-\><C-n>

" Opens a new terminal in vertical split
noremap <Leader>t :vsplit term://zsh<CR>

" Comment lines
noremap <Leader>cc 

"Search for all ocourrences of the phrase that you write
nnoremap <C-f> :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>fg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <Leader>fb :lua require('telescope.builtin').buffers()<CR>
" CTRL + C now yank the selected
vmap <C-c> "+y

" Clears the vim highlighing
noremap <C-l> :noh<CR>

" Changes all ocourrences for the text that you have typed
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

xnoremap <Leader>r :s///g<Left><Left>
xnoremap <Leader>rc :s///gc<Left><Left><Left>

vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>

"Debugging keys
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Continue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

nmap <Leader>dk <Plug>VimspectorRestart
nmap <Leader>dh <Plug>VimspectorStepOut
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver

" Keys for completion
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

nmap <Leader>rr :NERDTreeFocus<cr>R<c-w><c-p>
