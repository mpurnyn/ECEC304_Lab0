Project:      output/LAB4a
Build Number: 0
Date:         Mon Aug 05 15:02:29 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0080 =    128. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab4a_Bank0
       01F5  LoadConfigTBL_lab4a_Bank1
       0220  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0220   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0220  __func_lit_start
       0222  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0222   0170 =    368. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0222  LoadConfigTBL_lab4a_Ordered
       0327  LoadConfigInit
       0327  _LoadConfigInit
       0337  LoadConfig_lab4a
       0337  _LoadConfig_lab4a
       0392  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0392   02D6 =    726. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0392  _LCD_PrCString
       0392  LCD_PrCString
       03A4  LCD_HEX_STR
       03B4  LCD_PrHexByte
       03B4  _LCD_PrHexByte
       03C7  LCD_PrHexInt
       03C7  _LCD_PrHexInt
       03CE  _LCD_PrString
       03CE  LCD_PrString
       03E0  LCD_Write_Data
       03E0  _LCD_Write_Data
       03E0  _LCD_WriteData
       03E0  LCD_WriteData
       03F4  _LCD_Control
       03F4  LCD_Control
       04A4  LCD_Start
       04A4  _LCD_Init
       04A4  _LCD_Start
       04A4  LCD_Init
       0513  LCD_ROW_OFFSET
       0517  _LCD_Position
       0517  LCD_Position
       0527  LCD_Delay50uTimes
       0527  _LCD_Delay50uTimes
       052D  LCD_Delay50u_Table
       0535  _LCD_Delay50u
       0535  LCD_Delay50u
       0549  _LCD_DrawBG
       057A  _LCD_DrawVBG
       05AE  _LCD_InitVBG
       05AE  LCD_InitVBG
       05DF  LCD_BG_TYPE1
       05E6  LCD_BG_TYPE2
       05ED  LCD_InitBG
       05ED  _LCD_InitBG
       0621  _DBB00_ISR
       0622  _DBB00_EnableInt
       0622  DBB00_EnableInt
       0626  _DBB00_DisableInt
       0626  DBB00_DisableInt
       062A  DBB00_Start
       062A  _DBB00_Start
       062E  _DBB00_Stop
       062E  DBB00_Stop
       0632  DBB00_WritePeriod
       0632  _DBB00_WritePeriod
       0635  DBB00_WritePulseWidth
       0635  _DBB00_WritePulseWidth
       0638  DBB00_bReadPulseWidth
       0638  _bDBB00_ReadPulseWidth
       0638  bDBB00_ReadPulseWidth
       0638  _DBB00_bReadPulseWidth
       063B  DBB00_bReadCounter
       063B  _DBB00_bReadCounter
       063B  bDBB00_ReadCounter
       063B  _bDBB00_ReadCounter
       0668  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0668   009C =    156. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0668  __text_start
       0668  _main
       0704  __xidata_start
       0704  __text_end
       070D  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   0143 =    323. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0140  _bGetPowerSetting
       0140  bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _NO_SHADOW
       0000  Port_2_Data_SHADE
       0000  NO_SHADOW
       0000  _Port_2_Data_SHADE
       0001  _Port_2_DriveMode_0_SHADE
       0001  Port_2_DriveMode_0_SHADE
       0002  _Port_2_DriveMode_1_SHADE
       0002  Port_2_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0003   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __r1
       0004  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0005  _dBounce
       0007  _pulseWidth
       0008  _prt1

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, dbb00int.asm, dbb00.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Blab4a_RAM	allocated at: 0
-rwh:SSCParmBlk:0xf7.0xff

