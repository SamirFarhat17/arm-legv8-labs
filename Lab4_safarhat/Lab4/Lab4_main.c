/*
 * Lab4_main.c
 *
 *  Created on: Oct 25, 2021
 *      Author: safarhat
 */

#include <stdio.h>

/* Declare the assembly function */
extern void Fib_array(long *array);
extern void array_swap(long *A, long *Y);
extern void array_even_odd(long *A);

int main()
{
  long array[32];		/* Part 1 - array will contain the specified initial sequence */
  long swap[32];		/* Part 2 - array will have swapped every other pair of indices */
  long odd[32];         /* Part 3 - array will swap the content of odd indices */

  int i;

  /*Part 1 fib array*/
  printf("\n_______________________________\nFib Array\n");
  Fib_array(array);

  for (i = 0; i < 32; i++)
  {
	  printf("%ld, ", array[i]);
  }
  printf("\n________________________________\nArray Swap\n");


  /* Uncomment this line to call Part 2 assembly function*/
  array_swap(array, swap);

  /* Uncomment the following lines to print out Part 2 array */
   for (i = 0; i < 32; i++)
   {
       printf("%ld, ", swap[i]);
   }

   printf("\n________________________________\nArray Even Odd\n");

  /* Uncomment these lines to call Part 3 assembly function*/
  array_swap(array, odd);
  array_even_odd(odd);

  /* Uncomment the following lines to print out Part 3 array */
  for (i = 0; i < 32; i++)
  {
      printf("%ld, ", odd[i]);
  }
  printf("\n");

  return (0);
}
