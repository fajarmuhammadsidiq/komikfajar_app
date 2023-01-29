import 'package:get/get.dart';

import 'package:komikfajar_app/app/modules/beranda/bindings/beranda_binding.dart';
import 'package:komikfajar_app/app/modules/beranda/views/beranda_view.dart';
import 'package:komikfajar_app/app/modules/berandapopuler/bindings/berandapopuler_binding.dart';
import 'package:komikfajar_app/app/modules/berandapopuler/views/berandapopuler_view.dart';
import 'package:komikfajar_app/app/modules/berandarekomendasi/bindings/berandarekomendasi_binding.dart';
import 'package:komikfajar_app/app/modules/berandarekomendasi/views/berandarekomendasi_view.dart';
import 'package:komikfajar_app/app/modules/detailrekom/bindings/detailrekom_binding.dart';
import 'package:komikfajar_app/app/modules/detailrekom/views/detailrekom_view.dart';
import 'package:komikfajar_app/app/modules/home/bindings/home_binding.dart';
import 'package:komikfajar_app/app/modules/home/views/home_view.dart';
import 'package:komikfajar_app/app/modules/intro/bindings/intro_binding.dart';
import 'package:komikfajar_app/app/modules/intro/views/intro_view.dart';
import 'package:komikfajar_app/app/modules/manga/bindings/manga_binding.dart';
import 'package:komikfajar_app/app/modules/manga/views/manga_view.dart';
import 'package:komikfajar_app/app/modules/manhua/bindings/manhua_binding.dart';
import 'package:komikfajar_app/app/modules/manhua/views/manhua_view.dart';
import 'package:komikfajar_app/app/modules/manhwa/bindings/manhwa_binding.dart';
import 'package:komikfajar_app/app/modules/manhwa/views/manhwa_view.dart';
import 'package:komikfajar_app/app/modules/viewrekom/bindings/viewrekom_binding.dart';
import 'package:komikfajar_app/app/modules/viewrekom/views/viewrekom_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BERANDA,
      page: () => BerandaView(),
      binding: BerandaBinding(),
    ),
    GetPage(
      name: _Paths.VIEWREKOM,
      page: () => ViewrekomView(),
      binding: ViewrekomBinding(),
    ),
    GetPage(
      name: _Paths.DETAILREKOM,
      page: () => DetailrekomView(),
      binding: DetailrekomBinding(),
    ),
    GetPage(
      name: _Paths.MANHWA,
      page: () => ManhwaView(),
      binding: ManhwaBinding(),
    ),
    GetPage(
      name: _Paths.MANHUA,
      page: () => ManhuaView(),
      binding: ManhuaBinding(),
    ),
    GetPage(
      name: _Paths.MANGA,
      page: () => MangaView(),
      binding: MangaBinding(),
    ),
    GetPage(
      name: _Paths.INTRO,
      page: () => IntroView(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: _Paths.BERANDAPOPULER,
      page: () => BerandapopulerView(),
      binding: BerandapopulerBinding(),
    ),
    GetPage(
      name: _Paths.BERANDAREKOMENDASI,
      page: () => BerandarekomendasiView(),
      binding: BerandarekomendasiBinding(),
    ),
  ];
}
