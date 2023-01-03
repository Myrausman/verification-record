.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  li x27, 0x0
                  csrw 0x304, x27 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xa68b93ea
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xd
                  li x5, 0x80000000
                  li x6, 0xf177f4c8
                  li x7, 0x51d42d84
                  li x8, 0xff43bed4
                  li x9, 0xf
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0x7
                  li x13, 0xfef11751
                  li x14, 0xbe8ec990
                  li x15, 0x0
                  li x16, 0xf3ddc7eb
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0x1cf1072a
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0xf8b7aa55
                  li x24, 0x94d6ae72
                  li x25, 0x0
                  li x27, 0xfaac0843
                  li x28, 0x6344e4cb
                  li x29, 0xd
                  li x31, 0xf76c6c15
                  la x26, user_stack_end
main:             xori        zero, s4, -1419
                  or          gp, s0, s9
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         t3, 0x0
                  li         s8, 0x0
                  li         s11, 0x1
                  li         t2, 0x1
                  li         s6, 0x1
                  li         s7, 0x0
                  li         a4, 0x0
                  li         s3, 0x0
                  li         a0, 0x0
                  nop
                  nop
                  add         zero, t6, a5
                  addi        a2, s1, -75
                  nop
                  add         s6, t2, a7
                  nop
                  sub         zero, s0, s3
                  add         s8, zero, a4
                  nop
                  lui         s5, 804006
                  lui         s5, 182567
                  addi        s0, a3, -1686
                  nop
                  sub         tp, a5, t4
                  sub         a5, a4, gp
                  lui         gp, 471092
                  addi        s9, t6, 750
                  addi        tp, s11, -1810
                  sub         a2, zero, tp #end riscv_int_numeric_corner_stream_0
                  nop
                  nop
                  slti        a7, a2, 1132
                  auipc       t2, 348366
                  lui         sp, 596126
                  lui         t0, 1004773
                  xori        a4, s0, 1715
                  sll         s3, s4, a4
                  andi        s8, gp, -1825
                  sll         t2, s4, a2
                  sra         a2, a2, t0
                  sll         tp, s6, s1
                  or          zero, a0, a7
                  xor         t0, t0, s6
                  sub         gp, t5, a3
                  add         s5, s9, s3
                  sltu        s8, s7, a5
                  sll         t1, t2, zero
                  slt         s0, a6, t5
                  xori        a1, s1, 1847
                  and         zero, a4, s11
                  slli        s5, a2, 17
                  sltu        s9, t0, tp
                  auipc       s6, 224436
                  add         s1, s8, s5
                  xori        zero, a1, -987
                  xori        a3, s10, 92
                  srai        s2, t0, 2
                  srli        a0, t5, 7
                  and         a7, s11, s10
                  addi        s4, s2, -740
                  xori        a4, s4, -1890
                  auipc       zero, 312255
                  lui         zero, 1015366
                  xori        s3, a2, -737
                  lui         zero, 97138
                  sltiu       s7, s11, 1113
                  add         s4, a1, s7
                  slt         s9, s8, ra
                  ori         a0, t0, -652
                  add         a4, tp, a4
                  slt         s7, zero, s10
                  sll         zero, t0, zero
                  ori         s6, t5, 1938
                  sltu        s3, s2, gp
                  srai        s5, a0, 24
                  or          s0, t3, s0
                  ori         zero, t5, -549
                  sra         tp, a7, zero
                  auipc       s5, 961375
                  sra         sp, a0, s1
                  sra         a3, t1, s7
                  addi        s1, t3, 1838
                  slti        s9, s6, 1684
                  srl         s2, t3, t4
                  lui         gp, 692440
                  lui         zero, 629131
                  sltiu       t0, s5, -1252
                  and         zero, s6, s7
                  xori        s6, s10, -1367
                  ori         a4, sp, -662
                  sltu        a1, a6, a3
                  add         ra, gp, s0
                  xori        s7, s7, -549
                  srai        s11, t6, 10
                  sub         tp, a3, a2
                  slt         a4, a7, a6
                  nop
                  slli        a0, gp, 15
                  slli        s5, s8, 1
                  xori        gp, s6, 953
                  slt         t2, a5, s10
                  xor         s1, a4, a4
                  ori         gp, a2, -1414
                  and         t0, gp, s3
                  sltiu       s7, t2, -631
                  xori        ra, t2, 1471
                  srl         s3, a5, a3
                  sub         s3, s1, t6
                  srl         a2, t6, a7
                  srai        s4, t0, 10
                  slli        t2, s5, 7
                  nop
                  slt         s5, gp, zero
                  add         s8, s0, a2
                  srli        a0, a4, 20
                  sub         zero, t0, a2
                  srli        zero, a3, 23
                  la x31, test_done
                  jalr x0, x31, 0
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
                  add x26, x30, zero
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
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x6, 0xb # ECALL_MMODE
                  beq x27, x6, ecall_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
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
                  add x30, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
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
                  add x30, x26, zero
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
