class Beverages {
  final int id;
  final String name;
  final String desc;
  final String bahan1;
  final String titleBahan1;
  final String bahan2;
  final String titleBahan2;
  final String bahan3;
  final String titleBahan3;
  final String bahan4;
  final String titleBahan4;
  final String cara;
  final String imgUrl;

  const Beverages(
      {required this.id,
      required this.name,
      required this.desc,
      required this.bahan1,
      required this.bahan2,
      required this.bahan3,
      required this.bahan4,
      required this.titleBahan1,
      required this.titleBahan2,
      required this.titleBahan3,
      required this.titleBahan4,
      required this.cara,
      required this.imgUrl});
}

const List<Beverages> beveragesData = <Beverages>[
  Beverages(
      id: 1,
      name: "Es Cendol",
      desc:
          "Minuman satu ini sangat populer dan terkenal di seluruh penjuru Indonesia. Es ini dibuat dari tepung beras dan hunkwe.Lalu biasanya ditambah pewarna makanan hijau yang membuat tampilannya lebih menarik. Penyajiannya dicampur dengan santan yang sudah dicampur daun pandan, gula merah cair, dan es batu.",
      bahan1:
          "30 gr tepung beras (asli 70 gr)\n60 gr tepung tapioka\n90 gr tepung hunkwe (asli 40 gr)\nSejumput garam\n700 ml air (asli campur jus pandan)\nEssens pandan\n",
      bahan2: "200 gr gula merah\n3 sdm gula pasir\n200 ml air\nDaun pandan",
      bahan3: "200 ml santan kara\n300 ml air\nSejumput garam\nDaun pandan",
      bahan4: "",
      titleBahan1: "Bahan",
      titleBahan2: "Kuah Gula Merah",
      titleBahan3: "Kuah Santan",
      titleBahan4: "",
      cara:
          "1. Membuat cendol: campur tepung dan garam aduk, masukkan air sedikit demi sedikit lalu tambahkan essens pandan, saring agar tekstur tidak kasar.\n2. Masak adonan hingga kental dan matang, siapkan air dalam mangkuk dan beri es batu. Tuang adonan pada cetakan dan tekan di atas air es, hingga habis.\n3. Membuat kuah gula merah: masak semua bahan hingga mencair dan sedikit kental, angkat sisihkan.\n4. Membuat kuah santan: campur semua bahan aduk hingga mendidih. Jangan sampai santan pecah, jika sudah mendidih matikan.\n5. Penyajian: ambil gelas beri air gula, masukkan cendol dan beri kuah, tambahkan es, sajikan.",
      imgUrl: "https://cdn-cas.orami.co.id/parenting/images/o1aj9qdyyjnspzwhuggyc3mngfqoamxmklraprpgsctbtu.width-800.jpg"),


  Beverages(
      id: 2,
      name: "Es Pisang Ijo",
      desc:
          "Tidak perlu jauh-jauh ke Makassar untuk mendapatkan resep minuman segar tradisional Indonesia yang satu ini, karena Moms sudah bisa membuatnya sendiri di rumah. Terbuat dari pisang raja yang dibalut dengan adonan tepung terigu dan sagu, serta rebusan air pandan yang membuat warnanya menjadi hijau. Penyajiannya tinggal ditambahkan es serut dan sirup manis berwarna merah. Segar!",
      bahan1:
          "130 gr tepung beras \n160 gr terigu \n1 sdm tapioka \n1 bungkus santan instan 65 ml \n3 sdm minyak sayur atau margarin \n550 ml air \n50 gr gula pasir \n1/2 sdt garam \nSecukupnya pasta pandan \n ",
      bahan2: "200 gr gula merah\n3 sdm gula pasir\n200 ml air\nDaun pandan",
      bahan3: "200 ml santan kara\n300 ml air\nSejumput garam\nDaun pandan",
      bahan4: "",
      titleBahan1: "Bahan",
      titleBahan2: "Kuah Gula Merah",
      titleBahan3: "Kuah Santan",
      titleBahan4: "",
      cara:
          "1. Membuat cendol: campur tepung dan garam aduk, masukkan air sedikit demi sedikit lalu tambahkan essens pandan, saring agar tekstur tidak kasar.\n2. Masak adonan hingga kental dan matang, siapkan air dalam mangkuk dan beri es batu. Tuang adonan pada cetakan dan tekan di atas air es, hingga habis.\n3. Membuat kuah gula merah: masak semua bahan hingga mencair dan sedikit kental, angkat sisihkan.\n4. Membuat kuah santan: campur semua bahan aduk hingga mendidih. Jangan sampai santan pecah, jika sudah mendidih matikan.\n5. Penyajian: ambil gelas beri air gula, masukkan cendol dan beri kuah, tambahkan es, sajikan.",
      imgUrl: "https://cdn-cas.orami.co.id/parenting/images/terlariss_es_pisang_ijo_asli_makassar.width-800.jpg"),

      Beverages(
      id: 3,
      name: "Es Kolak Pisang",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
      imgUrl: "https://cdn-cas.orami.co.id/parenting/images/kolak1.width-800.jpg"),

      Beverages(
      id: 4,
      name: "Es Selendang Mayang",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
      imgUrl: "https://cdn-cas.orami.co.id/parenting/images/resep-es-selendang-mayang_KWElLVn.width-800.jpg"),

      Beverages(
      id: 5,
      name: "Es Timun Suri",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
      imgUrl: "https://cdn-cas.orami.co.id/parenting/images/2308552d-landscape.width-800.png"),

      Beverages(
      id: 6,
      name: "Es Oyen",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
    imgUrl: "https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/kulinear/2021/06/194299028_1955009007998883_151124177689623577_n.jpg"),

    Beverages(
      id: 7,
      name: "Es Kacang Merah",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
    imgUrl: "https://cdn-cas.orami.co.id/parenting/images/es_kacang_merah.width-800.jpg"),

    Beverages(
      id: 8,
      name: "Es Lidah Buaya",
      desc:
          "",
      bahan1:
          "",
      bahan2: "",
      bahan3: "",
      bahan4: "",
      titleBahan1: "",
      titleBahan2: "",
      titleBahan3: "",
      titleBahan4: "",
      cara:
          "",
    imgUrl: "https://cdn-cas.orami.co.id/parenting/images/es-lidah-buaya_20180602_133950.width-800.jpg"),
];
