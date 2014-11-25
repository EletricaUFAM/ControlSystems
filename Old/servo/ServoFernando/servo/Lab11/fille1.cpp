
#include <stdio.h>
#include <stdlib.h>

int main()
{
FILE *p;
char c, str[30];
int i = 0;
/* Le um nome para o arquivo a ser aberto: */
printf("\n\n Entre com um nome para o arquivo:\n");
gets(str);

/* Abre para leitura */

if (!(p = fopen(str,"r"))) /* Caso ocorra algum erro na abertura do
arquivo..*/
{ /* o programa aborta automaticamente */
printf("Erro! Impossivel abrir o arquivo!\n");
exit(1);
}

while (!feof(p)) /* Enquanto não se chegar no final do arquivo */
{
c = getc(p); /* Le um caracter no arquivo */
i++; /* E incrementa i */
}
fclose(p); /* Fecha o arquivo */
printf("\nO numero de caracteres do arquivo %s e' igual a %d ", str, i);
return 0;
}

