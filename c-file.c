
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall asmfunc(int arr[],int size);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arr[5]={1,3,2,4,7};
    int value = 0;
    printf("assembly proc calling from  from C! \n");
getch();

    
    value = asmfunc(arr,5); //assembly proc calling
   
   getch();
    
    printf("The answer is:%d \n",value);
    printf("back to  C! \n"); // printing in c
    
  
    
    return 0;
}