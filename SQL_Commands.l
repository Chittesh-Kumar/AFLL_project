%{
    #include "SQL_Commands.tab.h"
%}
%option noyywrap
%%
select return SELECT;
from return FROM;
[a-zA-Z][a-zA-Z0-9]* return ID;
[\t\n ] ;
. {return yytext[0];}
%%