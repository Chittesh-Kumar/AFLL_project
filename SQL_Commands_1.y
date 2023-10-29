%{
    #include<stdio.h>
    #include<stdlib.h>
    void yyerror (char const *s){
        fprintf (stderr,"%s\n",s);
    }
    int yylex();
    int yyparse();
%}

%token SELECT FROM ORDER BY ASC DESC ID

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

S2: ID S3
;

S3: ORDER S4
;

S4: BY S5
;

S5: column','S5
|column S6
;

S6: ASC';'
|DESC';'
;
%%