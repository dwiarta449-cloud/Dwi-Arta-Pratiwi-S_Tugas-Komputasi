# 1. VECTOR

# a. Vector Numeric
nilai_numeric <- c(2.5, 4.0, 5.5, 7.0)
nilai_numeric
# b. Vector Integer
nilai_integer <- c(2L, 4L, 6L, 8L)
nilai_integer
# c. Vector Logical
status_logical <- c(TRUE, FALSE, TRUE, FALSE)
status_logical
# d. Vector Character
minuman_character <- c("Teh", "Kopi", "Susu", "Jus")
minuman_character

# 2. MATRIX 4x4

matriks_data <- matrix(1:16,nrow = 4,ncol = 4,byrow = TRUE)
matriks_data

# 3. ARRAY 4D

array_data <- array(1:32,dim = c(2, 2, 2, 4))
array_data

# 4. DATA FRAME

data_mahasiswa <- data.frame(
  Nama = c("Alya", "Bima", "Citra", "Dion"),
  Nilai = c(7.5, 8.0, 6.5, 9.0),
  Lulus = c(TRUE, TRUE, FALSE, TRUE),
  Aktif = c(TRUE, FALSE, TRUE, TRUE)
)
data_mahasiswa

# 5. LIST

dataList <- list(
  VektorBaris = c(2, 4, 6, 8),
  VektorKolom = matrix( c(1, 3, 5, 7), ncol = 1),
  Matriks4x4 = matrix(1:16,nrow = 4,ncol = 4,byrow = TRUE),
  DataFrame = data.frame(
    Nama = c("Alya", "Bima", "Caca", "Doni"),
    Nilai = c(6.5, 7.5, 8.5, 9.5),
    Hadir = c(TRUE, TRUE, FALSE, TRUE),
    Remedial = c(TRUE, FALSE, FALSE, FALSE)
  ),
  isi = list(
    Matriks4x4 = matrix(17:32,nrow = 4,ncol = 4,byrow = TRUE),
    Array4d = array(1:16,dim = c(2, 2, 2, 2)),
    DataFrame = data.frame(
      Kode = c("A1", "B2", "C3", "D4"),
      Skor = c(6, 7, 8, 9),
      Terdaftar = c(TRUE, FALSE, TRUE, TRUE),
      Lulus = c(FALSE, TRUE, TRUE, TRUE)
    ),
    VektorBaris = c(3, 5, 7, 9)
  )
)
dataList