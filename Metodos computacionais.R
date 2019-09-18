G = matrix(c(8,2,-5,-4,0,6,4,-2,-1,6,2,9),4, 3)
G
T = matrix(c(4,0,3,2,12,6),3,2)
T
U = matrix(c(3,-2,12,7),4,1)
U
K = matrix(c(3,7,-5,12,10,0),2,3)
K
O = matrix(c(4,0,3,2,12,6,9,4,5),3,3)
O
G%*%T
#G%*%U
G%*%t(K)
T%*%K
# Transposta
G%*%t(G)
t(T)%*%t(K)

det(O)
solve(O)
S= matrix(c(3,5,-1,9,0,-3,4,4,19,4,-4,10,0,-1,6,-19),4,4)
S
# determinante
det(S)
# inversa
solve(S)
solve(S)%*%S

# apagar objeto rm()
rm(O)
View(O)

B = matrix(c(-7,1,6,0,12,9,5,2,4,4,5,-8),4,3)
B
C = matrix(c(0,12,7,10,-2,3,1,-8,-9,4,2,2),4,3)
C

# Array - 2 ou mais matrizes
Z = array(c(-7,1,6,0,12,9,5,2,4,4,5,-8,0,12,7,10,-2,3,1,-8,-9,4,2,2),dim=c(4,3,2))
Z

Z[2,,1] # todos elementos da segunda linha da matriz 1
Z[,1:2,2] # todos elementos das colunas 1 ate 2 da matriz 2
Z[3,1:3,] # elementos linha 3, coluna de 1 ate 3 das matrizes
Z[4,1,2] # o unico elemento

h=list(nome="Gabriel", altura=1.78, peso=74)
h

h2=list(tamanho = 100, noquartos = 2, nobanheiros =1)
h2

h$altura
h$peso

# criando um data frame
individuos = c("Gabriel","Ana","Mateus")
alturas = c(1.78,1.65,1.83)
pesos = c(74,59,93)
tabela = data.frame(individuos,alturas,pesos)
tabela
View(tabela)

tabela2 = data.frame(individuos = c("Gabriel","Ana","Mateus"),alturas = c(1.78,1.65,1.83),pesos = c(74,59,93))
tabela2$individuos
tabela2$alturas[2] # altura do elemento da linha 2
tabela2$alturas # todas as alturas
class(tabela)
class(h)
?log
help(log)
example(log)
class(list)

getOption("defaultPackages") # lista pacotes 
(.packages()) 
(.packages(all.available = TRUE)) 
#install.packages("TSA")
#library(TSA)

x = c(3,-1,8,-4,7,2,-3,5,-6,1,0) # vetores num ́ericos
#assimetria = skewness(x) # calcular coef. assimetria
(.packages())

1.1; 7; 2^1099 # números
'hello'; c("um", 'dois', "três") # aspas simples ou duplas
x = 1; x1_.11 = 440 # simbolo como nome da variavel criada
#Essas expressões especiais n ̃ao podem ser usadas como s ́ımbolos;
#if, else, repeat, while, function, for, in, next, break, TRUE, FALSE, NULL, Inf, NaN, NA, NA integer , NA real , NA complex , NA character , ..., ..1, ..2, ..3, ..4, ..5, ..6, ..7, ..8 ou ..9

13 + 15; 14 * 7# adição e multiplicação
23 %% 12 # resto da divis̃ao
#23 %\% 12 # resultado da divisao inteira

#Podemos criar um pro ́prio operador (string entre dois s ́ımbolos %):
'%MeuOperador%' = function(a,b) { 4*a - 2*b } # cria operador > 
7 %MeuOperador% 9 # usa operador

max(1,6,-3,5,10,16,-762,5)
y = c(1,3,4,7); y[3] = 10 # associacao com lado esquerdo como funcao
y

15 * (45-10)
f = function(x) { x }; 15 * f(45 - 10) # equivalente

f = function() { x = 10; y = 7; x + y }
f() # soma  ́e retornada, mas x e y n ̃ao s ̃ao adicionados ao ambiente
{ x = 10; y = 7; x + y } # retorna resultado e cria vari ́aveis


f = function(){x=2;y=5;x+y}
f()

f = function(x){
  -2*x^4-3*x^2
  }
f(7)
#plot(x,y,type="L",col="red",xlab = "xorleans",ylab = "yorleans",main="Grafico Orleans")


f = function(x,y){
  print("o produto de xy é", a = x*y)
}
f(2,-7)

f = function(x,y){
  paste("o produto de xy é", x*y, "Ok?")
}
f(2,-7)

if(2>7){"verdade"}else{"falso"}

if(x>=0){sqrt(x)}else{"Nao possui raiz quadrada"}
x=3
y = c(8,7,10,0)
if (x < y) { x } else { y }
if (y > 10) { 2*y } else if (y > 20) { y/2 } else { -2*y }

