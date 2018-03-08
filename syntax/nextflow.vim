if exists("b:current_syntax")
    finish
endif

source $VIMRUNTIME/syntax/groovy.vim


let end_block=+["']{3}+

" Embedded shell
syntax include @SH $VIMRUNTIME/syntax/sh.vim
syntax region shCode start=+#!.?\sbash+ keepend end=end_block contains=@SH
syntax region shCode start=+#!.?\sbash+ keepend end=end_block contains=@SH
syntax region shCode start=+#!.?\ssh+ keepend end=end_block contains=@SH
syntax region shCode start=+#!.?\szsh+ keepend end=end_block contains=@SH
syntax region shCode start=+#!.?\sfish+ keepend end=end_block contains=@SH


" Embedded python
syntax include @Python $VIMRUNTIME/syntax/python.vim
syntax region PythonCode start=+#!.?\spython+ keepend end=end_block
    \ contains=@Python

" Embedded perl
syntax include @Perl $VIMRUNTIME/syntax/perl.vim
syntax region PerlCode start=+#!.?\sperl+ keepend end=end_block contains=@Perl

