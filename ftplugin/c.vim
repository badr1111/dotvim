set ai
set foldmethod=syntax
set foldnestmax=1
set expandtab
set ts=2
set shiftwidth=2
set textwidth=76
set formatoptions=tcroq
set cindent

" Use the following rules to do C style indenting
"   (Note that an s mean number*shiftwidth)
"   >=normal indent,
"   e=indent inside braces(brace at end of line),
"   n=Added to normal indent if no braces,
"   f=opening brace of function,
"   {=opening braces,
"   }=close braces (from opening),
"   ^s=indent after brace, if brace is on column 0,
"   := case labels from switch, ==statements after case,
"   t=function return type,
"   +=continuation line,
"   c=comment lines from opener,
"   (=unclosed parens (0 means match),
"   u=same as ( but for second set of parens
"   
"   Try :help cinoptions-values
set cinoptions=>1s,e0,n,f0,{1s,}0,^0s,=1s,t0,+1s,c3,(0,u0,\:2
set cin

" The following modelines can also be used to set the same options.
"/*
" * vim:ts=8:sw=4:expandtab:tw=78:fo=tcroq cindent
" * vim:isk=a-z,A-Z,48-57,_,.,-,>
" * vim:cino=>1s,e0,n-2,f0,{.5s,}0,^-.5s,=.5s,t0,+1s,c3,(0,u0,\:2
" */
