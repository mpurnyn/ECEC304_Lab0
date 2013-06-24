;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: LEDFlashTimer.asm
;;   Version: 2.70, Updated on 2012/9/21 at 11:59:44
;;  Generated by PSoC Designer 5.3.2710
;;
;;  DESCRIPTION: Timer8 User Module software implementation file
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2012. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "LEDFlashTimer.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  LEDFlashTimer_EnableInt
export _LEDFlashTimer_EnableInt
export  LEDFlashTimer_DisableInt
export _LEDFlashTimer_DisableInt
export  LEDFlashTimer_Start
export _LEDFlashTimer_Start
export  LEDFlashTimer_Stop
export _LEDFlashTimer_Stop
export  LEDFlashTimer_WritePeriod
export _LEDFlashTimer_WritePeriod
export  LEDFlashTimer_WriteCompareValue
export _LEDFlashTimer_WriteCompareValue
export  LEDFlashTimer_bReadCompareValue
export _LEDFlashTimer_bReadCompareValue
export  LEDFlashTimer_bReadTimer
export _LEDFlashTimer_bReadTimer
export  LEDFlashTimer_bReadTimerSaveCV
export _LEDFlashTimer_bReadTimerSaveCV

; The following functions are deprecated and subject to omission in future releases
;
export  bLEDFlashTimer_ReadCompareValue  ; deprecated
export _bLEDFlashTimer_ReadCompareValue  ; deprecated
export  bLEDFlashTimer_ReadTimer         ; deprecated
export _bLEDFlashTimer_ReadTimer         ; deprecated
export  bLEDFlashTimer_ReadTimerSaveCV   ; deprecated
export _bLEDFlashTimer_ReadTimerSaveCV   ; deprecated

export  bLEDFlashTimer_ReadCounter       ; obsolete
export _bLEDFlashTimer_ReadCounter       ; obsolete
export  bLEDFlashTimer_CaptureCounter    ; obsolete
export _bLEDFlashTimer_CaptureCounter    ; obsolete


AREA lab0b_RAM (RAM,REL)

;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------


AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_EnableInt
;
;  DESCRIPTION:
;     Enables this timer's interrupt by setting the interrupt enable mask bit
;     associated with this User Module. This function has no effect until and
;     unless the global interrupts are enabled (for example by using the
;     macro M8C_EnableGInt).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None.
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_EnableInt:
_LEDFlashTimer_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   LEDFlashTimer_EnableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_DisableInt
;
;  DESCRIPTION:
;     Disables this timer's interrupt by clearing the interrupt enable
;     mask bit associated with this User Module.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_DisableInt:
_LEDFlashTimer_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   LEDFlashTimer_DisableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_Start
;
;  DESCRIPTION:
;     Sets the start bit in the Control register of this user module.  The
;     timer will begin counting on the next input clock.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_Start:
_LEDFlashTimer_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   LEDFlashTimer_Start_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_Stop
;
;  DESCRIPTION:
;     Disables timer operation by clearing the start bit in the Control
;     register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_Stop:
_LEDFlashTimer_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   LEDFlashTimer_Stop_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_WritePeriod
;
;  DESCRIPTION:
;     Write the 8-bit period value into the Period register (DR1). If the
;     Timer user module is stopped, then this value will also be latched
;     into the Count register (DR0).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: fastcall16 BYTE bPeriodValue (passed in A)
;  RETURNS:   Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_WritePeriod:
_LEDFlashTimer_WritePeriod:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[LEDFlashTimer_PERIOD_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_WriteCompareValue
;
;  DESCRIPTION:
;     Writes compare value into the Compare register (DR2).
;
;     NOTE! The Timer user module must be STOPPED in order to write the
;           Compare register. (Call LEDFlashTimer_Stop to disable).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    fastcall16 BYTE bCompareValue (passed in A)
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_WriteCompareValue:
_LEDFlashTimer_WriteCompareValue:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[LEDFlashTimer_COMPARE_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_bReadCompareValue
;
;  DESCRIPTION:
;     Reads the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 BYTE bCompareValue (value of DR2 in the A register)
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 LEDFlashTimer_bReadCompareValue:
_LEDFlashTimer_bReadCompareValue:
 bLEDFlashTimer_ReadCompareValue:                ; this name deprecated
_bLEDFlashTimer_ReadCompareValue:                ; this name deprecated
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[LEDFlashTimer_COMPARE_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_bReadTimerSaveCV
;
;  DESCRIPTION:
;     Returns the value in the Count register (DR0), preserving the
;     value in the compare register (DR2).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;  RETURNS:   fastcall16 BYTE bCount (value of DR0 in the A register)
;  SIDE EFFECTS:
;     1) May cause an interrupt, if interrupt on Compare is enabled.
;     2) If enabled, Global interrupts are momentarily disabled.
;     3) The user module is stopped momentarily while the compare value is
;        restored.  This may cause the Count register to miss one or more
;        counts depending on the input clock speed.
;     4) The A and X registers may be modified by this or future implementations
;        of this function.  The same is true for all RAM page pointer registers in
;        the Large Memory Model.  When necessary, it is the calling function's
;        responsibility to perserve their values across calls to fastcall16 
;        functions.
;
;  THEORY of OPERATION:
;     1) Read and save the Compare register.
;     2) Read the Count register, causing its data to be latched into
;        the Compare register.
;     3) Read and save the Counter value, now in the Compare register,
;        to the buffer.
;     4) Disable global interrupts
;     5) Halt the timer
;     6) Restore the Compare register values
;     7) Start the Timer again
;     8) Restore global interrupt state
;
 LEDFlashTimer_bReadTimerSaveCV:
