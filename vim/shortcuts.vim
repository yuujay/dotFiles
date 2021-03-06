let mapleader="\<Space>"

" Remap <Esc> key to `ff` so that Caps lock is freed up for tmux prefix
" This configuration is not needed as of now since Caps lock works as both
" `ctrl` and `esc`

" inoremap ff <Esc>
" nnoremap ff <Esc>
" vnoremap ff <Esc>

nnoremap ; :
vnoremap ; :

" This is not required since the same can be achieved by using `C-m` out of
" the box.
" nnoremap <CR> o<Esc>k
" nnoremap <Space> i<Space><Esc>

" move among buffers

map <leader>h :bprev<CR>
map <leader>l :bnext<CR>
map <leader>lb :Buffers<CR>

" Split buffers

map <leader>- :split<CR>
map <leader>\ :vs<CR>
map <leader>x :close<CR>

" File Operation Shortcuts

map <C-A> :w<Space>
map <C-N> :enew<CR>
map <C-W> :bw<CR>
map ss :w<CR>

" Resize vim windows with the arrow keys
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

" Replace text under cursor
nnoremap <leader>r :%s/\<<C-r><C-w>\>/
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>

" Select lines and move up or down using S-k and S-j
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Disable search highlights with a button click.
map <leader>` :nohls<cr>

" Reload vimrc
map <leader><leader>rr :source ~/.vimrc<CR>:echom 'vimrc reloaded'<CR>

" Shortcuts to open some common files
map <leader><leader>la :e ~/.aliases<CR>
map <leader><leader>ya :e /Users/gumamahe/Documents/Cwebaddons.local/docker-compose.yml<CR>
map <leader><leader>rc :e ~/.vimrc<CR>
map <leader><leader>tc :e ~/.tmux.conf<CR>
map <leader><leader>hs :e /etc/hosts<CR>

" Reload current buffer
map <leader><leader>5 :e!<CR>

" Close preview buffer
map <Esc><leader> :pc<CR>

" Install plugins using vundle.
map <leader><leader>p :PlugInstall<CR>

" Toggles

map 12 :set nu!<CR>
map 123 :set rnu!<CR>
map 1c :set cursorline!<CR>
map 1l :Limelight!!<CR>
map 1s :set spell! spelllang=en_us<CR>
