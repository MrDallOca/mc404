laco:
	LOAD M(vet1) ADD  M(i)
	STA  M(opvetores,8:19) LOAD M(vet2)
	ADD  M(i) STA  M(opvetores,28:39)
	opvetores:
	  LOAD MQ,M(0x000) MUL  M(0x000)
	LOAD MQ ADD  M(acc)
	STOR M(acc) LOAD M(i)
	ADD  M(um) STOR M(i)
	LOAD M(len) SUB  M(i)
	JUMP+ M(laco,0:19)

LOAD M(acc) JUMP M(0x400)

.org 0x040
i:
	.word 0
acc:
	.word 0
um:
	.word 1

.org 0x100
.word 0x001 # VET1
.word 0x002 # VET1
.word 0x003 # VET1
.word 0x004 # VET2
.word 0x005 # VET2
.word 0x006 # VET2

.org 0x3FD
vet1:
  .word 0x100 # POSICAO VET 1
vet2: 
  .word 0x103 # POSICAO VET 2
len:
  .word 0x003 # LEN
