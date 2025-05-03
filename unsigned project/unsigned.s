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


