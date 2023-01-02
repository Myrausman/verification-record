.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x30, h0_start
jalr x0, x30, 0
h0_start:
                  li x31, 0x40000100
                  csrw 0x301, x31
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

init_machine_mode:
                  li x31, 0x1a00
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xb
                  li x2, 0x80000000
                  li x3, 0x5
                  li x4, 0xfe312057
                  li x5, 0x7
                  li x6, 0xfd028fad
                  li x7, 0xf3b57ebe
                  li x8, 0x0
                  li x9, 0xd143e910
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xf51e87e3
                  li x16, 0xf40739bf
                  li x17, 0x80000000
                  li x18, 0xf3669a6b
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x6
                  li x25, 0xf3310dd6
                  li x27, 0xb
                  li x28, 0xae248aae
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x26, user_stack_end
main:             sltu        a1, a5, s10
                  slt         t0, a0, t3
                  sra         s4, s7, a4
                  xori        a0, s7, -1022
                  srai        s0, t3, 24
                  srl         zero, t0, s10
                  sltu        s3, t5, s11
                  srli        a4, t3, 19
                  sub         s8, s1, t0
                  and         zero, s0, s6
                  srai        t1, t0, 19
                  or          a3, s11, a7
                  sub         a2, s3, t1
                  lui         t2, 193645
                  srai        t6, t3, 24
                  addi        zero, t3, 415
                  sltiu       a7, s0, 654
                  nop
                  and         s11, t1, ra
                  sltu        t3, zero, tp
                  lui         zero, 720600
                  lui         zero, 763173
                  xori        s2, a7, 787
                  xori        s8, a3, -1181
                  andi        s2, s1, -1657
                  xori        zero, a6, 471
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         a2, 0x2f3e1b3b
                  li         s4, 0x0
                  li         a3, 0x0
                  li         a5, 0x0
                  li         t6, 0x6a41a86f
                  li         s1, 0x0
                  li         tp, 0x0
                  li         s7, 0x0
                  li         a4, 0x0
                  lui         s4, 371237
                  add         t2, a7, a2
                  nop
                  lui         t0, 406545
                  lui         t3, 28180
                  lui         a6, 231701
                  nop
                  sub         s1, s5, a6
                  add         sp, a1, s7
                  add         a6, sp, s5
                  lui         zero, 91103
                  add         a1, a6, s4
                  addi        s7, s5, 1909
                  add         s11, a1, t1
                  addi        s2, gp, -101
                  add         zero, a2, a6
                  sub         s1, t4, t2 #end riscv_int_numeric_corner_stream_0
                  sltu        t3, t4, s0
                  sll         a5, t0, sp
                  sll         zero, t3, s8
                  slli        zero, a5, 3
                  slti        s8, t1, 270
                  ori         zero, a7, 1224
                  xori        ra, s0, 274
                  auipc       t6, 739352
                  slt         a6, zero, s7
                  sub         a6, t3, s1
                  slti        s1, s10, 549
                  auipc       tp, 477986
                  ori         s9, sp, 770
                  sll         tp, s6, a7
                  slt         tp, s7, a6
                  sltiu       a6, s1, -69
                  sltu        a3, t3, s5
                  and         s3, a4, t0
                  slt         a0, ra, s3
                  or          a3, s5, s2
                  srl         zero, ra, a7
                  srl         a3, a3, t6
                  slli        zero, s4, 11
                  slli        t2, s9, 25
                  xor         sp, s3, t3
                  slti        s9, t4, -1758
                  and         t2, a4, a0
                  and         a3, t3, t1
                  sltu        a2, s9, t3
                  addi        s0, s8, 1047
                  and         s11, s3, s11
                  sra         zero, s10, a2
                  auipc       ra, 445753
                  slti        a2, ra, -1501
                  slti        s0, s3, -2016
                  auipc       s8, 496505
                  sll         a4, a1, s0
                  auipc       s8, 594456
                  auipc       a4, 828853
                  slti        s11, s7, 1205
                  lui         s3, 659862
                  andi        t3, sp, -161
                  lui         t6, 112733
                  srai        a1, s1, 5
                  nop
                  add         s7, s2, gp
                  nop
                  add         zero, t1, a3
                  lui         tp, 867079
                  slti        a4, s5, -1037
                  srai        s8, s1, 11
                  srli        t0, zero, 18
                  or          a7, s7, t4
                  nop
                  sltiu       sp, a6, -243
                  xor         tp, t4, a2
                  andi        s4, s4, 2018
                  slt         s6, t2, a4
                  add         a7, s8, t2
                  sub         s4, a7, t5
                  xor         gp, s11, t3
                  auipc       a6, 30792
                  nop
                  xori        s9, a5, 591
                  la x30, test_done
                  jalr x0, x30, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x26, 0x340, x26
                  add x26, x29, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x8, 0xb # ECALL_MMODE
                  beq x31, x8, ecall_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x30, test_done
                  jalr x1, x30, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  la x30, write_tohost
                  jalr x0, x30, 0

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x29, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x29, x26, zero
                  csrrw x26, 0x340, x26
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
