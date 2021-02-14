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
 * @file memory.c
 * @brief Abstraction of memory read and write operations
 *
 * This implementation file provides an abstraction of reading and
 * writing to memory via function calls. There is also a globally
 * allocated buffer array used for manipulation.
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#include "memory.h"

/***********************************************************
 Function Definitions
***********************************************************/
void set_value(char * ptr, unsigned int index, char value){
  ptr[index] = value;
}

void clear_value(char * ptr, unsigned int index){
  set_value(ptr, index, 0);
}

char get_value(char * ptr, unsigned int index){
  return ptr[index];
}

void set_all(char * ptr, char value, unsigned int size){
  unsigned int i;
  for(i = 0; i < size; i++) {
    set_value(ptr, i, value);
  }
}

void clear_all(char * ptr, unsigned int size){
  set_all(ptr, 0, size);
}

uint8_t* my_memmove(uint8_t* src, uint8_t* dst, size_t lenght){
	uint8_t* temp = (uint8_t*) malloc(sizeof(uint8_t)*lenght);
	
	for(int counter=0; counter<length; counter++) {
		*(temp+counter)=*(src+counter);
	}
	free(src);
	for (int counter1=0; counter1<length; counter1++)
	{
		*(dest+counter1) = *(counter1+temp);
	}

	free(temp);
	
	return dest;


}

uint8_t* memcopy( uint8_t* src, uint8_t* dst, size_t lenght){

	uint8_t* temp = (uint8_t*) malloc(sizeof(uint8_t)*lenght);
	
	for(int counter=0; counter<length; counter++) {
		*(temp+counter)=*(src+counter);
	}
	
	for (int counter1=0; counter1<length; counter1++)
	{
		*(dest+counter1) = *(counter1+temp);
	}

	free(temp);
	
	return dest;

		
}

uint8_t* memset( uint8_t* src, size_t lenght, uint8_t value)
{
	
	for(int counter=0; counter<length; counter++) {
		*(src+counter)=value;
	}
	return src;
	
}

uint8_t* memzero( uint8_t* src, size_t lenght)
{
	return memset(src,length,0);
	
}

uint8_t* my_reverse( uint8_t* src, size_t lenght)
{
	uint8_t* temp = (uint8_t*) malloc(sizeof(uint8_t)*lenght);
	
	for(int counter=0; counter<length; counter++) {
		*(temp+counter)=*(src+counter);
	}

	free(src);
	for (int counter1=0; counter1<lenght; counter1++)
	{
		*(src+counter1) = *(temp+length-1-counter1);
	}

	return src;
	
}

int32_t* reserve_words(size_t length){
	int32_t* temp = (int32_t*)malloc(sizeof(int32_t)*length);
	return temp;
}



void free_words(int32_t* src){
	free(src);
}


