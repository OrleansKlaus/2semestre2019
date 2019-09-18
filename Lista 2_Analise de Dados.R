# Nome: Orleans Claus     matricula: 132989
# Semestre 2019.2 - Lista de Exercícios 2 
# Exercicio 1
 # a) Monte manualmente o vetor y e a matriz de dados X;
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5),4,2)
 X
 # b) Encontre o determinante de X’X. Demonstre os cálculos. 
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
 Xdet = det(XtranspX)
 Xdet
 # c) Estime manualmente o modelo 𝑌𝑡 = 𝛽1 + 𝛽2𝑃𝑥𝑡 + 𝑢̂𝑡.  
  Xinv = solve(XtranspX)
  XtranspY = Xtransp %*% y
  beta = Xinv %*% XtranspY
 beta
 # d) Interprete os coeficientes 
 # Beta1: 
 # Beta2:
 # e) Calcule manualmente os valores
 y = c(4,5,5,4)
 y
 # f) Calcule manualmente a matriz de variância-covariância dos estimadores 
 y = c(4,5,5,4)
 y
 # g) Quais são as variâncias dos coeficientes 
 y = c(4,5,5,4)
 y
 # h) Quais são os erros-padrão dos coeficientes 
 y = c(4,5,5,4)
 y
# Exercicio 2
 # a) Monte manualmente o vetor y e a matriz de dados X;
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # b) Encontre o determinante de X’X. Demonstre os cálculos. 
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
 Xdet = det(XtranspX)
 Xdet
 # c) Estime manualmente o modelo 𝑌𝑡 = 𝛽1 + 𝛽2𝑃𝑥𝑡 + 𝑢̂𝑡.  
  Xinv = solve(XtranspX)
  XtranspY = Xtransp %*% y
  beta = Xinv %*% XtranspY
 beta
 # d) Interprete os coeficientes 
 # Beta1: 
 # Beta2:
 # Beta3:
 # e) Calcule manualmente os valores
 y = c(4,5,5,4)
 y
 # f) Calcule manualmente a matriz de variância-covariância dos estimadores 
 y = c(4,5,5,4)
 y
 # g) Quais são as variâncias dos coeficientes 
 y = c(4,5,5,4)
 y
 # h) Quais são os erros-padrão dos coeficientes 
 y = c(4,5,5,4)
 y
# Exercicio 3
 # a) Um nível de significância de 5%. 
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # b) Um nível de significância de 1%. 
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
 Xdet = det(XtranspX)
 Xdet
 ### Apresente as hipóteses nula e alternativa para cada um dos testes realizados. 
# Exercicio 4
 # a) Construa manualmente um intervalo de confiança 
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # b) Interprete cada um dos intervalos construídos.  
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
 # c) Os parâmetros são estatisticamente significativos? 
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # d) Refaça os itens (a), (b) e (c) considerando um nível de significância de 1%.  
 Xtransp=t(X)
# Exercicio 5
 # a) Qual o menor nível de significância individual 
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # b) Quais coeficientes são estatisticamente significativos 
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
# Exercicio 7
 # a) Qual o menor nível de significância individual 
 y = c(4,5,5,4)
 y
 X = matrix(c(1,1,1,1,2.5,2,1.5,2.5,3,3.5,4,3.5),4,3)
 X
 # b) Quais coeficientes são estatisticamente significativos 
 Xtransp=t(X)
 XtranspX = Xtransp %*% X
 XtranspX
# Exercicio 8
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
 