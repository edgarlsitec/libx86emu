[init mode=real]

gdt.base=0x2000
gdt[0x00]=0
gdt[0x08]=descr(base=0x1000,limit=0x8fff,acc=0x9b)
gdt[0x10]=descr(base=0x3000,limit=0xa0000fff,acc=0xc93)
gdt[0x18]=descr(base=0,limit=0x99,acc=0x013)

eax=1
ebx=0x10
ecx=0x18

[code start=8:0 bits=16]

	mov cr0,eax

	mov es,bx
	mov dword [es:0x50],0x12345678
	mov fs,cx
	nop
