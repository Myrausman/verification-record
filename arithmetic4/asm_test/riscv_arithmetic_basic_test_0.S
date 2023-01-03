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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 1
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

init_machine_mode:
                  li x28, 0x1e00
                  csrw 0x300, x28 # MSTATUS
                  li x28, 0x0
                  csrw 0x304, x28 # MIE
                  mret
init:             
                  li x0, 0xf843afdd
                  li x1, 0x0
                  li x2, 0x80000000
                  li x3, 0x5
                  li x4, 0xfe0c98b1
                  li x5, 0xf7cfb64d
                  li x6, 0x7b0f3756
                  li x7, 0x80000000
                  li x8, 0xda468af9
                  li x9, 0x0
                  li x10, 0xf6956724
                  li x11, 0x80000000
                  li x12, 0xca41c58f
                  li x13, 0xc7f1b78c
                  li x14, 0xb
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xa74c5196
                  li x18, 0x4920e25b
                  li x19, 0xffc22a36
                  li x20, 0xfb0a497e
                  li x21, 0xf9a81420
                  li x22, 0x7c818f25
                  li x23, 0xb
                  li x24, 0x4
                  li x25, 0x0
                  li x26, 0x259540e2
                  li x28, 0x7726a18d
                  li x29, 0x8
                  li x31, 0xfdfbb3e4
                  la x27, user_stack_end
