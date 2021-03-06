///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR C/C++ Compiler V1.30.1.50036 for STM8            24/Jan/2015  12:33:13 /
// Copyright 2010-2011 IAR Systems AB.                                        /
//                                                                            /
//    Source file  =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_exti.c                        /
//    Command line =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Libraries\STM8S_S /
//                    tdPeriph_Driver\src\stm8s_exti.c -e -Ol --no_cse        /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_cross_call --debug --code_model medium             /
//                    --data_model medium -o D:\Project\STM8S_StdPeriph_Lib_V /
//                    2.1.0\Project\STM8S_StdPeriph_Template\EWSTM8\STM8S208\ /
//                    Obj\ --dlib_config "C:\Program Files\IAR                /
//                    Systems\Embedded Workbench 6.0\stm8\LIB\dlstm8mmn.h"    /
//                    -D USE_STM8_128_EVAL -D STM8S003 -lC                    /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\ -lb               /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\ -I                /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\ -I                           /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\..\..\Libraries\STM8S_StdPeri /
//                    ph_Driver\inc\ -I D:\Project\STM8S_StdPeriph_Lib_V2.1.0 /
//                    \Project\STM8S_StdPeriph_Template\EWSTM8\..\..\..\Utili /
//                    ties\STM8S_EVAL\ -I D:\Project\STM8S_StdPeriph_Lib_V2.1 /
//                    .0\Project\STM8S_StdPeriph_Template\EWSTM8\..\..\..\Uti /
//                    lities\STM8S_EVAL\STM8S-128_EVAL\ -I                    /
//                    D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\..\..\..\Utilities\STM8S_EVAL\Co /
//                    mmon\ --vregs 16                                        /
//    List file    =  D:\Project\STM8S_StdPeriph_Lib_V2.1.0\Project\STM8S_Std /
//                    Periph_Template\EWSTM8\STM8S208\List\stm8s_exti.s       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm8s_exti

        EXTERN ?b0
        EXTERN ?b8
        EXTERN ?b9
        EXTERN ?epilogue_w4
        EXTERN ?push_w4
        EXTERN ?sll8_a_a_6
        EXTERN ?srl8_a_a_6
        EXTERN ?w0
        EXTERN ?w1
        EXTERN assert_failed

        PUBLIC EXTI_DeInit
        PUBLIC EXTI_GetExtIntSensitivity
        PUBLIC EXTI_GetTLISensitivity
        PUBLIC EXTI_SetExtIntSensitivity
        PUBLIC EXTI_SetTLISensitivity


        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_DeInit:
        MOV       L:0x50a0, #0x0
        MOV       L:0x50a1, #0x0
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_SetExtIntSensitivity:
        CALLF     L:?push_w4
        LD        S:?b8, A
        MOV       S:?b9, S:?b0
        TNZ       S:?b8
        JREQ      L:??EXTI_SetExtIntSensitivity_0
        LD        A, S:?b8
        CP        A, #0x1
        JREQ      L:??EXTI_SetExtIntSensitivity_0
        LD        A, S:?b8
        CP        A, #0x2
        JREQ      L:??EXTI_SetExtIntSensitivity_0
        LD        A, S:?b8
        CP        A, #0x3
        JREQ      L:??EXTI_SetExtIntSensitivity_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??EXTI_SetExtIntSensitivity_0
        LDW       X, #0x44
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??EXTI_SetExtIntSensitivity_0:
        TNZ       S:?b9
        JREQ      L:??EXTI_SetExtIntSensitivity_1
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??EXTI_SetExtIntSensitivity_1
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??EXTI_SetExtIntSensitivity_1
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??EXTI_SetExtIntSensitivity_1
        LDW       X, #0x45
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??EXTI_SetExtIntSensitivity_1:
        LD        A, S:?b8
        TNZ       A
        JREQ      L:??EXTI_SetExtIntSensitivity_2
        DEC       A
        JREQ      L:??EXTI_SetExtIntSensitivity_3
        DEC       A
        JREQ      L:??EXTI_SetExtIntSensitivity_4
        DEC       A
        JREQ      L:??EXTI_SetExtIntSensitivity_5
        DEC       A
        JREQ      L:??EXTI_SetExtIntSensitivity_6
        JPF       L:?epilogue_w4
??EXTI_SetExtIntSensitivity_2:
        LD        A, L:0x50a0
        AND       A, #0xfc
        LD        L:0x50a0, A
        LD        A, S:?b9
        OR        A, L:0x50a0
        LD        L:0x50a0, A
        JPF       L:?epilogue_w4
??EXTI_SetExtIntSensitivity_3:
        LD        A, L:0x50a0
        AND       A, #0xf3
        LD        L:0x50a0, A
        LD        A, S:?b9
        SLL       A
        SLL       A
        OR        A, L:0x50a0
        LD        L:0x50a0, A
        JPF       L:?epilogue_w4
??EXTI_SetExtIntSensitivity_4:
        LD        A, L:0x50a0
        AND       A, #0xcf
        LD        L:0x50a0, A
        LD        A, S:?b9
        SWAP      A
        AND       A, #0xf0
        OR        A, L:0x50a0
        LD        L:0x50a0, A
        JPF       L:?epilogue_w4
