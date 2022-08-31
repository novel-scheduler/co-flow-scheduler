#include "additional.h"


int arrayTestFunction(void)
	 {
 
 int retVal;

  u32 arr[] = {1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 15, 16};

  int lengthOfarray = 0;

  int i;

  for (i = 0; i < (sizeof(arr) / sizeof(arr[0])); i++) {
    lengthOfarray++;
  }

  u32 sampleValright;

  get_random_bytes(&sampleValright, sizeof(sampleValright));

  sampleValright %= 5;

  sampleValright++;

  u32 sampleVal;

  get_random_bytes(&sampleVal, sizeof(sampleVal));

  sampleVal %= 16;

  u32 sampleValwrng;

  get_random_bytes(&sampleValwrng, sizeof(sampleValwrng));

  sampleValwrng %= 10;

  sampleValwrng = sampleValwrng + plimit;

  retVal = valuePresentInArray(sampleValright, arr, lengthOfarray);
  if(retVal == -1)
 	return 0;

  //printk("return Value if given right value of %d is %d\n", sampleValright,retVal);
         

  //retVal = valuePresentInArray(sampleVal, arr, lengthOfarray);

  //printk("return Value if given random value  of %d is %d\n", sampleVal, retVal);

  retVal = valuePresentInArray(sampleValwrng, arr, lengthOfarray);
  if(retVal != -1)
 	return 0;
 	
 return 1;	

  //printk("return Value if given wrong value of %d  is %d\n", sampleValwrng,retVal);
        
}


int resetTestFunction(void)
{
int retVal;

  u32 arr[] = {1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 15, 16};

  int lengthOfarray = 0;

  int i;

  for (i = 0; i < (sizeof(arr) / sizeof(arr[0])); i++) {
    lengthOfarray++;
  }

 
  resetFlowid(arr, lengthOfarray);

  for (i = 0; i < lengthOfarray; i++) {
 
 	if(arr[i] != -1)
 	return 0;
    	
  	}
 return 1;

}	
	
void testfq(void)

{

int vArraytest = arrayTestFunction();
if(vArraytest)
printk("Array test  Passed");
else
printk("Array test Failed");

int vResettest =  resetTestFunction();

if(vResettest)
printk("Reset Array test  Passed");
else
printk("Reset Arraytest Failed");

}


	
