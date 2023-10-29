%{
    #include "SQL_Select.tab.h"
%}

%%
select return SELECT;
from return FROM;
[a-zA-Z][a-zA-Z0-9]* return ID;
\n {return NL;}
. return {*yytext[0];}
%%