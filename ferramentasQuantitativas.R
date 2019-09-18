### Considere as seguintes variáveis: IPCA, Selic e taxa de câmbio (compra). Utilize frequência mensal. 

# importando dados2 do ipeadata.gov
install.packages("ipeadatar")
library(ipeadatar)

# OLS Simples 
olsreg<-lm(formula = IPCA ~ SELIC+Cambio, data = data2) 
# Resultados 
summary(olsreg) 
plot(olsreg)
# Criando variaveis
IPCA <- data2$IPCA
SELIC <- data2$SELIC 
Cambio <- data2$Cambio 

# Estatísticas Descritivas 
media = mean(IPCA)
mediana = median(IPCA)
desviopadrao = sd(IPCA) 
maximo=max(IPCA)
minimo=min(IPCA) 
CV=desviopadrao/media 
cor(data.frame(data2$IPCA,data2$SELIC)) 
# Graficos 
plot(IPCA) 
plot(SELIC) 
plot(Cambio) 

# Dados de idade da morte de reis na inglaterra 
kings <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3) 
kings
# Transformando o banco de dados em Series de Tempo
kingstimeseries <- ts(kings) 
kingstimeseries 
plot.ts(kingstimeseries) 
# Banco de dados de nascimnetos por mes de 1946 a 1959 em NY 
births <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat") 
birthstimeseries <- ts(births, frequency=12, start=c(1946,1)) 
birthstimeseries
plot.ts(birthstimeseries) 

# Banco de dados de vendas mensais de uma loja de artigos diversos 
souvenir <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat") 
souvenirtimeseries <- ts(souvenir, frequency=12, start=c(1987,1)) 
souvenirtimeseries
plot.ts(souvenirtimeseries) 
# Grafico da serie de vendas em log 
logsouvenirtimeseries <- log(souvenirtimeseries) 
plot.ts(logsouvenirtimeseries) 


########### Decompondo Series de Tempo ############# 
# Serie nao sazonal
library("TTR") 
# Utilizando media movel 
kingstimeseriesSMA3 <- SMA(kingstimeseries,n=3) 
plot.ts(kingstimeseriesSMA3) 
# Utilizando o MA de ordem maior para estimar a tendencia da serie 
kingstimeseriesSMA8 <- SMA(kingstimeseries,n=8) 
plot.ts(kingstimeseriesSMA8) 
# Serie Sazonal 
birthstimeseriescomponents <- decompose(birthstimeseries) plot(birthstimeseriescomponents) 
########### Ajustando Sazonalidade ############### 
birthstimeseriescomponents <- decompose(birthstimeseries) birthstimeseriesseasonallyadjusted <- birthstimeseries - birthstimeseriescomponents$seasonal 
plot(birthstimeseriesseasonallyadjusted) 

# Utilize o site: http://www.ipeadata.gov.br/Default.aspx 
#	.	1) Analise a série “Número de consultas ao SPC” e realize o tratamento sazonal. 
#	.	2) Apresente as duas séries em uma planilha excel. 

# Gerando uma distribuicao normal com 240 obs 
E=rnorm(240)
X=cumsum(E)
plot(X,type="l")
# Rotina para realizar o teste de raiz unitaria Dickey Fuller (standard) 
lags=0 
z=diff(X)
n=length(z)
z.diff=embed(z, lags+1)[,1]
z.lag.1=X[(lags+1):n] 
summary(lm(z.diff~0+z.lag.1 ))
lm(formula = z.diff ~ 0 + z.lag.1) 
summary(lm(z.diff~0+z.lag.1 ))$coefficients[1,3] 

# Interpretacao das estatisticas utilizando valores criticos 
qnorm(c(.01,.05,.1)/2) 
# Mesmo valor se utilizar a biblioteca urca 
library(urca)
df=ur.df(X,type="none",lags=0)
df
summary(df)
# Mais uma opcao de teste considerando p-valor 
install.packages("tseries")
library(tseries)
1-adf.test(X,k=0)$p.value # Ho: tem uma raiz unitaria 

##### Augmented Dickey Fuller #######
# Pode considerar variaveis lags na regressao lags=1
z=diff(X)
n=length(z)
z.diff=embed(z, lags+1)[,1] 
z.lag.1=X[(lags+1):n]
k=lags+1
z.diff.lag = embed(z, lags+1)[, 2:k] 
summary(lm(z.diff~0+z.lag.1+z.diff.lag ))
# Teste de raiz unitaria 
df=ur.df(X,type="none",lags=1)
summary(df) 

##### Augmented Dickey Fuller with trend and drift ####### 
# com constante
summary(lm(z.diff~1+z.lag.1+z.diff.lag )) 
df=ur.df(X,type="drift",lags=1) 
summary(df) 
# com tendencia 
temps=(lags+1):n # tendencia linear 
summary(lm(z.diff~1+temps+z.lag.1+z.diff.lag )) 
df=ur.df(X,type="trend",lags=1)
summary(df) 

