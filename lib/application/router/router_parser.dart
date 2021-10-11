import 'package:building/application/router/ui_pages.dart';
import 'package:flutter/cupertino.dart';

class BuildingParser extends RouteInformationParser<PageConfiguration>{
  @override
  Future<PageConfiguration> parseRouteInformation(RouteInformation routeInformation) async{

    final uri = Uri.parse(routeInformation.location ?? '');
    if (uri.pathSegments.isEmpty) return SplashConfig();//splashPageConfiguration;

    final path = '/' + uri.pathSegments[0];

    switch (path){
      case SplashPath: return SplashConfig();//splashPageConfiguration;
      case LoginPath : return LoginConfig();//loginPageConfiguration;
      case SignUpPath : return SignUpConfig();//signUpPageConfiguration;
      case UserProfilePath : return UserProfileConfig();
      case HomePath : return HomeConfig();//homePageConfiguration;
      default : return SplashConfig();//splashPageConfiguration;
    }

  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    final location = configuration.map(
        splash: (splash)=>  splash.path,
        login: (login)=> login.path,
        signUp: (signUp)=>signUp.path,
        userProfile: (userProfile) => userProfile.path,
        home: (home) => home.path);
    return RouteInformation(location: location);
  }
}