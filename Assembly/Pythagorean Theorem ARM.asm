@ Pythagorean Theorem
    @ Load initial values
    mov r0, #3
    mov r1, #4
    
    @ Multiply numbers by themselves
    mul r0, r0, r0 @ r0 = r0 x r0
    mul r1, r1, r1 @ same here for r1
    
    @ Get final result
    add r2, r1, r0
    
    @ r2 = c^2 now
