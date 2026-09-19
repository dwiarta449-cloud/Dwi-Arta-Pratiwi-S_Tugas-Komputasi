## Tugas Komputasi Statistika ~ Pertemuan 3
## Nama : Dwi Arta Pratiwi Silalahi
## NIM : 3338250003

# 1. Data airquality
# Memanggil data
data(airquality)

# Melihat struktur data
str(airquality)

# 2. Membuat histogram distribusi data Wind
# Membuat histogram
hist(airquality$Wind,
     probability = TRUE,
     xlab = "Wind",
     main = "Distribusi Wind")

# Membuat density
dens <- density(airquality$Wind)

# Menambahkan kurva density
lines(dens, col = "purple", lwd = 2)

# 3. Boxplot & Stem-and-leaf
# a. Boxplot
boxplot(airquality$Wind,
        horizontal = TRUE,
        xlab = "Wind",
        main = "Boxplot Wind")

# b. Stem-and-leaf
stem(airquality$Wind)

# 4. Membuat scatter plot
# Scatter plot Wind terhadap Ozone
plot(Ozone ~ Wind,
     data = airquality,
     pch = 16,
     main = "Scatter Plot Wind dan Ozone",
     xlab = "Wind",
     ylab = "Ozone")

# Menambahkan garis regresi
abline(lm(Ozone ~ Wind, data = airquality),
       col = "deeppink",
       lwd = 2)