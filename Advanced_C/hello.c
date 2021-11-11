#include<stdio.h>

int num1 = 3000;
int num2 = 2000;
int num3 = 1000;
int result = 0;
char ch='A';
char bh= 65;
int option = 2;
float f = 4.1234567890;

void main(){
printf("Hello World\n");
printf("Size of char datatype is %lu\n",sizeof(char));
printf("Size of short datatype is %lu\n",sizeof(short));
printf("Size of long datatype is %lu\n",sizeof(long));
printf("Size of double datatype is %lu\n",sizeof(double));
printf("Size of long long datatype is %lu\n",sizeof(long long));
printf("Size of long double int datatype is %lu\n",sizeof(long double));
result = num1 + num2 + num3 ;
printf("Total result = %d\n",result);
printf("Integer : %d , Float : %f\n",option,f);
float answer = option + f ;
printf("Answer = %f\n",answer);
printf("ASCI Decimal equivalent of A : %d\n",ch);
printf("A : %c\n",ch);
printf("character equivalent of 65 : %c\n",bh);
// scanf("%d",&num1);
// printf("%d",num1);
scanf("%d%f%c\n",&num1,&f,&ch);
printf("%d   %c   %f\n",num1,ch,f );
}
