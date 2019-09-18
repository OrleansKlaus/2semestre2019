# Nome: Orleans Claus     matricula: 132989

 A = matrix(c(5,7,2,3,2,2), nrow=3, ncol=2)
 A
 B = matrix(c(-3,1,4,-2,3,2),3,2)
 B
 C = matrix(c(5,3,9,-2,-2,-5,7,1,3),3,3)
 C
 D = matrix(c(10,-3,-6,8),2,2)
 D
 E = matrix(c(4),1,1)
 E
 F = matrix(c(2,1,5,-1,-3,6),2,3)
 F
 G = matrix(c(5,3,9,-2,-2,3,4,4,-6),3,3)
 G
 H = matrix(c(-1,-2,2,-1,3,5,1,2,2,1,-2,4,2,3,2,1),4,4)
 H
 M = matrix(c(5,3,9,-2,-2,3,9,4,-6),3,3)
 M
 a1 = A+B
 a1
 b1 = C+G
 b1
 c1 = B+A
 c1
 d1 = B+C
 e1 = B-A
 e1
 a2 = A%*%D
 a2
 b2 = D%*%A
 c2 = F%*%C
 c2
 d2 = C%*%G
 d2
 e2 = G%*%C
 e2
 f2 = 5*A
 f2
 g2 = 4*G
 g2
 a3 = t(A)
 a3
 b3 = t(B)
 b3
 c3 = t(C)
 c3
 d3 = t(D)
 d3
 e3 = t(E)
 e3
 f3 = t(F)
 f3
 g3 = t(G)
 g3 
 h3 = t(H)
 h3
 a4 = t(A+B)
 a4
 b4 = t(A) + t(B)
 b4
 a4 == b4
 a5 = t(A%*%D)
 a5
 b5 = t(D)%*%t(A)
 b5
 a5 == b5
 a7 = det(C)
 a7
 b7 = det(G)
 b7
 c7 = det(H)
 c7
 d7 = det(C%*%G)
 d7
 a8 = solve(C)
 a8
 b8 = solve(G)
 b8
 c8 = solve(C%*%G)
 c8
 a10_CM_inv = solve(C%*%M) 
 a10_CM_inv
 a10_C_M_inv = solve(C)%*%solve(M)
 a10_C_M_inv
 a10_CM_inv ==  a10_C_M_inv
 b10_H_t =round(solve(t(H)),10)
 b10_H_t 
 b10_t_H=round(t(solve(H)),10)
 b10_t_H
 b10_t_H ==  b10_H_t 
 
 
 round(solve(t(H)),10) == round(t(solve(H)),10)
 
 
 b10_H = round(solve(H))
 b10_H 
 b10_t_H=t(b10_H)
 b10_t_H
 b10_t=t(H)
 b10_t
 b10_H_t= round(solve(b10_t)) 
 b10_H_t
 b10_H_t == b10_t_H
 