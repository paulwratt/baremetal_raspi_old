OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
	. = 0x8000;
	.text : { *(.text*) }
	. = ALIGN(4096);
	__rodata_start = .;
	.rodata : { *(.rodata*) }
	. = ALIGN(4096);
	__rodata_end = .;
	__data_start = .;
	.data : { *(.data*) }
	. = ALIGN(4096);
	__data_end = .;
	__bss_start = .;
	.bss : { *(.bss*) }
	. = ALIGN(4096);
	__bss_end = .;
}
