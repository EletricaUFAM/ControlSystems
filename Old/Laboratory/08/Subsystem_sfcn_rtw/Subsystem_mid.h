/*
 * Subsystem_mid.h
 *
 * Real-Time Workshop code generation for Simulink model "Subsystem_sf.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Sun Jul 08 16:24:44 2007
 *
 * SOURCES: Subsystem_sf.c 
 */

#include "simstruc.h"
#include "Subsystem_sf.h"

static const char_T *RT_MEMORY_ALLOCATION_ERROR =
  "memory allocation error in RTW generated S-Function";

#if defined(MATLAB_MEX_FILE) || defined(RT_MALLOC)
static int_T RegNumInputPorts(SimStruct *S, int_T nInputPorts) {
  _ssSetNumInputPorts(S,nInputPorts);
  return TRUE;
}

static int_T RegNumOutputPorts(SimStruct *S, int_T nOutputPorts) {
  _ssSetNumOutputPorts(S,nOutputPorts);
  return TRUE;
}
#endif

/* instance data for model: Subsystem */
void *Subsystem_malloc(SimStruct *rts)
{
  /* Local SimStruct for RTW generated S-Function */
  LocalS *lS = (LocalS *) malloc(sizeof(LocalS));

  rt_VALIDATE_MEMORY(rts,lS);
  (void)memset((char *) lS, 0, sizeof(LocalS));
  ssSetUserData(rts, lS);

  /* model checksums */
  ssSetChecksumVal(rts, 0, 933971733U);
  ssSetChecksumVal(rts, 1, 2128656734U);
  ssSetChecksumVal(rts, 2, 2876426564U);
  ssSetChecksumVal(rts, 3, 1309854925U);

  return NULL;
}
