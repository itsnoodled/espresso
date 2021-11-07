ENTRY("__start")

SECTIONS {
. = 1M;
/* mb2 header & .text section */
.text BLOCK(4K) : ALIGN(4K) {
		*(.mb2)
		*(.text)
	}
	/* ro data */
	.rodata BLOCK(4K) : ALIGN(4K) {
		*(.rodata)
	}
	/* initialized data */
	.data BLOCK(4K) : ALIGN(4K) {
		*(.data)
	}
	/* stack and uninitialized data */
	.bss BLOCK(4K) : ALIGN(4K) {
	*(COMMON)
	*(.data)
	}
}
