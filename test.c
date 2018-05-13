#include <stdio.h>


int main(){
   char test[] = "hellow";
   int i = 0; 

   for(i = 0 ; i < 6 ; i++){
       printf("%c ", test[i]);
   }
   printf("\n\n");

   printf("%s\n",test);


   return 0;
}
