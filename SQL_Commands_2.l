%{
    #include "SQL_Commands_2.tab.h"
%}
%option noyywrap
%%
create return CREATE;
table return TABLE;
int return DTYPE1;
varchar return DTYPE2;
[0-9]* return NUM;
[a-zA-Z][a-zA-Z0-9]* return ID;
[\t\n ] ;
. {return yytext[0];}
%%