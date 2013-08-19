//*****************************************************************************
//*****************************************************************************
//  FILENAME: TX.h
//   Version: 3.50, Updated on 2012/9/21 at 11:59:46
//  Generated by PSoC Designer 5.3.2710
//
//  DESCRIPTION: TX8 User Module C Language interface file.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress Semiconductor 2012. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef TX_INCLUDE
#define TX_INCLUDE

#include <m8c.h>

/* Create pragmas to support proper argument and return value passing */
#pragma fastcall16  TX_SetTxIntMode
#pragma fastcall16  TX_EnableInt
#pragma fastcall16  TX_DisableInt
#pragma fastcall16  TX_Start
#pragma fastcall16  TX_Stop
#pragma fastcall16  TX_SendData
#pragma fastcall16  TX_bReadTxStatus

// High level TX functions
#pragma fastcall16  TX_PutSHexByte
#pragma fastcall16  TX_PutSHexInt
#pragma fastcall16  TX_CPutString
#pragma fastcall16  TX_PutString
#pragma fastcall16  TX_PutChar
#pragma fastcall16  TX_Write
#pragma fastcall16  TX_CWrite
#pragma fastcall16  TX_PutCRLF

//-------------------------------------------------
// Prototypes of the TX API.
//-------------------------------------------------
extern void  TX_SetTxIntMode(BYTE bTxIntMode);
extern void  TX_EnableInt(void);
extern void  TX_DisableInt(void);
extern void  TX_Start(BYTE bParity);
extern void  TX_Stop(void);
extern void  TX_SendData(BYTE bTxData);
extern BYTE  TX_bReadTxStatus(void);

// High level TX functions
extern void   TX_CPutString(const char * szRomString);
extern void   TX_PutString(char * szRamString);
extern void   TX_PutChar(CHAR cData);
extern void   TX_Write(char * szRamString, BYTE bCount);
extern void   TX_CWrite(const char * szRomString, INT iCount);
extern void   TX_PutSHexByte(BYTE bValue);
extern void   TX_PutSHexInt(INT iValue);
extern void   TX_PutCRLF(void);

// Old style function name, Do Not Use.
// Will be removfr in a future release
#pragma fastcall16 bTX_ReadTxStatus
extern BYTE bTX_ReadTxStatus(void);

//------------------------------------
//  Transmitter Parity masks
//------------------------------------
#define  TX_PARITY_NONE         0x00
#define  TX_PARITY_EVEN         0x02
#define  TX_PARITY_ODD          0x06

//------------------------------------
//  Transmitter Status Register masks
//------------------------------------
#define  TX_TX_COMPLETE         0x20
#define  TX_TX_BUFFER_EMPTY     0x10

#define TX_INT_MODE_TX_REG_EMPTY 0x00
#define TX_INT_MODE_TX_COMPLETE  0x01

//------------------------------------
// Transmitter Interrupt masks
//------------------------------------
#define TX_INT_REG_ADDR                        ( 0x0e1 )
#define TX_bINT_MASK                           ( 0x04 )

// Old style defines, do not use.  These
// will be removed in a future release.
#define  TX8_PARITY_NONE         0x00
#define  TX8_PARITY_EVEN         0x02
#define  TX8_PARITY_ODD          0x06
#define  TX8_TX_COMPLETE         0x20
#define  TX8_TX_BUFFER_EMPTY     0x10



//-------------------------------------------------
// Register Addresses for TX
//-------------------------------------------------
#pragma ioport  TX_CONTROL_REG: 0x02b                      // Control register
BYTE            TX_CONTROL_REG;
#pragma ioport  TX_TX_SHIFT_REG:    0x028                  // TX Shift Register register
BYTE            TX_TX_SHIFT_REG;
#pragma ioport  TX_TX_BUFFER_REG:   0x029                  // TX Buffer Register
BYTE            TX_TX_BUFFER_REG;
#pragma ioport  TX_FUNC_REG:    0x128                      // Function register
BYTE            TX_FUNC_REG;
#pragma ioport  TX_INPUT_REG:   0x129                      // Input register
BYTE            TX_INPUT_REG;
#pragma ioport  TX_OUTPUT_REG:  0x12a                      // Output register
BYTE            TX_OUTPUT_REG;

#endif
// end of file TX.h
