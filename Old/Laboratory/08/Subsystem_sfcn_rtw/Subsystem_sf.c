/*
 * Subsystem_sf.c
 * 
 * Real-Time Workshop code generation for Simulink model "Subsystem_sf.mdl".
 *
 * Model Version              : 1.0
 * Real-Time Workshop version : 6.0  (R14)  05-May-2004
 * C source code generated on : Sun Jul 08 16:24:44 2007
 */

#include <math.h>
#include <string.h>
#include "Subsystem_sf.h"
#include "Subsystem_sf_private.h"
#include "simstruc.h"
#include "fixedpoint.h"

#if defined(RT_MALLOC) || defined(MATLAB_MEX_FILE)
extern void *Subsystem_malloc(SimStruct *S);
#endif

#if defined (MATLAB_MEX_FILE)
extern void * utMalloc(size_t);
extern void utFree(void *);
#endif

#if defined(MATLAB_MEX_FILE)
#include "rt_nonfinite.c"
#endif

/* Initial conditions for root system: '<Root>' */
#define MDL_INITIALIZE_CONDITIONS
static void mdlInitializeConditions(SimStruct *S)
{
  /* simstruct variables */
  Subsystem_ContinuousStates *Subsystem_X = (Subsystem_ContinuousStates*)
    ssGetContStates(S);

  /* StateSpace Block: <S1>/State-Space */
  Subsystem_X->StateSpace_CSTATE[0] = 0.0;
  Subsystem_X->StateSpace_CSTATE[1] = 0.0;

  /* TransferFcn Block: <S1>/Transfer Fcn */
  Subsystem_X->TransferFcn_CSTATE[0] = 0.0;
  Subsystem_X->TransferFcn_CSTATE[1] = 0.0;
}

/* Start for root system: '<Root>' */
#define MDL_START
static void mdlStart(SimStruct *S)
{

  /* instance underlying S-Function data */
#if defined(RT_MALLOC) || defined(MATLAB_MEX_FILE)
# if defined(MATLAB_MEX_FILE)

  /* non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* Check for invalid switching between solver types */
  if (!ssIsVariableStepSolver(S)) {
    ssSetErrorStatus(S, "This Real-Time Workshop generated "
     "S-function cannot be used in a simulation with "
     "a solver type of fixed-step "
     "because this S-function was created from a model with "
     "solver type of variable-step solver and it has continuous time blocks. "
     "See the Solver page of the simulation parameters dialog.");

    return;
  }

# endif

  Subsystem_malloc(S);
  if( ssGetErrorStatus(S) != NULL ) {
    return;
  }
#endif

  {
  }
}

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  /* simstruct variables */
  Subsystem_ContinuousStates *Subsystem_X = (Subsystem_ContinuousStates*)
    ssGetContStates(S);

  /* local block i/o variables */

  real_T rtb_temp0;

  /* tid is required for a uniform function interface. This system
   * is single rate, and in this case, tid is not accessed. */
  UNUSED_PARAMETER(tid);

  /* StateSpace Block: <S1>/State-Space */
  {
    rtb_temp0 = 1.0*Subsystem_X->StateSpace_CSTATE[1];
  }

  /* Outport: '<Root>/Out1' */
  ((real_T *)ssGetOutputPortSignal(S, 0))[0] = rtb_temp0;

  /* TransferFcn Block: <S1>/Transfer Fcn */
  rtb_temp0 = 0.0*Subsystem_X->TransferFcn_CSTATE[0] +
    6.3999999999999973E+003*Subsystem_X->TransferFcn_CSTATE[1];

  /* Outport: '<Root>/Out2' */
  ((real_T *)ssGetOutputPortSignal(S, 1))[0] = rtb_temp0;
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE
static void mdlUpdate(SimStruct *S, int_T tid)
{

  /* tid is required for a uniform function interface. This system
   * is single rate, and in this case, tid is not accessed. */
  UNUSED_PARAMETER(tid);
}

/* Derivatives for root system: '<Root>' */
#define MDL_DERIVATIVES
static void mdlDerivatives(SimStruct *S)
{
  /* simstruct variables */
  Subsystem_ContinuousStates *Subsystem_X = (Subsystem_ContinuousStates*)
    ssGetContStates(S);
  Subsystem_StateDerivatives *Subsystem_Xdot = (Subsystem_StateDerivatives*)
    ssGetdX(S);

  /* StateSpace Block: <S1>/State-Space */
  {

    Subsystem_Xdot->StateSpace_CSTATE[0] = (-7.9999999999999986E+001)*(*(((const
      real_T**)ssGetInputPortSignalPtrs(S, 0))[0]));
    Subsystem_Xdot->StateSpace_CSTATE[0] +=
      (-1.0000000000000003E-011)*Subsystem_X->StateSpace_CSTATE[0] +
      (7.9999999999999986E+001)*Subsystem_X->StateSpace_CSTATE[1];

    Subsystem_Xdot->StateSpace_CSTATE[1] =
      (-7.9999999999999986E+001)*Subsystem_X->StateSpace_CSTATE[0];
  }

  /* TransferFcn Block: <S1>/Transfer Fcn */
  {

    Subsystem_Xdot->TransferFcn_CSTATE[0] = (*(((const
      real_T**)ssGetInputPortSignalPtrs(S, 1))[0]));
    Subsystem_Xdot->TransferFcn_CSTATE[0] +=
      (-1.5999999999999997E+002)*Subsystem_X->TransferFcn_CSTATE[0]
      + (-6.3999999999999973E+003)*Subsystem_X->TransferFcn_CSTATE[1];
    Subsystem_Xdot->TransferFcn_CSTATE[1] = Subsystem_X->TransferFcn_CSTATE[0];
  }
}

