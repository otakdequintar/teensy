MEMORY
{
  FLASH (rx) ORIGEN = 0x00000000, LENGTH =
  SRAM (rwx) ORIGEN = 0x20000000, LENGTH =
}

SECTIONS
{
  .text :
  {
    _text = .;
    KEEP(*(.vectors))
    *(.text*)
    *(.rodata*)
  } > FLASH

  .ARM.extab :
  {
    *(.ARM.extab* .gnu.linkonce.armextab.*)
  } > FLASH

  __exidx_start = .;
  .ARM.exidx :
  {
    *(.ARM.exidx* .gnu.linkonce.armexidx.*)
  } > FLASH
  __exidx_end = .;
  _etext = .;

  .data : AT(__etext)
  {
    _data = .;
    *(vtable)
    *(.data*)
    _edata = .;
  } > SRAM

  .bss :
  {
    . = ALIGN(4);
    _bss = .;
    *(.bss*)
    *(COMMON)
    . = ALIGN(4);
    _ebss = .;
  } > SRAM
}
