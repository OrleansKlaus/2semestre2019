### INTRODUÇÃO À ANÁLISE DE DADOS APLICADA 

### ----------------------- Aula do dia 24/08 ----------------###

### Importando os Dados
file.choose()
arquivo="/Users/orleansklaus/Google Drive/orleansklaus@gmail.com/Unifesp 2 semestre 2019/INTRODUÇÃO À ANÁLISE DE DADOS APLICADA/Aula MQO - Exemplo Demanda.csv" 
#arquivo="Aula MQO - Exemplo Demanda.csv"
dados=read.csv2(arquivo,header=T,sep=";")
head(dados) [1:3,1:6]
tail(dados)

### Criar o vetor Y:
y=dados[,2]
y=dados$Qxd
head(y)

linha_10=dados[10,]

dim(dados)
n=dim(dados)[1]

X1=as.matrix(dados[,3:6])
X1=as.matrix(dados[,c("px","py","pz","R")])


X=cbind(1,X1)
X

colnames(X)=NULL
X

beta=solve(t(X)%*%X)%*%t(X)%*%y
beta

### ----------------------- Aula do dia 31/08 ----------------###

# Calcular y chapéu
yhat = X%*%beta

head(yhat)

# Calcular u chapéu
resid=y-yhat
head(resid)
resid=y-X%*%beta
resid

### Calcular a soma dos residuos ao quadrado
sum_resid_2=sum(resid^2)
sum_resid_2

### Calcular a variancia dos residuos
n=dim(X) [1]
n
k=dim(X) [2]
k
sigma2=(1/(n-k))*sum_resid_2
sigma2

# Vetoriar sigma2 - REVER
sigma2=c((1/(n-k))*sum_resid_2)
sigma2

sigma=sigma2^0.5
sigma

### Ou, de uma vez
sigma2=(1/(n-k))*(t(resid)%*%resid)
sigma2
sigma2=c(1/(n-k))*(t(resid)%*%resid)
sigma2
sigma=sigma2^0.5
sigma

### Calcular a matriz var-cov(beta)
varcovbeta=sigma2*solve(t(X)%*%X)
varcovbeta

### Extraindo as variaveis dos estimadores
varbeta=diag(varcovbeta)
varbeta

### Calcunado os erros-padrao dos estimadores
epbeta=varbeta^0.5
epbeta

### ----------------------- Aula do dia 07/09 ----------------###

# FERIADO - NAO TEVE AULA

### ----------------------- Aula do dia 14/09 ----------------###

### Teste de significancia para os parametros
## Calculo da razão t:
t = beta / epbeta
t

### Encontrar o valor critico de t:
gl = n - k
gl

alpha=0.05
p=1-alpha/2
p

### qt(p-p,df=2)

t.crit.0.05=qt (p=p,df=gl)
t.crit.0.05=qt (p=(1-alpha/2),df=gl)
t.crit.0.05
### nao podemos rejeitar a hipotese nula 

2*(1-pt(q=t.crit.0.05,df=gl))

pt(q=2.364624,df=gl)
1-pt(q=2.364624,df=gl)
2*(1-pt(q=2.364624,df=gl))

pvalor=2*(1-pt(q=abs(t),df=gl))
pvalor

2*(1-pt(q=2.364624,df=7))

### Calcular o intervalo de confianca a 95%
LI=beta-t.crit.0.05*epbeta
LS=beta+t.crit.0.05*epbeta
LI
LS

resultados=cbind(beta,epbeta,t,LI,LS,pvalor)
colnames(resultados)=c("beta","ep","Razão t","LI 95%","LS 95%","pvalor")
rownames(resultados)=c("beta 1","beta 2","beta 3","beta 4","beta 5")
resultados
### Baixar tabela t-student e a prova comeca 14:30