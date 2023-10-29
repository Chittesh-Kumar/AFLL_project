%{
    #include<stdio.h>
    #include<stdlib.h>
    void yyerror (char const *s){
        fprintf (stderr,"%s\n",s);
    }
    int yylex();
    int yyparse();
%}

%token SELECT ID FROM

%%
Program: start {YYACCEPT;}
;

start: SELECT value
;

value: column','value 
|column S1 
|'*' S1
;

column: ID
;

S1: FROM S2
;

S2: ID';'
;
%%