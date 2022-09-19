import '../screens/buat_rab_perencanaan/buat_rab_perencanaan.dart';
import '../screens/detail_profile_screen/detail_profile_screen.dart';
import '../screens/detail_proyek_screen/detail_proyek_screen.dart';
import '../screens/edit_profile_screen/edit_profile_screen.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/kategori_baru_screen/katgeori_baru_screen.dart';
import '../screens/koleksi_screen/koleksi_screen.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/navigation/navigation.dart';
import '../screens/onboarding_screen/onboarding_screen.dart';
import '../screens/order_screen/order_screen.dart';
import '../screens/paket_screen/paket_screen.dart';
import '../screens/poin_screen/poin_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/proyek_baru_penawaran/proyek_baru_penawaran.dart';
import '../screens/proyek_baru_perencanaan/proyek_baru_perencanaan.dart';
import '../screens/proyek_screen/proyek_screen.dart';
import '../screens/register_screen/register_screen.dart';
import '../screens/riwayat_poin_screen/riwayat_poin_screen.dart';
import '../screens/token_listrik_screen/token_listrik_screen.dart';
import '../screens/tukar_akun_premium_screen/tukar_akun_premium_screen.dart';
import '../screens/tukar_indihome_screen/tukar_indihome_screen.dart';
import '../screens/tukar_merchandise_screen/tukar_merchandise_screen.dart';
import '../screens/tukar_poin_sukses_screen/tukar_poin_sukses_screen.dart';
import '../screens/tukar_pulsa_screen/tukar_pulsa_screen.dart';
import '../screens/tukar_wallet_screen/tukar_wallet_screen.dart';
import 'route_name.dart';

class AppPage {
  static final pages = {
    RouteName.onBoardingScreen: (context) => const OnBoardingScreen(),
    RouteName.loginScreen: (context) => const LoginScreen(),
    RouteName.registerScreen: (context) => const RegisterScreen(),
    RouteName.navigation: (context) => const Navigation(),
    RouteName.homeScreen: (context) => const HomeScreen(),
    RouteName.koleksi: (context) => const KoleksiScreen(),
    RouteName.profile: (context) => const ProfileScreen(),
    RouteName.detailProfile: (context) => const DetailProfileScreen(),
    RouteName.paket: (context) => const PaketScreen(),
    RouteName.order: (context) => const OrderScreen(),
    RouteName.penawaran: (context) => const ProyekBaruPenawaran(),
    RouteName.perencanaan: (context) => const ProyekBaruPerencanaan(),
    RouteName.proyek: (context) => const ProyekScreen(),
    RouteName.detailProyek: (context) => const DetailProyekScreen(),
    RouteName.buatRABPerencanaan: (context) => const BuatRABPerencanaan(),
    RouteName.buatKategori: (context) => const KategoriBaruScreen(),
    RouteName.editProfil: (context) => const EditProfileScreen(),
    RouteName.riwayatPoin: (context) => const RiwayatPoinScreen(),
    RouteName.poin: (context) => const PoinScreen(),
    RouteName.tukarAkunPremium: (context) => const TukarAkunPremiumScreen(),
    RouteName.tukarIndihome: (context) => const TukarIndihomeScreen(),
    RouteName.tukarMerchandise: (context) => const TukarMerchandiseScreen(),
    RouteName.tukarPulsa: (context) => const TukarPulsaScreen(),
    RouteName.tukarWallet: (context) => const TukarWalletScreen(),
    RouteName.tukarSukses: (context) => const TukarPoinSuksesScreen(),
    RouteName.tukarListrik: (context) => const TokenListrikScreen(),
  };
}
