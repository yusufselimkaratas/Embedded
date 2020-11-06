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


/**
 * @brief Finds minimum value in an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and returns the one that has minimum value among them
 * as unsigned char.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return Mimimum value in the array.
 */

unsigned char find_minimum(unsigned int len_of_data,unsigned char *data );

/**
 * @brief Finds maximum value in an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and returns the one that has maximum value among them
 * as unsigned char.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return maximum value in the array.
 */


unsigned char find_maximum(unsigned int len_of_data,unsigned char *data );
/**
 * @brief Finds mean value for an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and returns the mean value of all arrayas unsigned char.
 * Any  decimal is neglected.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return Mean value in the array.
 */
unsigned char find_mean (unsigned int len_of_data,unsigned char *data);

/**
 * @brief Finds median value in an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and returns the one that is median value among them
 * as unsigned char. If the array has even number of member, median is
 * found by averaging two middle samples.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return Median value in the array.
 */

unsigned char find_median(unsigned int len_of_data,unsigned char *data);

/**
 * @brief Prints all values inside an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and prints all values inside it. It prints all values 
 * with ":" delimiter and without passing to new line. After all members
 * are printed, cursor is moved to next line.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return -
 */

void print_array(unsigned int len_of_data,unsigned char *data);

/**
 * @brief Prints some statistics for an unsigned char array
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and prints some statistics indluding mean, minimum, 
 * maximum, median of related array. 
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return -
 */

void print_statistics(unsigned int len_of_data,unsigned char *data);

/**
 * @brief Sorts an array in a descending way
 *
 * This function takes lenth of one dimensional array that has unsigned
 * char members and sorts members of array in a descending way.
 *
 * @param len_of_data length of one dimesinomal data as unsigned char
 * @param *data pointer that points to the array that will be analyzed.
 *
 * @return pointer of sorted array
 */
unsigned char *sort_array(unsigned int len_of_data,unsigned char *data);






#endif /* __STATS_H__ */
