%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token SELECT ID FROM NL

%%
Program: start NL{printf("Valid string\n");
                exit(0);}
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

int yyerror(char *msg)
{
    printf("invalid string\n");
    exit(0);
}

main()
{
    printf("Enter the string\n");
    yyparse();
}
