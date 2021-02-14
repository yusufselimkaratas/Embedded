#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "data.h"

/*

	I got help on that file from other course participants.
*/

uint8_t my_itoa(int32_t data, uint8_t *ptr, uint32_t base){                                                                                
	uint8_t *binary = (uint8_t*) calloc(33,sizeof(uint8_t));                                                                           
	uint8_t last = 0;
	if( ((uint8_t)((data>>31)&0x01)) == 1 ){
		data = ~data; 	
		data++;
		*binary = 45;
	}
	else{
		*binary = 43;
	}
	
	for(int i = 1; i <= 31; i++){                                                                                                      
		*(binary+i) = (uint8_t)((data>>(31-i))&0x01);		
	}
	
	for(int i = 0; i < 30; i++){            
		if( *(binary+i) == 1 ){
			last = i;
			break;
		}
	}
	last = 31 - last;
	uint8_t res = 0,temp = 0;
	if( base == 16 ){
		uint8_t chunks = (((last+1)%4)==0) ? (last+1)/4 : ((last+1)/4)+1;
		res = chunks + 2;
		*ptr = *(binary);
		*(ptr+res-1) = '\0'; 
		for(int i = 1; i <= chunks; i++){
			temp = *(binary+31-(4*i)+1)*(8) + *(binary+31-(4*i)+2)*(4) + *(binary+31-(4*i)+3)*(2) + *(binary+31-(4*i)+4);
			*(ptr+res-i-1) = (temp<10) ? 48+temp : 55+temp;
		}	
	}

	if( base == 10 ){
		*ptr = *binary; 
		int i = 1;
		while( data > 0 ){
			*(ptr+i) = 48 + data%10;
			data/=10;
			i++;
		}
		*(ptr+(++i)) = '\0';
		res = i;
		uint8_t temp = 0;
		
		for(int i = 1; i < (res/2); i++){
			temp = *(ptr+i);
			*(ptr+i) = *(ptr+res-i-1);
			*(ptr+res-i-1) = temp;	
		}
	}	

	if( base == 8){
		uint8_t chunks = (((last+1)%3)==0) ? (last+1)/3 : ((last+1)/3)+1;
	        res = chunks + 2;
		*ptr = *binary;
		*(ptr+res-1) = '\0'; 
		for(int i = 1; i <= chunks; i++){
			temp = *(binary+31-(3*i)+1)*(4) + *(binary+31-(3*i)+2)*(2) + *(binary+31-(3*i)+3);
			*(ptr+res-i-1) = 48+temp;
		}		
	}

	if( base == 2 ){
		res = last + 3; 
		*ptr = *binary; 
		*(ptr+res-1) = '\0'; 	
		for(int i = 0; i <= last; i++){
			*(ptr+i+1) = 48 + *(binary+31-last+i);		
		}
	}
	free(binary);
	return res;
}


int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){                                                                            
	uint8_t i = 0,sig = 0;
	int32_t res = 0;
	digits-=2;
	i = 1;
	if( *ptr == '-' ){
		sig = 1;		
	}
	
	uint32_t pow = 1;
	
	if( base == 16 ){
		for(int j = digits; j >= (0+i); j--){	
			res += (*(ptr+j)>64) ? (*(ptr+j)-55)*pow : (*(ptr+j)-48)*pow;
			pow*=16;	
		}
	}

	if( base == 10 ){
		for(int j = digits; j >= (0+i); j--){
			res += (*(ptr+j)-48)*pow;
			pow*=10;	
		}
	}	

	if( base == 8 ){
		for(int j = digits; j >= (0+i); j--){
			res += (*(ptr+j)-48)*pow;
			pow*=8;	
		}
	}

	if( base == 2 ){
		for(int j = digits; j >= (0+i); j--){
			res += (*(ptr+j)-48)*pow;
			pow*=2;
		}
	}	

	if( sig == 1 ){
		res--;
		res = ~res;
	}
	return res;
}
