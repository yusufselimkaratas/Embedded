/**
 * @file data.h
 * @brief Includes Conversion operations.
 *
 * 
 * @author YusufSelimKARATAS
 * @date 05.11.20
 *

**/


#ifndef __DATA_H_
#define __DATA_H_

/**
 * @brief Integer-ASCII conversion
 *
 * @param data
 * @param *ptr
 * @param base 
 *
 * @return ASCII
 */

uint8_t my_itoa(int32_t data, uint8_t *ptr, uint32_t base);

/**
 * @brief ASCII-Integer conversion
 *
 * @param digits
 * @param *ptr
 * @param base 
 *
 * @return INT32
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);
