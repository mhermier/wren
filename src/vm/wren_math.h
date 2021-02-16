#ifndef wren_math_h
#define wren_math_h

#include "wren_common.h"

#include <math.h>
#include <stdint.h>

// A union to let us reinterpret a double as raw bits and back.
typedef union
{
  uint64_t bits64;
  uint32_t bits32[2];
  double num;
} WrenDoubleBits;

#define WREN_DOUBLE_QNAN_POS_MIN_BITS (UINT64_C(0x7FF8000000000000))
#define WREN_DOUBLE_QNAN_POS_MAX_BITS (UINT64_C(0x7FFFFFFFFFFFFFFF))

#define WREN_DOUBLE_NAN (wrenDoubleFromBits(WREN_DOUBLE_QNAN_POS_MIN_BITS))

// Integer limits that are always lossless castable to a double.
#define WREN_UINT52_MASK (UINT64_C(0x000FFFFFFFFFFFFF))
#define WREN_UINT52_MAX  (UINT64_C(0x000FFFFFFFFFFFFF))

static inline double wrenDoubleFromBits(uint64_t bits)
{
  WrenDoubleBits data;
  data.bits64 = bits;
  return data.num;
}

static inline uint64_t wrenDoubleToBits(double num)
{
  WrenDoubleBits data;
  data.num = num;
  return data.bits64;
}

static inline double wrenDoubleClamp(double value, double low, double high)
{
  ASSERT(!(high < low), "low value higher than high value");
  const double result = (value < low) ? low : ((value > high) ? high : value);
  return result;
}

#endif
