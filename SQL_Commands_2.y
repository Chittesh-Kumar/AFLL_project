%{
    #include<stdio.h>
    #include<stdlib.h>
    void yyerror (char const *s){
        fprintf (stderr,"%s\n",s);
    }
    int yylex();
    int yyparse();
%}

%token CREATE TABLE ID NUM DTYPE1 DTYPE2

%%
Program: start {YYACCEPT;}
;

start: CREATE T1
;

T1: TABLE column S3
;

value: column DTYPE1','value 
|column DTYPE2 '(' NUM ')' ','value 
|column DTYPE1 
|column DTYPE2 '(' NUM ')' 
;

column: ID
;

S3: '(' value ')' ';'
;


%%