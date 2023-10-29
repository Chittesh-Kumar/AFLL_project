%{
    #include "SQL_Commands_1.tab.h"
%}
%option noyywrap
%%
select return SELECT;
from return FROM;
order return ORDER;
by return BY;
asc return ASC;
desc return DESC;
[a-zA-Z][a-zA-Z0-9]* return ID;
[\t\n ] ;
. {return yytext[0];}
%%