/* Terminate for root system: '<Root>' */
static void mdlTerminate(SimStruct *S)
{

  if(S != NULL) {

#if defined(RT_MALLOC) || defined(MATLAB_MEX_FILE)

    if ( ssGetUserData(S) != NULL ) {
      rt_FREE(ssGetLocalBlockIO(S));
    }
    rt_FREE(ssGetUserData(S));
#endif
  }
}

#define MDL_CHECK_PARAMETERS
#if defined(MDL_CHECK_PARAMETERS) && defined(MATLAB_MEX_FILE)
static void mdlCheckParameters(SimStruct *S)
{
}
#endif                                  /* MDL_CHECK_PARAMETERS */

#if defined(RT_MALLOC) || defined(MATLAB_MEX_FILE)
# include "Subsystem_mid.h"
#endif

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{
  ssSetNumSampleTimes(S, 1);            /* Number of sample times */
  ssSetNumContStates(S, 4);             /* Number of continuous states */
  ssSetNumNonsampledZCs(S, 0);          /* Number of nonsampled ZCs */

  /* Number of output ports */
  if (!ssSetNumOutputPorts(S, 2)) return;

  /* outport number: 0 */
  if(!ssSetOutputPortVectorDimension(S, 0, 1)) return;
  ssSetOutputPortDataType(S, 0, SS_DOUBLE);
  ssSetOutputPortSampleTime(S, 0, 0.0);
  ssSetOutputPortOffsetTime(S, 0, 0.0);
  ssSetOutputPortOptimOpts(S, 0, SS_REUSABLE_AND_LOCAL);

  /* outport number: 1 */
  if(!ssSetOutputPortVectorDimension(S, 1, 1)) return;
  ssSetOutputPortDataType(S, 1, SS_DOUBLE);
  ssSetOutputPortSampleTime(S, 1, 0.0);
  ssSetOutputPortOffsetTime(S, 1, 0.0);
  ssSetOutputPortOptimOpts(S, 1, SS_REUSABLE_AND_LOCAL);

  /* Number of input ports */
  if (!ssSetNumInputPorts(S, 2)) return;

  /* inport number: 0 */
  {
    if(!ssSetInputPortVectorDimension(S, 0, 1)) return;
    ssSetInputPortDataType(S, 0, SS_DOUBLE);
    ssSetInputPortSampleTime(S, 0, 0.0);
    ssSetInputPortOffsetTime(S, 0, 0.0);
    ssSetInputPortOverWritable(S, 0, 0);
    ssSetInputPortOptimOpts(S, 0, SS_NOT_REUSABLE_AND_GLOBAL);
  }

  /* inport number: 1 */
  {
    if(!ssSetInputPortVectorDimension(S, 1, 1)) return;
    ssSetInputPortDataType(S, 1, SS_DOUBLE);
    ssSetInputPortSampleTime(S, 1, 0.0);
    ssSetInputPortOffsetTime(S, 1, 0.0);
    ssSetInputPortOverWritable(S, 1, 0);
    ssSetInputPortOptimOpts(S, 1, SS_NOT_REUSABLE_AND_GLOBAL);
  }

  ssSetRTWGeneratedSFcn(S, 1);          /* RTW generated S-function */

  /* Tunable Parameters */
  ssSetNumSFcnParams(S, 0);
  /* Number of expected parameters */
#if defined(MATLAB_MEX_FILE)
  if (ssGetNumSFcnParams(S) == ssGetSFcnParamsCount(S)) {
#if defined(MDL_CHECK_PARAMETERS)
    mdlCheckParameters(S);
#endif                                  /* MDL_CHECK_PARAMETERS */
    if( ssGetErrorStatus(S) != NULL ) {
      return;
    }
  } else {
    return;                             /* Parameter mismatch will be reported by Simulink */
  }
#endif                                  /* MATLAB_MEX_FILE */

  /* Options */
  ssSetOptions(S, (SS_OPTION_RUNTIME_EXCEPTION_FREE_CODE |
    SS_OPTION_PORT_SAMPLE_TIMES_ASSIGNED ));
}

/* Function to initialize sample times */
static void mdlInitializeSampleTimes(SimStruct *S)
{
  /* task periods */
  ssSetSampleTime(S, 0, 0.0);

  /* task offsets */
  ssSetOffsetTime(S, 0, 0.0);
}

#if defined(MATLAB_MEX_FILE)

# include "simulink.c"
# include "fixedpoint.c"

#else

# undef S_FUNCTION_NAME
# define S_FUNCTION_NAME Subsystem_sf
# include "cg_sfun.h"

#endif                                  /* defined(MATLAB_MEX_FILE) */
