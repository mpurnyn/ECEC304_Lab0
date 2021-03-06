;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TachOverridePWM.inc
;;   Version: 2.5, Updated on 2012/9/21 at 11:59:18
;;  Generated by PSoC Designer 5.3.2710
;;
;;  DESCRIPTION: Assembler declarations for the PWM16 user module interface
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2012. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"


;--------------------------------------------------
; Constants for TachOverridePWM API's.
;--------------------------------------------------

TachOverridePWM_CONTROL_REG_START_BIT:     equ 0x01    ; Control register start bit
TachOverridePWM_INT_REG:                   equ 0x0e1
TachOverridePWM_INT_MASK:                  equ 0x04


;--------------------------------------------------
; Constants for TachOverridePWM user defined values
;--------------------------------------------------

TachOverridePWM_PERIOD:                    equ 0x3e8
TachOverridePWM_PULSE_WIDTH:               equ 0x14


;--------------------------------------------------
; Register Address Constants for TachOverridePWM
;--------------------------------------------------

TachOverridePWM_COUNTER_LSB_REG:       equ 0x24   ; DR0 Count register
TachOverridePWM_COUNTER_MSB_REG:       equ 0x28
TachOverridePWM_PERIOD_LSB_REG:        equ 0x25   ; DR1 Period register
TachOverridePWM_PERIOD_MSB_REG:        equ 0x29
TachOverridePWM_COMPARE_LSB_REG:       equ 0x26   ; DR2 Compare register
TachOverridePWM_COMPARE_MSB_REG:       equ 0x2a
TachOverridePWM_CONTROL_LSB_REG:       equ 0x27   ; Control register
TachOverridePWM_CONTROL_MSB_REG:       equ 0x2b
TachOverridePWM_FUNC_LSB_REG:          equ 0x24   ; Function register
TachOverridePWM_FUNC_MSB_REG:          equ 0x28
TachOverridePWM_INPUT_LSB_REG:         equ 0x25   ; Input register
TachOverridePWM_INPUT_MSB_REG:         equ 0x29
TachOverridePWM_OUTPUT_LSB_REG:        equ 0x26   ; Output register
TachOverridePWM_OUTPUT_MSB_REG:        equ 0x2a


;--------------------------------------------------
; TachOverridePWM Macro 'Functions'
;--------------------------------------------------

   macro TachOverridePWM_Start_M
   or    reg[TachOverridePWM_CONTROL_LSB_REG],  TachOverridePWM_CONTROL_REG_START_BIT
   endm

   macro TachOverridePWM_Stop_M
   and   reg[TachOverridePWM_CONTROL_LSB_REG], ~TachOverridePWM_CONTROL_REG_START_BIT
   endm

   macro TachOverridePWM_EnableInt_M
   M8C_EnableIntMask TachOverridePWM_INT_REG, TachOverridePWM_INT_MASK
   endm

   macro TachOverridePWM_DisableInt_M
   M8C_DisableIntMask TachOverridePWM_INT_REG, TachOverridePWM_INT_MASK
   endm


; end of file TachOverridePWM.inc

