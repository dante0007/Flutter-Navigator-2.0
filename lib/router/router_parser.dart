import 'package:flutter/material.dart';
import 'package:navigator/router/ui_pages.dart';

class NavigatorParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return PhoneAuthConfig;
    }

    final path = '/' + uri.pathSegments[0];
    switch (path) {
      case PhoneAuthPath:
        return PhoneAuthConfig;
      case LayoutPath:
        return LayoutConfig;
      case AnalyticsPath:
        return AnalyticsConfig;
      case OrdersPath:
        return OrdersConfig;
      case OrdersDetailsPath:
        return OrdersDetailsConfig;
      case ProfilePath:
        return ProfileConfig;
      case ProfileEditPath:
        return ProfileEditConfig;
      case AddMenuPath:
        return AddMenuConfig;
      case UpdateMenuPath:
        return UpdateMenuConfig;
      case MenuDetailsPath:
        return MenuDetailsConfig;
      case AddItemPath:
        return AddItemsConfig;
      case UpdateItemPath:
        return UpdateItemsConfig;
      case TermsPath:
        return TermsConfig;
      case PolicyPath:
        return PolicyConfig;
      case AboutUsPath:
        return AboutsUsConfig;
      default:
        return PhoneAuthConfig;
    }
    
  }

  @override
  RouteInformation? restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPages!) {
      case Pages.PhoneAuth:
        return const RouteInformation(location: PhoneAuthPath);
      case Pages.Layout:
        return const RouteInformation(location: LayoutPath);
      case Pages.Analytics:
        return const RouteInformation(location: AnalyticsPath);
      case Pages.Orders:
        return const RouteInformation(location: OrdersPath);
      case Pages.OrdersDetails:
        return const RouteInformation(location: OrdersDetailsPath);
      case Pages.Profile:
        return const RouteInformation(location: ProfilePath);
      case Pages.ProfileEdit:
        return const RouteInformation(location: ProfileEditPath);
      case Pages.UpdateMenu:
        return const RouteInformation(location: UpdateMenuPath);
      case Pages.AddMenu:
        return const RouteInformation(location: AddMenuPath);
      case Pages.MenuDetails:
        return const RouteInformation(location: MenuDetailsPath);
      case Pages.AddItems:
        return const RouteInformation(location: AddItemPath);
      case Pages.UpdateItem:
        return const RouteInformation(location: UpdateItemPath);
      case Pages.Terms:
        return const RouteInformation(location: TermsPath);
      case Pages.Policy:
        return const RouteInformation(location: PolicyPath);
      case Pages.AboutUs:
        return const RouteInformation(location: AboutUsPath);
      default:
        return const RouteInformation(location: PhoneAuthPath);
    }
  }
}
