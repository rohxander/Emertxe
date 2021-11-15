#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() 
{

    int i = 0;
    int j = 0;
    int n = 5;
    int min;
    // scanf("%d", &n);
  	// Complete the code to print the pattern.
    
    int len = 9;
    for ( i=0; i< len; i++) {
        for ( j=0; j <len; j++){
            if ( i < j ){
                min = i ;
            }else{
                min = j ;
            }
            if ( min < len - i ){
                min = min ;
            }else{
                min = len - i - 1;
            }
            if ( min < len-j-1 ){
                min = min;
            }else{
                min = len-j-1 ;
            }

            printf("%d ",n-min);
        }

    printf("\n");
    }
    return 0;
}