/*
 * Subsystem_sf.h
 *
 * Real-Time Workshop code generation for Simulink model "Subsystem_sf.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Sun Jul 08 16:24:44 2007
 */
#ifndef _RTW_HEADER_Subsystem_sf_h_
#define _RTW_HEADER_Subsystem_sf_h_

#include <math.h>
#include <stdlib.h>
#define S_FUNCTION_NAME                 Subsystem_sf
#define S_FUNCTION_LEVEL                2
#define RTW_GENERATED_S_FUNCTION

#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "rt_nonfinite.h"
#if !defined(RTW_SFUNCTION_DEFINES)
#define RTW_SFUNCTION_DEFINES
typedef struct {
  void *blockIO;
  void *defaultParam;
  void *nonContDerivSig;
} LocalS;

#define ssSetLocalBlockIO(S, io) ((LocalS *)ssGetUserData(S))->blockIO = ((void *)(io))
#define ssGetLocalBlockIO(S) ((LocalS *)ssGetUserData(S))->blockIO

#define ssSetLocalDefaultParam(S, paramVector) ((LocalS *)ssGetUserData(S))->defaultParam = (paramVector)
#define ssGetLocalDefaultParam(S) ((LocalS *)ssGetUserData(S))->defaultParam

#define ssSetLocalNonContDerivSig(S, pSig) ((LocalS *)ssGetUserData(S))->nonContDerivSig = (pSig)
#define ssGetLocalNonContDerivSig(S) ((LocalS *)ssGetUserData(S))->nonContDerivSig
#endif

#include "Subsystem_sf_types.h"

/* Continuous states (auto storage) */
typedef struct _Subsystem_ContinuousStates {
  real_T StateSpace_CSTATE[2];          /* '<S1>/State-Space' */
  real_T TransferFcn_CSTATE[2];         /* '<S1>/Transfer Fcn' */
} Subsystem_ContinuousStates;

/* State derivatives (auto storage) */
typedef struct _Subsystem_StateDerivatives {
  real_T StateSpace_CSTATE[2];          /* '<S1>/State-Space' */
  real_T TransferFcn_CSTATE[2];         /* '<S1>/Transfer Fcn' */
} Subsystem_StateDerivatives;

/* State disabled  */
typedef struct _Subsystem_StateDisabled {
  boolean_T StateSpace_CSTATE[2];       /* '<S1>/State-Space' */
  boolean_T TransferFcn_CSTATE[2];      /* '<S1>/Transfer Fcn' */
} Subsystem_StateDisabled;

/* External inputs (root inport signals with auto storage) */
typedef struct _Subsystem_ExternalUPtrs_tag {
  real_T *In1;                          /* '<Root>/In1' */
  real_T *In2;                          /* '<Root>/In2' */
} Subsystem_ExternalUPtrs;

/* External outputs (root outports fed by signals with auto storage) */
typedef struct _Subsystem_ExternalOutputs_tag {
  real_T *Out1;                         /* '<Root>/Out1' */
  real_T *Out2;                         /* '<Root>/Out2' */
} Subsystem_ExternalOutputs;

/* 
 * The generated code includes comments that allow you to trace directly 
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : Subsystem_sf
 * '<S1>'   : Subsystem_sf/Subsystem
 * '<S2>'   : Subsystem_sf/xx_LockDownSignalSpec_1
 * '<S3>'   : Subsystem_sf/xx_LockDownSignalSpec_2
 * '<S4>'   : Subsystem_sf/xx_LockDownSignalSpec_3
 * '<S5>'   : Subsystem_sf/xx_LockDownSignalSpec_4
 */

#endif                                  /* _RTW_HEADER_Subsystem_sf_h_ */
