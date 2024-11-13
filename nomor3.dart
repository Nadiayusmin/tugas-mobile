import 'nomor1.dart';

mixin Kinerja {
  int produktivitas = 0;
  DateTime lastUpdate = DateTime.now();

  void updateProduktivitas(int nilai) {
    if (DateTime.now().difference(lastUpdate).inDays >= 30) {
      produktivitas = (produktivitas + nilai).clamp(0, 100);
      lastUpdate = DateTime.now();
    } else {
      print("Produktivitas hanya dapat diperbarui setiap 30 hari sekali.");
    }
  }
}

class KaryawanDenganKinerja extends Karyawan with Kinerja {
  KaryawanDenganKinerja(String nama, {required int umur, required String peran})
      : super(nama, umur: umur, peran: peran);

  @override
  void bekerja() {
    if (peran == "Manager" && produktivitas < 85) {
      print("Manager harus memiliki produktivitas minimal 85.");
    } else {
      print("$nama bekerja sebagai $peran.");
    }
  }
}