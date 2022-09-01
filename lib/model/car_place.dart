class CarPlace {
  String name;
  String price;
  String kilometerHour;
  String released;
  String type;
  String engine;
  String seat;
  String condition;
  String descriptions;
  String imageAsset;
  List<String> imageUrls;

  CarPlace({
    required this.name,
    required this.price,
    required this.kilometerHour,
    required this.released,
    required this.type,
    required this.engine,
    required this.seat,
    required this.condition,
    required this.descriptions,
    required this.imageAsset,
    required this.imageUrls,
  });
}
var carPlaceList = [
  CarPlace(
    name: "Lamborghini Aventador",
    price: "\$ 999.000",
    kilometerHour: "300.000km",
    released: "12.06.2020",
    type: "Sport Car",
    engine: "5.5 / 504",
    seat: "2",
    condition: "Perfect",
    descriptions: "Lamborghini Aventador tersedia dalam pilihan mesin Bensin di Indonesia Coupe baru dari Lamborghini hadir dalam 8 varian. Bicara soal spesifikasi mesin Lamborghini Aventador, ini ditenagai dua pilihan mesin Bensin berkapasitas 6498 cc. Aventador tersedia dengan transmisi Otomatis tergantung variannya. Juga, tergantung pilihan dan jenis bahan bakar, konsumsi BBM Aventador mencapai 3.8 kmpl,4 kmpl,4.1 kmpl untuk perkotaan, 8.9 kmpl saat menjelajah perjalanan luar kota. Aventador adalah Coupe 2 seater dengan panjang 4780 mm, lebar 2265 mm, wheelbase 2700 mm.",
    imageAsset: "images/lamborghini.webp",
    imageUrls: [
      'https://imgcdn.oto.com/large/gallery/interior/21/175/lamborghini-aventador-dashboard-view-348215.jpg',
      'https://imgcdn.oto.com/large/gallery/interior/21/175/lamborghini-aventador-passenger-seat-254744.jpg',
      'https://imgcdn.oto.com/large/gallery/exterior/21/175/lamborghini-aventador-side-view-922928.jpg'
    ],
  ),
  CarPlace(
    name: "Ferrari SF90 Stradale",
    price: "\$ 959.000",
    kilometerHour: "270.000km",
    released: "04.02.2018",
    type: "Sport Car",
    engine: "4.8 / 484",
    seat: "4",
    condition: "perfect",
    descriptions: "Sistem mode berkendara pada Ferrari SF90 Stradale 2019 dikemas menggunakan fitur eManettino. Fitur ini terbagi oleh dua pilihan mode, baik itu mode berkendara maupun tombol power unit. Untuk pilihan mode berkendara masih mengikuti format mobil Ferrari saat ini, mulai dari pilihan Wet, Sport, Race, CT-Off, sampai ESC Off. Sedangkan di sisi panel haptic touch kiri terdapat empat pilihan mode drive unit yang berbeda-beda.",
    imageAsset: "images/ferrari.webp",
    imageUrls: [
      'https://stimg.cardekho.com/images/carinteriorimages/930x620/Ferrari/SF90-Stradale/7858/1591681589613/dashboard-59.jpg?tr=w-880,h-495',
      'https://stimg.cardekho.com/images/carinteriorimages/930x620/Ferrari/SF90-Stradale/7858/1591681589613/interior-image-207.jpg?tr=w-880,h-495',
      'https://stimg.cardekho.com/images/carexteriorimages/930x620/Ferrari/SF90-Stradale/7858/1591681679806/rear-view-119.jpg?tr=w-880,h-495'
    ],
  ),
  CarPlace(
    name: "Mercedes-AMG S63 Coupe",
    price: "\$ 750.000",
    kilometerHour: "240.000km",
    released: "14.08.2021",
    type: "Sedan",
    engine: "3.2 / 384",
    seat: "4",
    condition: "Perfect",
    descriptions: "Ini adalah bukti bahwa di balik parasnya yang elegan dan mewah, ia juga menyimpan performa buas. Bahkan dengan mode 4MATIC Mercedes-AMG S63 Coupe hanya membutuhkan 3,2 detik dari posisi diam untuk mencapai kecepatan 100 km/jam. Pencapaian tersebut lebih baik dari rivalnya BMW M6 Coupe yang lebih lama satu detik. Tersedia pula fitur Magic Body Control yang mendeteksi jalan rusak melalui stereo camera yang diteruskan ke Active Body Control System sehingga guncangan ketika melewati jalan rusak sangat minim. Selain itu tersedia pula tiga mode pengendaraan yaitu Comfort, Sport dan Dynamic dengan Dynamic Curve Mode.",
    imageAsset: "images/mercedes.jpg",
    imageUrls: [
      'https://cdn.carbuzz.com/gallery-images/2021-mercedes-amg-s63-coupe-side-view-carbuzz-652627.jpg',
      'https://cdn.carbuzz.com/gallery-images/2021-mercedes-amg-s63-coupe-dashboard-carbuzz-514603.jpg',
      'https://cdn.carbuzz.com/gallery-images/2021-mercedes-amg-s63-coupe-front-seats-carbuzz-514601.jpg'
    ],
  ),
  CarPlace(
    name: "Tesla Model S",
    price: "\$ 999.000",
    kilometerHour: "200.000km",
    released: "12.06.2022",
    type: "Electric",
    engine: "3.5 / 420",
    seat: "4",
    condition: "Perfect",
    descriptions: "Mobil listrik dari Amerika Serikat Tesla Model S akhirnya meluncur di Jakarta. SUV tersebut dibawa oleh importir umum mobil-mobil mewah Prestige Image Motorcars. Berbagai teknologi canggih pun disematkan di SUV buatan Amerika Serikat itu. Mulai dari sistem autopilot, hingga pencegah tabrakan dan juga pengereman otomatis. Lampu depan juga sepenuhnya sudah LED.",
    imageAsset: "images/tesla.jpg",
    imageUrls: [
      'https://images.unsplash.com/photo-1553260188-75a8d6205b6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
      'https://images.unsplash.com/photo-1617788138089-9505dfe8fa24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=1000&q=60',
      'https://images.unsplash.com/photo-1617788138405-a780a125b3d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8OHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=60'
    ],
  ),
  CarPlace(
    name: "Porsche 911",
    price: "\$ 799.000",
    kilometerHour: "250.000km",
    released: "22.02.2017",
    type: "Sport Car",
    engine: "4.1 / 422",
    seat: "4",
    condition: "Perfect",
    descriptions: "Untuk interiornya, terinspirasi dari model 911 dari 1970-an seperti dasbor baru dengan seluruh lebar antara dua tingkat sayap horizontal, bersamaan dengan rev counter yang diposisikan secara terpusat, dua display bentuk tipis tanpa bingkai, dan menampilkan informasi kepada pengemudi berukuran 10,9 inci, layar tengah Porsche Communication Management (PCM) dapat dioperasikan dengan cepat, dan tanpa menyebabkan gangguan.",
    imageAsset: "images/porsche.jpg",
    imageUrls: [
      'https://images.autofun.co.id/file1/b18ecb350bad4cba8ec3d744fe3d7065_1072x604.jpg',
      'https://images.autofun.co.id/file1/35be41a6181647619452370b91d39aa8_1072x604.jpg',
      'https://images.autofun.co.id/file1/769de443d4a94feebc95399a81010570_1072x604.jpg'
    ],
  ),
  CarPlace(
    name: "Mazda MX-5 Viata",
    price: "\$ 650.000",
    kilometerHour: "210.000km",
    released: "14.02.2017",
    type: "Sedan",
    engine: "3.1 / 304",
    seat: "4",
    condition: "Perfect",
    descriptions: "Lamborghini Aventador tersedia dalam pilihan mesin Bensin di Indonesia Coupe baru dari Lamborghini hadir dalam 8 varian. Bicara soal spesifikasi mesin Lamborghini Aventador, ini ditenagai dua pilihan mesin Bensin berkapasitas 6498 cc. Aventador tersedia dengan transmisi Otomatis tergantung variannya. Juga, tergantung pilihan dan jenis bahan bakar, konsumsi BBM Aventador mencapai 3.8 kmpl,4 kmpl,4.1 kmpl untuk perkotaan, 8.9 kmpl saat menjelajah perjalanan luar kota. Aventador adalah Coupe 2 seater dengan panjang 4780 mm, lebar 2265 mm, wheelbase 2700 mm.",
    imageAsset: "images/mazda.jpg",
    imageUrls: [
      'https://cdn.carbuzz.com/gallery-images/2022-mazda-mx-5-miata-rear-view-carbuzz-752317.jpg',
      'https://cdn.carbuzz.com/gallery-images/2022-mazda-mx-5-miata-steering-wheel-controls-carbuzz-752299.jpg',
      'https://cdn.carbuzz.com/gallery-images/2022-mazda-mx-5-miata-central-console-carbuzz-507514.jpg'
    ],
  ),

  CarPlace(
    name: "Chevrolet Corvette Z06",
    price: "\$ 700.000",
    kilometerHour: "250.000km",
    released: "14.02.2018",
    type: "Sport Car",
    engine: "4.1 / 404",
    seat: "4",
    condition: "Perfect",
    descriptions: "Lamborghini Aventador tersedia dalam pilihan mesin Bensin di Indonesia Coupe baru dari Lamborghini hadir dalam 8 varian. Bicara soal spesifikasi mesin Lamborghini Aventador, ini ditenagai dua pilihan mesin Bensin berkapasitas 6498 cc. Aventador tersedia dengan transmisi Otomatis tergantung variannya. Juga, tergantung pilihan dan jenis bahan bakar, konsumsi BBM Aventador mencapai 3.8 kmpl,4 kmpl,4.1 kmpl untuk perkotaan, 8.9 kmpl saat menjelajah perjalanan luar kota. Aventador adalah Coupe 2 seater dengan panjang 4780 mm, lebar 2265 mm, wheelbase 2700 mm.",
    imageAsset: "images/chevrolet.jpg",
    imageUrls: [
      'https://cdn.carbuzz.com/gallery-images/2023-chevrolet-corvette-z06-convertible-rear-perspective-driving-carbuzz-911151.jpg',
      'https://cdn.carbuzz.com/gallery-images/2023-chevrolet-corvette-z06-convertible-aft-view-carbuzz-911267.jpg',
      'https://cdn.carbuzz.com/gallery-images/2023-chevrolet-corvette-z06-convertible-spoiler-carbuzz-911130.jpg'
    ],
  ),
];