y = 7
if(y>10){2*y}else if(y>20){y/2}else{-2*y}


f=function(x,y){if(x>y){x+y}else{x-y}}
#f(2,"texto")
f(2,6)
f(-100,sqrt(7))

f2=function(x,y){
  if(x>y){x+y}
  else if(x<y){x-y}
  else x*y
  }
f2(89,90)

CoresCasas = function(x){
  if (x == "vermelho") "Grifinória"
  else if (x == "verde") "Sonserina"
  else if (x == "amarelo") "Lufa-Lufa" 
  else if (x == "azul") "Corvinal"
  else "Casa não definida" 
  }
CoresCasas("vermelho")

g = function(s,t){
  if (s >= t) { soma = s + t
    subtracao = s - t
    paste("Soma é",soma,"e Subtracao e",subtracao) }
  else { produto = s*t
    paste("Produto é",produto) }
  }
g(5,5)

f = function(a,b,c){
  ((b^2)>=(4*a*c))
}
f(1,3,2)
r1 = function(a,b,c){
  ((-b+sqrt((b^2)-(4*a*c)))/(2*a))}
r2 = function(a,b,c){
  ((-b-sqrt((b^2)-(4*a*c)))/(2*a))}
r1(1,3,2)
r2(1,3,2)
r1(2,8,-24)
r2(2,8,-24)

paste("raiz é imaginária e igual a", 2.24,"+",2.34,"i")
paste("raiz é imaginária e igual a", 2.24,"+",paste(2.34,"i"))
paste("raiz é imaginária e igual a", 2.24,"+",paste(2.34,"i",sep=""))


numero = 7
repeat{if(numero<=133)
  {print(numero)
  numero = numero + 2
  }else break
}

numero = 7
repeat{print(numero);numero = numero + 2;if(numero>133)break}

# Faça um programa que calcule e escreva o nu ́mero de anos necess ́arios para que a populac ̧ ̃ao do pa ́ıs A ultrapasse ou iguale a popula ̧c ̃ao do pa ́ıs B
popA=80000 
txA=0.030
popB=200000
txB=0.015
t=1
repeat{print(t); print(popA); print(popB); popA = popA * (1+txA); popB = popB * (1+txB); t = t + 1; if (popA>=popB) break}

i=5
while(i<=400){print(i);i=i+5}

# imprima a quantidade de numero para ultrapassar 1 bilhão
n=1
while (prod(seq(1,n,1))<=10000000000) {
  n=n+1
  print(n)
}
prod(seq(1,13,1))
prod(seq(1,14,1))

#x={1,2,3,4,5,6,...,60}
x=seq(1,60,1) # numeros da mega sena
jogo = c(30,15,20,32,45,50) # meu jogo
sort(sample(x,6,replace=FALSE)) == sort(jogo) # ordeno os numeros com sort
i=1
while(all(sort(jogo) == sort(sample(x,6,replace = FALSE))) == FALSE) {i = i+1; print(i)}

N = 567 # calcular numero primo
x=c(1,2,3,5,7,N)
resto = N%%x
resto
resto[resto==0]
length(resto[resto==0])
N=17
x=c(1,2,3,5,7,N)
resto = N%%x
resto
resto[resto==0]
length(resto[resto==0])

N=60 ## imprime apenas os numeros primos
i=1
while (i<=N) {
  if(i==1 || i==3 || i==5 || i==7) {print(i)
    i=i+1
  }
  resto = i%%c(1,2,3,5,7,i)
  if(length(resto[resto==0]) == 2) {print(i)
    i=i+1
  }
  else i = i + 1
}


i= 5  ## cria um vetor armazenando os valores de 5 em 5
valores = rep(0,length(seq(5,400,5)))
plot(valores)
j=1
for (i in seq(5,400,5))  {
  print(i); valores[j]=i;j=j+1
}

# plota valores aleatórios
plot(runif(500,10,1000))

# Crie uma funçao que recebe um vetor com 500 numeros aleatórios de uma distribuiçao uniforme
numero = runif(500,10,1000)
n = length(numero)
soma = 0
for (i in 1:n) {
  soma = soma + (numero[i] - mean(numero))^2
  variancia = (1/(n-1)) * soma
  desvpad = sqrt(variancia)
  if (soma < 100000) {
    print(variancia)
    print(desvpad)
  }
}


## rnorm = (n,méd,sd) n, média e desvio padrão
preco = 100
t = 1
while(preco>50 && preco <=150) {preco = preco * (1+rnorm(1,0,0.01));t=t+1}
plot(preco)


### Aula 04 

install.packages("editData")
install.packages("xlsx")
install.packages("wooldridge")
install.packages("titanic")