??EXTI_SetExtIntSensitivity_5:
        LD        A, L:0x50a0
        AND       A, #0x3f
        LD        L:0x50a0, A
        LD        A, S:?b9
        CALLF     L:?sll8_a_a_6
        OR        A, L:0x50a0
        LD        L:0x50a0, A
        JPF       L:?epilogue_w4
??EXTI_SetExtIntSensitivity_6:
        LD        A, L:0x50a1
        AND       A, #0xfc
        LD        L:0x50a1, A
        LD        A, S:?b9
        OR        A, L:0x50a1
        LD        L:0x50a1, A
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_SetTLISensitivity:
        PUSH      S:?b8
        LD        S:?b8, A
        TNZ       S:?b8
        JREQ      L:??EXTI_SetTLISensitivity_0
        LD        A, S:?b8
        CP        A, #0x4
        JREQ      L:??EXTI_SetTLISensitivity_0
        LDW       X, #0x6d
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??EXTI_SetTLISensitivity_0:
        BRES      L:0x50a1, #0x2
        LD        A, S:?b8
        OR        A, L:0x50a1
        LD        L:0x50a1, A
        POP       S:?b8
        RETF

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_GetExtIntSensitivity:
        CALLF     L:?push_w4
        LD        S:?b9, A
        CLR       S:?b8
        TNZ       S:?b9
        JREQ      L:??EXTI_GetExtIntSensitivity_0
        LD        A, S:?b9
        CP        A, #0x1
        JREQ      L:??EXTI_GetExtIntSensitivity_0
        LD        A, S:?b9
        CP        A, #0x2
        JREQ      L:??EXTI_GetExtIntSensitivity_0
        LD        A, S:?b9
        CP        A, #0x3
        JREQ      L:??EXTI_GetExtIntSensitivity_0
        LD        A, S:?b9
        CP        A, #0x4
        JREQ      L:??EXTI_GetExtIntSensitivity_0
        LDW       X, #0x7e
        LDW       S:?w1, X
        CLRW      X
        LDW       S:?w0, X
        LDW       X, #`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`
        CALLF     assert_failed
??EXTI_GetExtIntSensitivity_0:
        LD        A, S:?b9
        TNZ       A
        JREQ      L:??EXTI_GetExtIntSensitivity_1
        DEC       A
        JREQ      L:??EXTI_GetExtIntSensitivity_2
        DEC       A
        JREQ      L:??EXTI_GetExtIntSensitivity_3
        DEC       A
        JREQ      L:??EXTI_GetExtIntSensitivity_4
        DEC       A
        JREQ      L:??EXTI_GetExtIntSensitivity_5
        JRA       L:??EXTI_GetExtIntSensitivity_6
??EXTI_GetExtIntSensitivity_1:
        LD        A, L:0x50a0
        AND       A, #0x3
        LD        S:?b8, A
        JRA       L:??EXTI_GetExtIntSensitivity_6
??EXTI_GetExtIntSensitivity_2:
        LD        A, L:0x50a0
        AND       A, #0xc
        SRL       A
        SRL       A
        LD        S:?b8, A
        JRA       L:??EXTI_GetExtIntSensitivity_6
??EXTI_GetExtIntSensitivity_3:
        LD        A, L:0x50a0
        AND       A, #0x30
        SWAP      A
        AND       A, #0xf
        LD        S:?b8, A
        JRA       L:??EXTI_GetExtIntSensitivity_6
??EXTI_GetExtIntSensitivity_4:
        LD        A, L:0x50a0
        CALLF     L:?srl8_a_a_6
        LD        S:?b8, A
        JRA       L:??EXTI_GetExtIntSensitivity_6
??EXTI_GetExtIntSensitivity_5:
        LD        A, L:0x50a1
        AND       A, #0x3
        LD        S:?b8, A
??EXTI_GetExtIntSensitivity_6:
        LD        A, S:?b8
        JPF       L:?epilogue_w4

        SECTION `.far_func.text`:CODE:REORDER:NOROOT(0)
        CODE
EXTI_GetTLISensitivity:
        CLR       S:?b0
        LD        A, L:0x50a1
        AND       A, #0x4
        LD        S:?b0, A
        LD        A, S:?b0
        RETF

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
`?<Constant "D:\\\\Project\\\\STM8S_StdP...">`:
        DC8 44H, 3AH, 5CH, 50H, 72H, 6FH, 6AH, 65H
        DC8 63H, 74H, 5CH, 53H, 54H, 4DH, 38H, 53H
        DC8 5FH, 53H, 74H, 64H, 50H, 65H, 72H, 69H
        DC8 70H, 68H, 5FH, 4CH, 69H, 62H, 5FH, 56H
        DC8 32H, 2EH, 31H, 2EH, 30H, 5CH, 4CH, 69H
        DC8 62H, 72H, 61H, 72H, 69H, 65H, 73H, 5CH
        DC8 53H, 54H, 4DH, 38H, 53H, 5FH, 53H, 74H
        DC8 64H, 50H, 65H, 72H, 69H, 70H, 68H, 5FH
        DC8 44H, 72H, 69H, 76H, 65H, 72H, 5CH, 73H
        DC8 72H, 63H, 5CH, 73H, 74H, 6DH, 38H, 73H
        DC8 5FH, 65H, 78H, 74H, 69H, 2EH, 63H, 0

        END
// 
// 412 bytes in section .far_func.text
//  88 bytes in section .near.rodata
// 
// 412 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
