## Tugas Komputasi Statistika ~ Pertemuan 5
## Nama : Dwi Arta Pratiwi Silalahi
## NIM : 3338250003

## Soal 1 (Sebaran Eksponensial)
# Contoh: Eksponensial dengan rata-rata = 5
mu <- 5
lambda <- 1/mu

# Menghitung peluang P(X > 5)
pexp(5, rate = lambda, lower.tail = FALSE)
1 - pexp(5, rate = lambda)

## Soal 2 (Sebaran Uniform Kontinu)
# Contoh: Uniform pada interval [0, 20]
a <- 0
b <- 20

# Menghitung varians teoritis
var_uniform <- (b-a)^2 / 12
var_uniform

## Soal 3 (Sebaran Eksponensial)
# Contoh: Eksponensial dengan rata-rata = 10 tahun
mu <- 10
lambda <- 1/mu

# Menghitung peluang P(X < 5)
pexp(5, rate = lambda)

## Soal 4 (Sebaran Normal/Gaussian)
# Contoh: Normal dengan mu = 250, sigma = 5
mu <- 250
sigma <- 5

# Menghitung proporsi produk dengan berat kurang dari 240 gram
pnorm(240, mean = mu, sd = sigma)