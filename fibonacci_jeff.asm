name "serie de fibonacci"

org 100h

mov bh,0         
mov bl,1 

mov dl,bh        
mov ah,2         
int 21h
                 
mov dl,0Ah
mov ah,2
int 21h

mov dl,0Dh       
mov ah,2
int 21h 

mov dl,bl       
mov ah,2         
int 21h
                
mov dl,0Ah
mov ah,2
int 21h

mov dl,0Dh       
mov ah,2
int 21h

soma:

add bh,bl        
cmp bh,233       
jz fim 

mov dl,bh        
mov cl,bh        
push cx          
mov ah,2
int 21h

mov dl,0Ah       
mov ah,2
int 21h

mov dl,0Dh       
mov ah,2
int 21h

add bl,bh        
cmp bl,233       
jz fim

mov dl,bl        
mov cl,bl        
push cx          
mov ah,2
int 21h

mov dl,0Ah       
mov ah,2
int 21h

mov dl,0Dh       
mov ah,2
int 21h

jmp soma         

fim:
ret
