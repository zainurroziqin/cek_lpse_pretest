class User {
  int? idPegawai;
  String? nomorIndukPegawai;
  String? namaPegawai;
  String? fotoPegawai;
  DateTime? tanggalMulaiPegawaiPosisi;
  DateTime? tanggalAkhirPegawaiPosisi;
  String? fileSkJabatan;
  String? pegawaiPosisiAktif;
  String? idOrganisasi;
  String? namaOrganisasi;
  String? descOrganisasi;
  String? parentIdOrganisasi;
  String? idCabang;
  String? namaCabang;
  String? alamatCabang;
  String? idLevelJabatan;
  String? namaLevelJabatan;
  String? idPosisiPekerjaan;
  String? namaPosisiPekerjaan;
  String? idStatusPegawai;
  String? namaStatusPegawai;
  String? idPerusahaan;
  String? apiToken;

  User({
    this.idPegawai,
    this.nomorIndukPegawai,
    this.namaPegawai,
    this.fotoPegawai,
    this.tanggalMulaiPegawaiPosisi,
    this.tanggalAkhirPegawaiPosisi,
    this.fileSkJabatan,
    this.pegawaiPosisiAktif,
    this.idOrganisasi,
    this.namaOrganisasi,
    this.descOrganisasi,
    this.parentIdOrganisasi,
    this.idCabang,
    this.namaCabang,
    this.alamatCabang,
    this.idLevelJabatan,
    this.namaLevelJabatan,
    this.idPosisiPekerjaan,
    this.namaPosisiPekerjaan,
    this.idStatusPegawai,
    this.namaStatusPegawai,
    this.idPerusahaan,
    this.apiToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        idPegawai: json["id_pegawai"],
        nomorIndukPegawai: json["nomor_induk_pegawai"],
        namaPegawai: json["nama_pegawai"],
        fotoPegawai: json["foto_pegawai"],
        tanggalMulaiPegawaiPosisi:
            DateTime.parse(json["tanggal_mulai_pegawai_posisi"]),
        tanggalAkhirPegawaiPosisi:
            DateTime.parse(json["tanggal_akhir_pegawai_posisi"]),
        fileSkJabatan: json["file_sk_jabatan"],
        pegawaiPosisiAktif: json["pegawai_posisi_aktif"],
        idOrganisasi: json["id_organisasi"],
        namaOrganisasi: json["nama_organisasi"],
        descOrganisasi: json["desc_organisasi"],
        parentIdOrganisasi: json["parent_id_organisasi"],
        idCabang: json["id_cabang"],
        namaCabang: json["nama_cabang"],
        alamatCabang: json["alamat_cabang"],
        idLevelJabatan: json["id_level_jabatan"],
        namaLevelJabatan: json["nama_level_jabatan"],
        idPosisiPekerjaan: json["id_posisi_pekerjaan"],
        namaPosisiPekerjaan: json["nama_posisi_pekerjaan"],
        idStatusPegawai: json["id_status_pegawai"],
        namaStatusPegawai: json["nama_status_pegawai"],
        idPerusahaan: json["id_perusahaan"],
        apiToken: json["api_token"],
      );

  Map<String, dynamic> toJson() => {
        "id_pegawai": idPegawai,
        "nomor_induk_pegawai": nomorIndukPegawai,
        "nama_pegawai": namaPegawai,
        "foto_pegawai": fotoPegawai,
        "tanggal_mulai_pegawai_posisi":
            "${tanggalMulaiPegawaiPosisi?.year.toString().padLeft(4, '0')}-${tanggalMulaiPegawaiPosisi?.month.toString().padLeft(2, '0')}-${tanggalMulaiPegawaiPosisi?.day.toString().padLeft(2, '0')}",
        "tanggal_akhir_pegawai_posisi":
            "${tanggalAkhirPegawaiPosisi?.year.toString().padLeft(4, '0')}-${tanggalAkhirPegawaiPosisi?.month.toString().padLeft(2, '0')}-${tanggalAkhirPegawaiPosisi?.day.toString().padLeft(2, '0')}",
        "file_sk_jabatan": fileSkJabatan,
        "pegawai_posisi_aktif": pegawaiPosisiAktif,
        "id_organisasi": idOrganisasi,
        "nama_organisasi": namaOrganisasi,
        "desc_organisasi": descOrganisasi,
        "parent_id_organisasi": parentIdOrganisasi,
        "id_cabang": idCabang,
        "nama_cabang": namaCabang,
        "alamat_cabang": alamatCabang,
        "id_level_jabatan": idLevelJabatan,
        "nama_level_jabatan": namaLevelJabatan,
        "id_posisi_pekerjaan": idPosisiPekerjaan,
        "nama_posisi_pekerjaan": namaPosisiPekerjaan,
        "id_status_pegawai": idStatusPegawai,
        "nama_status_pegawai": namaStatusPegawai,
        "id_perusahaan": idPerusahaan,
        "api_token": apiToken,
      };
}
