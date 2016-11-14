if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/DoxygenToolkit.vim', { 'for': 'c' }
Plug 'airblade/vim-gitgutter'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/DoxygenToolkit.vim', { 'for': 'c' }
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

"set colorscheme
set background=dark
colorscheme solarized

" 80 chars line
highlight OverLength ctermbg=red guibg=red
match OverLength /\%81v.\+/

"Using tabs for indentation
set noet ci pi sts=0 sw=4 ts=4
