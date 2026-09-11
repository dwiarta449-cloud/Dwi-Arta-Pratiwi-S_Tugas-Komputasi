## Tugas Komputasi Statistika ~ Pertemuan 2
## Nama : Dwi Arta Pratiwi Silalahi
## NIM : 3338250003

#1. Menampilkan Sepal.Length saja
iris$Sepal.Length

#2. Tipe data tiap kolom
sapply(iris, class)

#3. Membuat variabel turunan
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")

#4. Mengubah turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"

#5. Mengambil sepal Besar dari species virginica
iris[iris$sepal == "Besar" & iris$Species == "virginica", ]

#6. Mengecek jumlah species
table(iris$Species)

#7. Memecah iris menjadi 3 data frame
iris_setosa <- iris[iris$Species == "setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_virginica <- iris[iris$Species == "virginica", ]

# 8. Mengurutkan berdasarkan Sepal.Width
iris_setosa <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_setosa
iris_versicolor <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_versicolor
iris_virginica <- iris_virginica[order(iris_virginica$Sepal.Width), ]
iris_virginica

