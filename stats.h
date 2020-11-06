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
 * @author YusufSelimKARATAS
 * @date 05.11.20
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Add Your Declarations and Function Comments here */ 

unsigned char find_minimum(unsigned int len_of_data,unsigned char *data );
unsigned char find_maximum(unsigned int len_of_data,unsigned char *data );
unsigned char find_mean (unsigned int len_of_data,unsigned char *data);
unsigned char find_median(unsigned int len_of_data,unsigned char *data);
void print_array(unsigned int len_of_data,unsigned char *data);
void print_statistics(unsigned int len_of_data,unsigned char *data);
unsigned char *sort_array(unsigned int len_of_data,unsigned char *data);



/**
 * @brief <Add Brief Description of Function Here>
 *
 * <Add Extended Description Here>
 *
 * @param <Add InputName> <add description here>
 * @param <Add InputName> <add description here>
 * @param <Add InputName> <add description here>
 * @param <Add InputName> <add description here>
 *
 * @return <Add Return Informaiton here>
 */


#endif /* __STATS_H__ */
