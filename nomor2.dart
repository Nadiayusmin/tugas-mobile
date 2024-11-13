class KaryawanDemo {
  String nama;
  int umur;
  String peran;

  KaryawanDemo(this.nama, {required this.umur, required this.peran});

  @override
  String toString() => "Karyawan(nama: $nama, umur: $umur, peran: $peran)";
}

void main() {
  var karyawan1 = KaryawanDemo("John Doe", umur: 30, peran: "Developer");
  print(karyawan1);
}
