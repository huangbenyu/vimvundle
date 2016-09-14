

set nocompatible              " 这是必需的 
filetype off                  " 这是必需的 
  
" 你在此设置运行时路径 
 set rtp+=~/.vim/bundle/Vundle.vim  
"  
"  " vundle初始化 
  call vundle#begin()  
   
"   " 这应该始终是第一个 
  Plugin 'gmarik/Vundle.vim' 
    
    " 该例子来自https://github.com/gmarik/Vundle.vim README 
"    Plugin 'tpope/vim-fugitive'  
     Plugin 'scrooloose/nerdtree'     
     Plugin 'majutsushi/tagbar'
    
     Plugin 'bling/vim-airline'
     set laststatus=2


     " 来自http://vim-scripts.org/vim/scripts.html的插件 
"     Plugin 'L9'  
"      
"      "未托管在GitHub上的Git插件 
"      Plugin 'git://git.wincent.com/command-t.git'  
"       
"       "本地机器上的git软件库（即编写自己的插件时） 
"       Plugin 'file:///home/gmarik/path/to/plugin'  
"        
"        " sparkup vim脚本在名为vim的该软件库子目录下。 
"        " 传递路径，合理设置运行时路径。 
"        Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
"         
"      " 与L9避免名称冲突 
"      Plugin 'user/L9', {'name': 'newL9'}  
"          
"     "每个插件都应该在这一行之前  
           
 call vundle#end()            " required
 filetype plugin indent on    " required 

" NERDTree config
 let NERDTreeWinPos='left'
 let NERDTreeWinSize=30
 map <F2> :NERDTreeToggle<CR>


 " Bundle 'majutsushi/tagbar'
 nmap <Leader>tb :TagbarToggle<CR>		"快捷键设置
 let g:tagbar_ctags_bin='ctags'			"ctags程序的路径
 let g:tagbar_width=30					"窗口宽度的设置
 map <F3> :Tagbar<CR>
 "autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen() 
