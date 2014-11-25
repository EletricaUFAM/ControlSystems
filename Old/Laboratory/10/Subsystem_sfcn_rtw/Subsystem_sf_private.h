/*
 * Subsystem_sf_private.h
 *
 * Real-Time Workshop code generation for Simulink model "Subsystem_sf.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Sun Jul 08 16:24:44 2007
 */
#ifndef _RTW_HEADER_Subsystem_sf_private_h_
#define _RTW_HEADER_Subsystem_sf_private_h_

#ifndef _RTW_COMMON_DEFINES_
# define _RTW_COMMON_DEFINES_
#define rt_VALIDATE_MEMORY(S, ptr) if(!(ptr)) {\
    ssSetErrorStatus(S, RT_MEMORY_ALLOCATION_ERROR);\
    return(S);\
  }

#if !defined(_WIN32)
#define rt_FREE(ptr) if((ptr) != NULL) {\
    free((ptr));\
    (ptr) = NULL;\
  }
#else
/* Visual and other windows compilers delcare free without const! */
#define rt_FREE(ptr) if((ptr) != NULL) {\
    free((void *)(ptr));\
    (ptr) = NULL;\
  }
#endif

#endif                                  /* _RTW_COMMON_DEFINES_ */

/* Check for inclusion of an incorrect version of rtwtypes.h */
#ifndef RTWTYPES_ID_C08S16I32L32N32F1
#error This code was generated with a different "rtwtypes.h" than the file included
#endif

#endif                                  /* _RTW_HEADER_Subsystem_sf_private_h_ */
