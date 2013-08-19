;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: BaudClock.asm
;;   Version: 2.60, Updated on 2012/9/21 at 11:59:18
;;  Generated by PSoC Designer 5.3.2710
;;
;;  DESCRIPTION: PWM8 User Module software implementation file
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
include "BaudClock.inc"
include "memory.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  BaudClock_EnableInt
export _BaudClock_EnableInt
export  BaudClock_DisableInt
export _BaudClock_DisableInt
export  BaudClock_Start
export _BaudClock_Start
export  BaudClock_Stop
export _BaudClock_Stop
export  BaudClock_WritePeriod
export _BaudClock_WritePeriod
export  BaudClock_WritePulseWidth
export _BaudClock_WritePulseWidth
export  BaudClock_bReadPulseWidth
export _BaudClock_bReadPulseWidth
export  BaudClock_bReadCounter
export _BaudClock_bReadCounter

; The following functions are deprecated and subject to omission in future releases
;
export  bBaudClock_ReadPulseWidth    ; deprecated
export _bBaudClock_ReadPulseWidth    ; deprecated
export  bBaudClock_ReadCounter       ; deprecated
export _bBaudClock_ReadCounter       ; deprecated


AREA lab5b_RAM (RAM,REL)

;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------

INPUT_REG_NULL:                equ 0x00    ; Clear the input register


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------


AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_EnableInt
;
;  DESCRIPTION:
;     Enables this PWM's interrupt by setting the interrupt enable mask bit
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
 BaudClock_EnableInt:
_BaudClock_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   BaudClock_EnableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_DisableInt
;
;  DESCRIPTION:
;     Disables this PWM's interrupt by clearing the interrupt enable
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
 BaudClock_DisableInt:
_BaudClock_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   BaudClock_DisableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_Start
;
;  DESCRIPTION:
;     Sets the start bit in the Control register of this user module.  The
;     PWM will begin counting on the next input clock as soon as the
;     enable input is asserted high.
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
 BaudClock_Start:
_BaudClock_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   BaudClock_Start_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_Stop
;
;  DESCRIPTION:
;     Disables PWM operation by clearing the start bit in the Control
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
 BaudClock_Stop:
_BaudClock_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   BaudClock_Stop_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_WritePeriod
;
;  DESCRIPTION:
;     Write the 8-bit period value into the Period register (DR1).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: fastcall16 BYTE bPeriodValue (passed in A)
;  RETURNS:   Nothing
;  SIDE EFFECTS:
;    If the PWM user module is stopped, then this value will also be
;    latched into the Count register (DR0).
;    
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 BaudClock_WritePeriod:
_BaudClock_WritePeriod:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[BaudClock_PERIOD_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_WritePulseWidth
;
;  DESCRIPTION:
;     Writes compare value into the Compare register (DR2).
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
 BaudClock_WritePulseWidth:
_BaudClock_WritePulseWidth:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[BaudClock_COMPARE_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_bReadPulseWidth
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
 BaudClock_bReadPulseWidth:
_BaudClock_bReadPulseWidth:
 bBaudClock_ReadPulseWidth:                      ; this name deprecated
_bBaudClock_ReadPulseWidth:                      ; this name deprecated
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[BaudClock_COMPARE_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: BaudClock_bReadCounter
;
;  DESCRIPTION:
;     Returns the value in the Count register (DR0), preserving the value in
;     the compare register (DR2). Interrupts are prevented during the transfer
;     from the Count to the Compare registers by holding the clock low in
;     the PSoC block.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;  RETURNS:   fastcall16 BYTE bCount (value of DR0 in the A register)
;  SIDE EFFECTS:
;     1) The user module is stopped momentarily and one or more counts may be missed.
;     2) The A and X registers may be modified by this or future implementations
;        of this function.  The same is true for all RAM page pointer registers in
;        the Large Memory Model.  When necessary, it is the calling function's
;        responsibility to perserve their values across calls to fastcall16 
;        functions.
;
 BaudClock_bReadCounter:
_BaudClock_bReadCounter:
 bBaudClock_ReadCounter:                         ; this name deprecated
_bBaudClock_ReadCounter:                         ; this name deprecated

   bOrigCompareValue:      EQU   0               ; Frame offset to temp Compare store
   bOrigClockSetting:      EQU   1               ; Frame offset to temp Input   store
   wCounter:               EQU   2               ; Frame offset to temp Count   store
   STACK_FRAME_SIZE:       EQU   3               ; max stack frame size is 3 bytes

   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X, SP                                   ; X <- stack frame pointer
   mov   A, reg[BaudClock_COMPARE_REG]           ; Save the Compare register on the stack
   push  A                                       ;
   BaudClock_Stop_M                              ; Disable (stop) the PWM
   M8C_SetBank1                                  ;
   mov   A, reg[BaudClock_INPUT_REG]             ; save the clock input setting
   push  A                                       ;   on the stack (now 2 bytes) and ...
                                                 ;   hold the clock low:
   mov   reg[BaudClock_INPUT_REG], INPUT_REG_NULL
   M8C_SetBank0
                                                 ; Extract the Count via DR2 register
   mov   A, reg[BaudClock_COUNTER_REG]           ; DR2 <- DR0
   mov   A, reg[BaudClock_COMPARE_REG]           ; Stash the Count on the stack
   push  A                                       ;  -stack frame is now 3 bytes
   mov   A, [X+bOrigCompareValue]                ; Restore the Compare register
   mov   reg[BaudClock_COMPARE_REG], A
   M8C_SetBank1                                  ; Restore the PWM operation:
   mov   A, [X+bOrigClockSetting]                ;   First, the clock setting...
   mov   reg[BaudClock_INPUT_REG], A             ;
   M8C_SetBank0                                  ;
   BaudClock_Start_M                             ;   then re-enable the PWM.
   pop   A                                       ; Setup the return value
   ADD   SP, -(STACK_FRAME_SIZE-1)               ; Zap remainder of stack frame
   RAM_EPILOGUE RAM_USE_CLASS_2
   ret

.ENDSECTION

; End of File BaudClock.asm
