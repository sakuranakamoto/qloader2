OUTPUT_FORMAT(binary)
ENTRY(main)

SECTIONS
{
	. = 0x8000;

    .text : {
        bootsect_begin = .;
        KEEP(*(.entry*))
        KEEP(*(.text*))
    }

    .data : {
        KEEP(*(.data*))
        KEEP(*(.bss*))
        . += 7168 - (. - bootsect_begin);
    }

}
