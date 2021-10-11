import 'package:building/application/router/page_action.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_pages.freezed.dart';

//enum Pages{Splash,Login,SignUp,Home}

// class PageConfiguration {
//   final String key;
//   final String path;
//   final Pages uiPage;
//   PageAction? currentPageAction;
//
//   PageConfiguration({required this.key, required this.path, required this.uiPage, this.currentPageAction});
// @override
//   String toString() {
//     return 'Page configuration page= $uiPage ';
//   }
// }

const String SplashPath = '/splash';
const String LoginPath = '/login';
const String SignUpPath = '/signUp';
const String UserProfilePath = '/userProfile';
const String HomePath = '/home';

@freezed
class PageConfiguration with _$PageConfiguration{
  const PageConfiguration._();
  const factory PageConfiguration.splash({@Default(NoPageAction())PageAction currentPageAction}) = SplashConfig;
  const factory PageConfiguration.login({@Default(NoPageAction()) PageAction currentPageAction}) = LoginConfig;
  const factory PageConfiguration.signUp({@Default(NoPageAction()) PageAction currentPageAction}) = SignUpConfig;
  const factory PageConfiguration.userProfile({@Default(NoPageAction()) PageAction currentPageAction}) = UserProfileConfig;
  const factory PageConfiguration.home({@Default(NoPageAction()) PageAction currentPageAction}) = HomeConfig;

  String get path => this.map(
      splash: (_)=>SplashPath,
      login: (_) => LoginPath,
      signUp: (_) => SignUpPath,
      userProfile: (_) => UserProfilePath,
      home: (_) => HomePath);
}





// PageConfiguration splashPageConfiguration = PageConfiguration(key: 'Splash', path: SplashPath, uiPage: Pages.Splash);
// PageConfiguration loginPageConfiguration = PageConfiguration(key: 'Login', path: LoginPath, uiPage: Pages.Login);
// PageConfiguration signUpPageConfiguration = PageConfiguration(key: 'SignUp', path: SignUpPath, uiPage: Pages.SignUp);
// PageConfiguration homePageConfiguration = PageConfiguration(key: 'Home', path: HomePath, uiPage: Pages.Home);

// abstract class PageConfiguration {
//   const PageConfiguration()
// }