### 
n = 1000
y = rep(0,n)
y[1] = 5
for(i in 2:n){
  y[i] = 0.3 + 0.7*y[i-1] + rnorm(1,0,1)
  plot(y,type = "l")
}


profissao = c("mecanico", "vendedor", "motorista", "advogado", "engenheiro")
salarios = c(2460.87,1452.10,2356.29,4563.11,10928.00)
idade = c(41,22,38,50,46)
Remuneracoes = data.frame(profissao,salarios,idade) 
library(editData)
Remuneracoes  = edit(Remuneracoes) # requer nome `a esquerda da associac ̧ ̃ao; 
fix(Remuneracoes)

library(xlsx)
NosAleatorios = rnorm(400,2,1) # cria-se vetor com 400 nu ́meros aleato ́rios 
write.table(NosAleatorios,"MeusNumeros.txt") # salva .txt
write.table(NosAleatorios,"MeusNumeros.csv") # salva .csv
write.xlsx(NosAleatorios,"MeusNumeros.xlsx") # requer pacote xlsx 

estado = c("RJ","SP","SP","MG","DF")
Remuneracoes = cbind(Remuneracoes,estado) # combinando colunas
linhaAdd = data.frame(profissao="marceneiro",salarios=3271.19,idade=30,estado="SC")
Remuneracoes = rbind(Remuneracoes, linhaAdd) # combinando linhas

# sample() → extrai amostra aleato ́ria de uma base;
# sort() → ordena dados em uma amostra;
# length() → fornece dimens ̃ao dos dados;
# summary() → resume as principais caracter ́ısticas de uma base;
view(cheques)
length(cheques)
nrow(cheques)
summary(cheques)

# plot(x, y, type=“ ”, xlim=NULL, ylim=NULL, main=“ ”, xlab=“ ”, ylab=“ ”)
# Tipos: p (pontos), l (linha), o ou b (linhas e pontos), s (escada), h (barras);
library(wooldridge)
dados = phillips
View(dados)

plot(dados$year, dados$unem, type = "b", ylab = "Desemprego (%)", col="gray")
plot(dados$unem, dados$cinf, type = "b", ylab = "Var. Inflação", xlab = "Desemp. (%)", col="blue", ylim = c(-5,5), main =  "Curva de Phillips 1948-2003 ")

acf(inf) # correlac ̧ ̃ao inflac ̧ ̃ao na base phillips

### Criac ̧ ̃ao de base de informac ̧o ̃es para gr ́aficos em barras:
OrigemAlunosEPPEN = data.frame( ano = c(2017,2018),
                                EMPublico = c(254,312),
                                EMParticular = c(314,331),
                                EMTecnico = c(98,123))
OrigemAlunosEPPEN.M = as.matrix(OrigemAlunosEPPEN[,2:4]) # em matriz
rownames(OrigemAlunosEPPEN.M) = OrigemAlunosEPPEN[,1]
###  Criando gr ́afico de barras usando func ̧ ̃ao barplot():
barplot(OrigemAlunosEPPEN.M[1,])
barplot(OrigemAlunosEPPEN.M,beside = TRUE,legend=TRUE)
barplot(OrigemAlunosEPPEN.M,beside = FALSE,legend=TRUE)

### Histograma de um vetor de nu ́meros aleato ́rios com distribuic ̧ ̃ao Normal:
v = rnorm(100,mean = 3, sd = 1) # 100 valores
hist(v, nclass = 25) # nclass  ́e o nu ́mero de barras (classes)
set.seed(230) ### fixa o numeros aleatórios
v = rnorm(100,mean = 3, sd = 1) # 100 valores
hist(v, nclass = 25) # nclass  ́e o nu ́mero de barras (classes)

par(mfrow=c(2,1)) # 2 linhas e uma coluna de graficos
par(mfrow=c(1,1)) # retorna ambiente normal
hist(v, nclass = 25) # nclass  ́e o nu ́mero de barras (classes)

set.seed(230) ### fixa o numeros aleatórios
v1 = rnorm(100,mean = 3, sd = 1) # 100 valores
v2 = rnorm(1000,mean = 3, sd = 1) # 100 valores
v3 = rnorm(10000,3,1) # 100 valores
v4 = rnorm(100000,3,1) # 100 valores
par(mfrow=c(2,2)) # 2 x 2
hist(v1, nclass = 25)
hist(v2, nclass = 25)
hist(v3, nclass = 25)
hist(v4, nclass = 25)

dados = affairs

u = runif(100,min=10,max=70)
summary(u)

x= runif(100, min = 10, max = 70) # nu ́mero aleato ́rios dist. uniforme
quantile(x, probs = c(0, 0.25, 0.40, 0.5, 0.60, 0.75, 1))
summary(x)
hist(x)