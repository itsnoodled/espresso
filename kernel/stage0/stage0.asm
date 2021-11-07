%define MB2MAGIC  0xE85250D6
%define ALIGN     1 << 0      ; align bootstrapping code to page bounds
%define MEMINFO   1 << 1      ; mem map
%define FLAGS     ALIGN | MEMINFO
%define CHECKSUM  -(MB2MAGIC, FLAGS)
global __start

section .bss

align 16
stackB:
resb 16384
stackT:

section .mb2

MB2H_ST:
align 4
dd MAGIC
dd FLAGS
dd CHECKSUM
dd 0
dd 0
dw 8
MB2H_EN:

section .text