##### KPSS Teste de raiz unitaria ######
# Ho: serie estacionaria
summary(ur.kpss(X,type="mu"))
# KPSS com tendencia
summary(ur.kpss(X,type="tau"))

############# Philipps-Perron test ################# 
# Ho: serie nao estacionaria (tem raiz unitaria) 
PP.test(X) 
# Primeira diferenca da serie 
X2=diff(X) 
plot(X2) 

#Utilize o site: http://www.ipeadata.gov.br/Default.aspx
#1) Utilize a série “Taxa de juros – Over/Selic” e aplique os testes de raiz unitária.
#2) Caso tenha raiz unitária, deixe a série estacionária. 


# AR(1) plots 
x<-rnorm(100) 
sim1<-arima.sim(list(ar=c(0.5)),n=100,innov=x) 
sim2<-arima.sim(list(ar=c(0.9)),n=100,innov=x) 
sim3<-arima.sim(list(ar=c(0.99)),n=100,innov=x) 

par(mfrow=c(2,2)) 

ts.plot(x) 
ts.plot(sim1) 
ts.plot(sim2) 
ts.plot(sim3) 

# AR(1) plots ACFs 
acf(x); acf(sim1); acf(sim2); acf(sim3) 
# AR(1) plots PACFs 
pacf(x); pacf(sim1); pacf(sim2); pacf(sim3) 
# Estimacao de um AR(1) 
arima(sim1,order=c(1,0,0)) 
ar(sim1) 
# Diagnostico de um AR(1) 
fit<-arima(sim1,order=c(1,0,0)) 
tsdiag(fit) 

# Previsao 
predict(fit,n.ahead=8) 
# Grafico da Previsao 
pred<-predict(fit,n.ahead=8) 
plot(sim1,xlim=c(1,110)) 
lines(pred$pred,col="blue", lwd=5) 
lines(pred$pred+2*pred$se,col="red",lty=3, lwd=5) 
lines(pred$pred-2*pred$se,col="red",lty=3, lwd=5) 

##### AR(p) plots ##### 
x<-rnorm(200) 
sim1<-arima.sim(list(ar=c(-0.5)),n=200,innov=x) 
sim2<-arima.sim(list(ar=c(.5,-0.5)),n=200,innov=x) 
sim3<-arima.sim(list(ar=c(.2,-.4,.6)),n=200,innov=x) 
sim4<-arima.sim(list(ar=c(.5,.4,-.6,.4)),n=200,innov=x) 
par(mfrow=c(2,2)) 

ts.plot(sim1); ts.plot(sim2); ts.plot(sim3); ts.plot(sim4) 

# AR(p) plots ACFs 
acf(sim1); acf(sim2); acf(sim3); acf(sim4) 
# AR(p) plots PACFs 
pacf(sim1); pacf(sim2); pacf(sim3); pacf(sim4) 
# AR(p) Estimativas 
ar(sim1); ar(sim2); ar(sim3); ar(sim4) 

#Utilize o site: http://www.ipeadata.gov.br/Default.aspx 
# 1) Utilize a série “Over Selic Mensal”. 
# 2) Estime um processor AR(1); 
# 3) Faça uma previsão considerando 8 períodos a frente;
# 4) Analise os resultados.

# MA(1) plots ACFs
acf(x); acf(sim1); acf(sim2); acf(sim3)
# MA(1) plots PACFs
pacf(x); pacf(sim1); pacf(sim2); pacf(sim3)
# Estime um MA(1)
arima(sim1,order=c(0,0,1))
# Diagnostico
fit<-arima(sim1,order=c(0,0,1)) 
tsdiag(fit)

# Previsao
predict(fit,n.ahead=8)
# Previsao
pred<-predict(fit,n.ahead=8) 
plot(sim1,xlim=c(1,110)) 
lines(pred$pred,col="blue", lwd=5) 
lines(pred$pred+2*pred$se,col="red",lty=3, lwd=5) 
lines(pred$pred-2*pred$se,col="red",lty=3, lwd=5)

# MA(q) Plots
x<-rnorm(200) 
sim1<-arima.sim(list(ma=c(1)),n=200,innov=x) 
sim2<-arima.sim(list(ma=c(1,-1)),n=200,innov=x) 
sim3<-arima.sim(list(ma=c(1,1,1)),n=200,innov=x) 
sim4<-arima.sim(list(ma=c(1/4,1/4,1/4,1/4)),n=200,innov=x) 
par(mfrow=c(2,2))
ts.plot(sim1); ts.plot(sim2); ts.plot(sim3); ts.plot(sim4)
# MA(q) ACFs
acf(sim1); acf(sim2); acf(sim3); acf(sim4)
# MA(q) PACFs
pacf(sim1); pacf(sim2); pacf(sim3); pacf(sim4)

# Utilize o site: http://www.ipeadata.gov.br/Default.aspx
# 1) Utilize a série “Over Selic Mensal”.
# 2) Estime um processor MA(1);
# 3) Faça uma previsão considerando 8 períodos a frente;
# 4) Analise os resultados.




