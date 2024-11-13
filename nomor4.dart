import 'nomor1.dart';

enum FaseProyek { Perencanaan, Pengembangan, Evaluasi }

class Proyek {
  FaseProyek fase = FaseProyek.Perencanaan;
  List<Karyawan> tim = [];
  DateTime tanggalMulai;

  Proyek(this.tanggalMulai);

  void tambahKaryawan(Karyawan karyawan) {
    tim.add(karyawan);
  }

  bool beralihKePengembangan() {
    if (fase == FaseProyek.Perencanaan && tim.length >= 5) {
      fase = FaseProyek.Pengembangan;
      print("Berhasil beralih ke fase Pengembangan.");
      return true;
    }
    return false;
  }

  bool beralihKeEvaluasi() {
    if (fase == FaseProyek.Pengembangan &&
        DateTime.now().difference(tanggalMulai).inDays > 45) {
      fase = FaseProyek.Evaluasi;
      print("Berhasil beralih ke fase Evaluasi.");
      return true;
    }
    return false;
  }
}
