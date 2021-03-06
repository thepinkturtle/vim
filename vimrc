set nocompatible            " be iMproved, required                                                           
filetype off                  " required                                                                      
set autochdir                                                                                                 
" set the runtime path to include Vundle and initialize                                                       
set rtp+=~/.vim/bundle/Vundle.vim                                                                             
call vundle#begin()                                                                                           
" " alternatively, pass a path where Vundle should install plugins                                            
" "call vundle#begin('~/some/path/here')                                                                      
"                                                                 
" " let Vundle manage Vundle, required                                                                        
Plugin 'VundleVim/Vundle.vim'                                                                                 
"                                                                                                             
" " The following are examples of different formats supported.                                                
" " Keep Plugin commands between vundle#begin/end.                                                            
" " plugin on GitHub repo                                                                                     
" " Plugin 'https://github.com/Valloric/YouCompleteMe.git'
" " Plugin 'https://github.com/rdnetto/YCM-Generator.git'                                                         
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'                                                                       
Plugin 'szw/vim-tags'
Plugin 'dracula/vim'
" " plugin from http://vim-scripts.org/vim/scripts.html                                                       
" Plugin 'L9'                                                                                                 
" " Git plugin not hosted on GitHub                                                                           
" Plugin 'git://git.wincent.com/command-t.git'                                                                
" " git repos on your local machine (i.e. when working on your own plugin)                                    
" Plugin 'file:///home/gmarik/path/to/plugin'                                                                 
" " The sparkup vim script is in a subdirectory of this repo called vim.                                      
" " Pass the path to set the runtimepath properly.                                                            
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}                                                                  
" " Install L9 and avoid a Naming conflict if you've already installed a                                      
" " different version somewhere else.                                                                         
" Plugin 'ascenator/L9', {'name': 'newL9'}                                                                    
"                                                                                                             
" " All of your Plugins must be added before the following line                                               
call vundle#end()            " required                                                                       
filetype plugin indent on    " required                                                                       
" " To ignore plugin indent changes, instead use:                                                             
" "filetype plugin on                                                                                         
" "                                                                                                           
" " Brief help                                                                                                
" " :PluginList       - lists configured plugins                                                              
" " :PluginInstall    - installs plugins; append `!` to update or just                                        
" :PluginUpdate                                                                                               
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache                                   
" " :PluginClean      - confirms removal of unused plugins; append `!` to                                     
" auto-approve removal                                                                                        
" "                                                                                                           
" " see :h vundle for more details or wiki for FAQ                                                            
" " Put your non-Plugin stuff after this line


" Enhanced Highlighting defaults
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting of class scope is disabled by default. To enable set
let g:cpp_class_scope_highlight = 1

" Highlighting of member variables is disabled by default. To enable set
let g:cpp_member_variable_highlight = 1

" Highlighting of class names in declarations is disabled by default. To enable set
let g:cpp_class_decl_highlight = 1

" There are two ways to hightlight template functions. Either
let g:cpp_experimental_simple_template_highlight = 1

" which works in most cases, but can be a little slow on large files. Alternatively set
let g:cpp_experimental_template_highlight = 1

" Highlighting of library concepts is enabled by
" let g:cpp_concepts_highlight = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"i ctags this allows it to update tags when you save a file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_tags_auto_generate = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" vim-airline this lets it be run when there is only one tab which is what you usually do
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2

" Enable the list of buffers                                                                                  
let g:airline#extensions#tabline#enabled = 1  

" Show just the filename                                                                                      
let g:airline#extensions#tabline#fnamemod = ':t'                                                              

" airline theme                                                                                               
let g:airline_theme='badwolf'                                                                                 
                                                                                                              
" airline separator                                                                                           
let g:airline_left_sep=':)'                                                                                    

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




" Stop YCM from asking to load the ycm_extra_config.py everytime"""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0                                                                              
                                                                                                              
" Global ycm_extra_conf file                                                                                  
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_ycm_extra_conf'                                              
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" line numbers
set number
                                                                                                              
" This allows buffers to be hidden if you've modified a buffer.                                               
set hidden                                                                                                    
:color desert
set exrc                                                                                                      
set secure                                                                                                    
set tabstop=4                                                                                                 
set softtabstop=4                                                                                             
set shiftwidth=4                                                                                              
set noexpandtab                                                                                               
set colorcolumn=110                                                                                           
highlight ColorColumn ctermbg=darkgray                                                                        
nnoremap <F3> :make!<cr>                                                                                      
nnoremap <F4> :bnext<cr>                                                                                   
nnoremap <F2> :w<cr>                                                                                          
nnoremap <F5> :u<cr>                                                                                          
" To open a new empty buffer                                                                                  
nnoremap <F12> :enew<cr>                                                                                                             
" " Move to the previous buffer                                                                               
nmap <leader>f :bprevious<CR>                                                                                 
"                                                                                                             
" " Close the current buffer and move to the previous one                                                     
" " This replicates the idea of closing a tab                                                                 
nmap <leader>bq :bp <BAR> bd #<CR>                                                                            
"                                                                                                             
" " Show all open buffers and their status                                                                    
nmap <leader>bl :ls<CR>
