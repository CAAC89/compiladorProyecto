alfabeto [a-zA-Z]
digito [0-9]

%%
[ \t]		;
[ \n]   { yylineno = yylineno + 1;}


break return QUIEBRE;
case return CASO;
if return SI;
else return SINO;
continue return CONTINUE;
for return PARA;
while return MIENTRAS;
return return RETORNE;
switch return CAMBIACASOS;
void return VACIO;
printf  return IMPRIME;



{alfabeto}+ return PALABRA;
int	return ENTERO;
float return DECIMAL;
char return CARACTER;
double return DECIMALLARGO;


^"#include ".+ ;
{digito}+       return NUMERO;
{alfabeto}({alfabeto}|{digito})* return IDENTIFICADOR;



"<="    return LE;
">="    return GE;
"=="    return EQ;
"!="    return NE;
">"	return GT;
"<"	return LT;
"."     return DOT;
\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
.       return yytext[0];
%%