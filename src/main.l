%{
#include <stdio.h>
%}

%%

[0-9A-Za-z]+[-_.0-9a-zA-Z]*[0-9a-zA-Z]+(\@)[0-9a-zA-Z]+[\.0-9a-zA-Z]* { printf("%s\n",yytext); }

[[:space:]]+ ;
[[:^space:]]+ ;

%%

int main() {
  /*A expressao em Lex comeca obrigatoriamente com ao menos um caracter alfanumerico e aceita em seguida qualquer sequencia alfanumerica e os 3 caracteres exigidos. Apos isso, eh obrigatorio outro caracter "comum" antes do @, em seguida ha a regra para o dominio, que nao engloba o caso do teste 7*/
  yylex();
  return 0;
}
