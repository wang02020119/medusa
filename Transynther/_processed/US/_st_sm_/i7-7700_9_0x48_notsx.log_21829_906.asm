.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0xeb6b, %rsi
lea addresses_WT+0x19ccb, %rdi
nop
nop
nop
nop
dec %r13
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0xdf0b, %r11
sub $39157, %rbp
movw $0x5152, (%r11)
nop
nop
sub $11871, %r11

// Store
mov $0x6d4eca000000080b, %r11
clflush (%r11)
nop
nop
and $31321, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r11)
nop
xor %rdi, %rdi

// Store
lea addresses_US+0x1e40b, %r11
nop
nop
inc %rcx
movw $0x5152, (%r11)
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0x1e40b, %r8
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %ebp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/