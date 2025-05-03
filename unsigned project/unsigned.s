.global main

.align 4
.section .rodata

prompt:          .asciz "Enter three unsigned integers (separated by a space): "
scan_str:        .asciz "%u %u %u"

output_str:      .asciz "You entered %u, %u, and %u.\n"

add_3:           .asciz "%u + %u + %u"
sum_result:      .asciz " = %u\n"

dif_3:           .asciz "%u - %u - %u"
dif_result:      .asciz " = %u\n"

prod_3:          .asciz "%u * %u * %u"
prod_result:     .asciz " = %u\n"

.align 4
.section .data

inp1:  .word  0
inp2:  .word  0
inp3:  .word  0
sum:   .word  0

.align 4
.text
main:

        push {lr}

        ldr r4, =inp1
        ldr r5, =inp2
        ldr r6, =inp3

        ldr r0, =prompt
        bl printf

        ldr r0, =scan_str
        ldr r1, =inp1
        ldr r2, =inp2
        ldr r3, =inp3
        bl scanf

        ldr r0, =output_str
        ldr r1, [r4]
        ldr r2, [r5]
        ldr r3, [r6]
        bl printf

        ldr r0, =inp1
        ldr r1, =inp2
        ldr r2, =inp3
        ldr r4, [r0]
        ldr r5, [r1]
        ldr r6, [r2]

        adds r7, r4, r5
        mov r8, r7
        adds r9, r8, r6

        ldr r0, =add_3
        mov r1, r4
        mov r2, r5
        mov r3, r6
        bl printf

        ldr r0, =sum_result
        mov r1, r9
        bl printf

        subs r7, r4, r5
        mov r8, r7
        subs r9, r8, r6

        ldr r0, =dif_3
        mov r1, r4
        mov r2, r5
        mov r3, r6
        bl printf

        ldr r0, =dif_result
        mov r1, r9
        bl printf

        muls r7, r4, r5
        mov r8, r7
        muls r9, r8, r6

        ldr r0, =prod_3
        mov r1, r4
        mov r2, r5
        mov r3, r6
        bl printf

        ldr r0, =prod_result
        mov r1, r9
        bl printf

        mov r0, #0
        pop {pc}