main:             srl         s5, t2, a3
                  sra         s8, s2, s2
                  sra         a6, a5, gp
                  slli        zero, a3, 5
                  slti        t1, t4, 449
                  slt         s5, t1, t6
                  sltiu       tp, t5, -1832
                  xori        a5, s10, -1254
                  sltiu       s3, t5, -1700
                  andi        a5, a3, -620
                  li         tp, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         t4, 0x701c82de
                  li         t3, 0x21c66566
                  li         s10, 0x0
                  li         s9, 0x0
                  li         a3, 0x0
                  li         s7, 0x0
                  li         s1, 0x1
                  li         s5, 0x0
                  li         a7, 0x1
                  add         a3, s4, s3
                  add         s6, a0, s2
                  addi        a1, gp, 1341
                  add         s10, s0, t1
                  nop
                  add         s6, t3, gp
                  lui         s9, 231027
                  nop
                  sub         s6, t1, a6
                  add         s5, a4, a2
                  addi        s0, s3, -1832
                  addi        zero, t3, -437
                  sub         s0, t4, s5
                  add         s7, s1, t2
                  add         s5, gp, t2
                  sub         t0, t6, s6
                  nop
                  lui         a6, 678854
                  addi        s0, t3, 1023
                  nop
                  sub         s4, s4, gp
                  addi        a3, a1, -1039
                  lui         s7, 633920
                  addi        sp, s0, 952
                  addi        s0, gp, -1328
                  addi        t3, zero, 1958
                  addi        a1, s7, 1755
                  addi        a4, a6, 1110
                  addi        s10, s3, -1500 #end riscv_int_numeric_corner_stream_0
                  add         a0, a4, a0
                  xori        s8, s5, -108
                  sll         s6, a6, t2
                  sub         s9, s6, zero
                  or          s0, s11, a4
                  sltu        a6, a5, s5
                  andi        tp, s6, 1150
                  srai        gp, t4, 23
                  lui         s3, 987872
                  slli        a5, s8, 31
                  srl         zero, a3, s8
                  xori        s5, a6, 376
                  addi        a6, s11, -1482
                  sub         zero, s2, t4
                  srai        t0, a1, 2
                  or          s2, sp, s7
                  and         a7, a3, a2
                  addi        a5, gp, 334
                  and         zero, t0, s11
                  nop
                  and         zero, t2, s1
                  slti        ra, s4, 1016
                  add         a5, t0, a0
                  sltu        tp, s0, s10
                  srai        a4, a2, 13
                  srl         s8, gp, t1
                  addi        zero, s6, 1743
                  sll         t1, a6, a7
                  nop
                  lui         s4, 441710
                  srl         s6, a3, a2
                  sll         a6, t6, s11
                  srl         s5, s9, t4
                  sltu        a4, s5, a7
                  srl         s0, s9, t2
                  andi        s6, s4, 578
                  add         t0, t4, gp
                  ori         sp, a7, 683
                  slti        a4, zero, -1871
                  slti        t1, s4, 1890
                  slti        s2, a3, 68
                  sra         s10, t1, zero
                  sra         s9, sp, s1
                  auipc       a5, 206718
                  nop
                  srli        t4, a2, 18
                  slt         s5, a2, t1
                  xor         zero, a5, a3
                  lui         zero, 533028
                  xor         s0, sp, s7
                  andi        t0, s3, 1492
                  slti        t1, tp, 387
                  and         s1, s0, s6
                  ori         a2, a4, -812
                  and         s9, s5, t1
                  and         a7, t0, a2
                  xori        s8, a1, 876
                  xori        a3, a4, -592
                  srl         s7, s1, t4
                  ori         s2, s4, -654
                  sra         s1, t6, a4
                  xor         s10, t5, s9
                  sra         s6, s8, s5
                  sll         a2, t5, s5
                  slti        s5, s9, -1433
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
mmode_intr_vector_1:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 0x1f
                  beqz x28, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  csrrw x27, 0x340, x27
                  add x27, x30, zero
                  1: addi x27, x27, -124
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
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x2, 0xb # ECALL_MMODE
                  beq x28, x2, ecall_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  lw x1, 4(x27)
                  lw x2, 8(x27)
                  lw x3, 12(x27)
                  lw x4, 16(x27)
                  lw x5, 20(x27)
                  lw x6, 24(x27)
                  lw x7, 28(x27)
                  lw x8, 32(x27)
                  lw x9, 36(x27)
                  lw x10, 40(x27)
                  lw x11, 44(x27)
                  lw x12, 48(x27)
                  lw x13, 52(x27)
                  lw x14, 56(x27)
                  lw x15, 60(x27)
                  lw x16, 64(x27)
                  lw x17, 68(x27)
                  lw x18, 72(x27)
                  lw x19, 76(x27)
                  lw x20, 80(x27)
                  lw x21, 84(x27)
                  lw x22, 88(x27)
                  lw x23, 92(x27)
                  lw x24, 96(x27)
                  lw x25, 100(x27)
                  lw x26, 104(x27)
                  lw x27, 108(x27)
                  lw x28, 112(x27)
                  lw x29, 116(x27)
                  lw x30, 120(x27)
                  lw x31, 124(x27)
                  addi x27, x27, 124
                  add x30, x27, zero
                  csrrw x27, 0x340, x27
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  lw x1, 4(x27)
                  lw x2, 8(x27)
                  lw x3, 12(x27)
                  lw x4, 16(x27)
                  lw x5, 20(x27)
                  lw x6, 24(x27)
                  lw x7, 28(x27)
                  lw x8, 32(x27)
                  lw x9, 36(x27)
                  lw x10, 40(x27)
                  lw x11, 44(x27)
                  lw x12, 48(x27)
                  lw x13, 52(x27)
                  lw x14, 56(x27)
                  lw x15, 60(x27)
                  lw x16, 64(x27)
                  lw x17, 68(x27)
                  lw x18, 72(x27)
                  lw x19, 76(x27)
                  lw x20, 80(x27)
                  lw x21, 84(x27)
                  lw x22, 88(x27)
                  lw x23, 92(x27)
                  lw x24, 96(x27)
                  lw x25, 100(x27)
                  lw x26, 104(x27)
                  lw x27, 108(x27)
                  lw x28, 112(x27)
                  lw x29, 116(x27)
                  lw x30, 120(x27)
                  lw x31, 124(x27)
                  addi x27, x27, 124
                  add x30, x27, zero
                  csrrw x27, 0x340, x27
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
