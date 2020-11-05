/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author Yusuf Selim KARATAŞ
 * @date 5.11.20
 *
 */



#include <stdio.h>
#include "stats.h"

unsigned char find_minimum(unsigned int len_of_data,unsigned char *data );
unsigned char find_maximum(unsigned int len_of_data,unsigned char *data );
unsigned char find_mean (unsigned int len_of_data,unsigned char *data);
unsigned char find_median(unsigned int len_of_data,unsigned char *data);
void print_array(unsigned int len_of_data,unsigned char *data);
void print_statistics(unsigned char *data);
unsigned char *sort_array(unsigned char *data);

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
  printf("%d\n",find_minimum(SIZE,test));
  printf("%d\n",find_maximum(SIZE,test));

}

unsigned char find_minimum(unsigned int len_of_data,unsigned char *data ) {
	int sayac=0;
	unsigned char minimum=0xFF;
	
	for(sayac=0;sayac<len_of_data;sayac++){
		if(minimum>=data[sayac]){
			minimum = data[sayac];
		}
	}
	return minimum;
}

unsigned char find_maximum(unsigned int len_of_data,unsigned char *data ) {
	int sayac=0;
	unsigned char maximum = 0x00;
	
	for ( sayac=0; sayac< len_of_data ; sayac++){
		if(maximum <= data[sayac]) {
			maximum = data[sayac];
		}
	}
	return maximum;
}


		


/* Add other Implementation File Code Here */