_LEDFlashTimer_bReadTimerSaveCV:
 bLEDFlashTimer_ReadTimerSaveCV:                 ; this name deprecated
_bLEDFlashTimer_ReadTimerSaveCV:                 ; this name deprecated
 bLEDFlashTimer_ReadCounter:                     ; this name deprecated
_bLEDFlashTimer_ReadCounter:                     ; this name deprecated

CpuFlags:      equ   0
bCount:        equ   1

   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X, SP                                   ; X <- stack frame pointer
   add   SP, 2                                   ; Reserve space for flags, count
   mov   A, reg[LEDFlashTimer_CONTROL_REG]       ; save the Control register
   push  A
   mov   A, reg[LEDFlashTimer_COMPARE_REG]       ; save the Compare register
   push  A
   mov   A, reg[LEDFlashTimer_COUNTER_REG]       ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!
   mov   A, reg[LEDFlashTimer_COMPARE_REG]       ; Now grab DR2 (DR0) and save
   mov   [X+bCount], A
   mov   A, 0                                    ; Guess the global interrupt state
   tst   reg[CPU_F], FLAG_GLOBAL_IE              ; Currently Disabled?
   jz    .SetupStatusFlag                        ;   Yes, guess was correct
   mov   A, FLAG_GLOBAL_IE                       ;    No, modify our guess
.SetupStatusFlag:                                ; and ...
   mov   [X+CpuFlags], A                         ;   StackFrame[0] <- Flag Reg image
   M8C_DisableGInt                               ; Disable interrupts globally
   LEDFlashTimer_Stop_M                          ; Stop the timer
   pop   A                                       ; Restore the Compare register
   mov   reg[LEDFlashTimer_COMPARE_REG], A
   pop   A                                       ; restore start state of the timer
   mov   reg[LEDFlashTimer_CONTROL_REG], A
   pop   A                                       ; Return result stored in stack frame
   RAM_EPILOGUE RAM_USE_CLASS_2
   reti                                          ; Flag Reg <- StackFrame[0]

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: LEDFlashTimer_bReadTimer
;
;  DESCRIPTION:
;     Performs a software capture of the Count register.  A synchronous
;     read of the Count register is performed.  The timer is NOT stopped.
;
;     WARNING - this will cause loss of data in the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 BYTE bCount, (value of DR0 in the A register)
;  SIDE EFFECTS:
;    May cause an interrupt.
;
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
;  THEORY of OPERATION:
;     1) Read the Count register - this causes the count value to be
;        latched into the Compare register.
;     2) Read and return the Count register values from the Compare
;        registers into the return buffer.
;
 LEDFlashTimer_bReadTimer:
_LEDFlashTimer_bReadTimer:
 bLEDFlashTimer_ReadTimer:                       ; this name deprecated
_bLEDFlashTimer_ReadTimer:                       ; this name deprecated
 bLEDFlashTimer_CaptureCounter:                  ; this name deprecated
_bLEDFlashTimer_CaptureCounter:                  ; this name deprecated

   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[LEDFlashTimer_COUNTER_REG]       ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!
   mov   A, reg[LEDFlashTimer_COMPARE_REG]       ; Return DR2 (actually DR0)
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION

; End of File LEDFlashTimer.asm
