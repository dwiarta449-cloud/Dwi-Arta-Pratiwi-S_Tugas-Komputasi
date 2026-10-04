## Tugas Komputasi Statistika ~ Pertemuan 5
## Nama : Dwi Arta Pratiwi Silalahi
## NIM : 3338250003

## Soal 1 (Sebaran Eksponensial)
# Contoh: Eksponensial dengan lambda = 0.2
lambda <- 0.2

# Peluang P(X > 5)
pexp(5, rate = lambda, lower.tail = FALSE)

# Simulasi data
n <- 100
x <- rexp(n, rate = lambda)

# Statistik sampel
mean(x)
var(x)

# MLE untuk lambda
(lambda_hat <- n / sum(x))

# Plot PDF
x_dexp <- seq(0, 30, by = 1)
y_dexp <- dexp(x_dexp, rate = lambda)
plot(x_dexp, y_dexp, type="l", col="deeppink", lwd=2,
     main="PDF Distribusi Eksponensial",
     xlab="x", ylab="f(x)")

## Soal 2 (Sebaran Uniform Kontinu)
# Contoh: Uniform pada interval [0, 20]
set.seed(2025)
n <- 1000
a <- 0
b <- 20

# Generate sampel
x <- runif(n, min = a, max = b)

# Nilai density / CDF / quantile contoh
d_values <- dunif(c(0, 10, 20), min = a, max = b)
p_values <- punif(c(0, 10, 20), min = a, max = b)
q_values <- qunif(c(0.25, 0.5, 0.75), min = a, max = b)

# Plot: histogram sampel + overlay PDF teoritis
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram sampel U(0,20) dengan PDF teoritis",
     xlab = "x")
curve(dunif(x, min = a, max = b), from = a, to = b,
      add = TRUE, lwd = 2)

# Menampilkan ringkasan
mean(x)
var(x)

# Varians teoritis
(b-a)^2 / 12

## Soal 3 (Sebaran Eksponensial)
# Contoh: Eksponensial dengan lambda = 0.1
lambda_true <- 0.1

# Peluang P(X < 5)
pexp(5, rate = lambda_true)

# Simulasi data
n <- 100
x <- rexp(n, rate = lambda_true)

# Statistik sampel
mean(x)
var(x)

# MLE untuk lambda
(lambda_hat <- n / sum(x))

# Plot PDF
x_dexp <- seq(0, 50, by = 1)
y_dexp <- dexp(x_dexp, rate = lambda_true)
plot(x_dexp, y_dexp, type="l", col="purple", lwd=2,
     main="PDF Distribusi Eksponensial",
     xlab="x", ylab="f(x)")

## Soal 4(Sebaran Normal (Gaussian))
# Contoh: Normal dengan mu = 250, sigma = 5
n <- 100
mu <- 250
sigma <- 5

# Proporsi produk underweight
pnorm(240, mean = mu, sd = sigma)

# Simulasi data
x <- rnorm(n, mean = mu, sd = sigma)

# Statistik sampel
(x_bar <- mean(x))
(mle_sigma2 <- mean((x - x_bar)^2))
(sd_sample <- sd(x))

# Plot: histogram + overlay PDF teoritis
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram sampel N(250, 5^2)",
     xlab = "x")
curve(dnorm(x, mean = mu, sd = sigma),
      from = mu-4*sigma, to = mu+4*sigma,
      add = TRUE, lwd = 2)