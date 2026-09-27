## Tugas Komputasi Statistika ~ Pertemuan 4
## Nama : Dwi Arta Pratiwi Silalahi
## NIM : 3338250003

# 1. Sebaran Poisson
lambda <- 3
x <- 0:15

# Menghitung PMF
pmf <- dpois(x, lambda)

# Membuat grafik
plot(x, pmf, type='h', lwd=3,
     main='Poisson(lambda=3)',
     xlab='k', ylab='P(X=k)')

# Menghitung P(X >= 5)
peluang <- 1 - ppois(4, lambda)
peluang

# 2. Sebaran Hipergeometrik
N <- 100    # ukuran populasi
K <- 20     # jumlah bola merah
n <- 10     # ukuran sampel

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)

data.frame(k = k, P = pmf)

# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=",N,", K=",K,", n=",n,")"),
     xlab = "k (banyak bola merah dalam sampel)",
     ylab = "P(X=k)")

# 3. Sebaran Binomial
n <- 15
p <- 0.4
x <- 0:n

# PMF teoretis
pmf <- dbinom(x, size=n, prob=p)

# Simulasi 1000 percobaan
set.seed(2025)
samp <- rbinom(1000, size=n, prob=p)

# Histogram hasil simulasi
hist(samp,
     breaks = seq(-0.5, 15.5, 1),
     probability = TRUE,
     main = "Simulasi Binomial dan PMF Teoretis",
     xlab = "k",
     ylab = "P(X=k)")

# Menambahkan PMF teoretis
points(x, pmf, pch = 16)
lines(x, pmf, lwd = 2)