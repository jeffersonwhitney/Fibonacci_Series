name "serie de fibonacci"

org 100h

mov bh,0         ;usei esses registradores pq nao mudaram quando fui printando no cmd
mov bl,1 

mov dl,bh        ;pra mostrar o primeiro valor da serie
mov ah,2         ; a funcao pra printar na tela
int 21h
                 ;printo uma nova linha
mov dl,0Ah
mov ah,2
int 21h

mov dl,0Dh       ;printo pra voltar pra o inicio da linha
mov ah,2
int 21h 

mov dl,bl        ;pra mostrar o segundo valor da serie
mov ah,2         ; a funcao pra printar na tela
int 21h
                 ;printo uma nova linha
mov dl,0Ah
mov ah,2
int 21h

mov dl,0Dh       ;printo pra voltar pra o inicio da linha
mov ah,2
int 21h

soma:

add bh,bl        ;somo o valor dos dois e boto no bh
cmp bh,233       ;como nao consegui os 16 bits comparo com o valor maximo de 4 bits
jz fim 

mov dl,bh        ;printo bh
mov cl,bh        ;tive que mover para cl pois o push so funciona pro registrador inteiro
push cx          ;mando bh pra memoria
mov ah,2
int 21h

mov dl,0Ah       ;nova linha
mov ah,2
int 21h

mov dl,0Dh       ;inicio da linha
mov ah,2
int 21h

add bl,bh        ;somo e armazeno no bl
cmp bl,233       ;como nao consegui os 16 bits comparo com o valor maximo de 4 bits
jz fim

mov dl,bl        ;printo bl
mov cl,bl        ;tive que mover para cl pois o push so funciona pro registrador inteiro
push cx          ;mando bl pra memoria
mov ah,2
int 21h

mov dl,0Ah       ;nova linha
mov ah,2
int 21h

mov dl,0Dh       ;inicio da linha
mov ah,2
int 21h

jmp soma         ;repito tudo desde soma

fim:
ret