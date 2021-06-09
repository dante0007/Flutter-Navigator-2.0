import 'package:flutter/cupertino.dart';
import '../app_state.dart';

const String PhoneAuthPath = '/phoneAuthPath';
const String LayoutPath = '/layout';
const String AnalyticsPath = '/analytics';
const String OrdersPath = '/orders';
const String OrdersDetailsPath = '/ordersDetails';
const String ProfilePath = '/profile';
const String ProfileEditPath  = '/profilePath';
const String AddMenuPath = '/addMenuPath';
const String UpdateMenuPath = '/updateMenu';
const String MenuDetailsPath = '/menuDetails';
const String AddItemPath = '/addItems';
const String UpdateItemPath = '/updateItems';
const String TermsPath = '/terms';
const String PolicyPath = '/policy';
const String AboutUsPath = '/aboutUs';

enum Pages {
  PhoneAuth,
  Layout,
  Analytics,
  Orders,
  OrdersDetails,
  Profile,
  ProfileEdit,
  AddMenu,
  UpdateMenu,
  MenuDetails,
  AddItems,
  UpdateItem,
  Terms,
  Policy,
  AboutUs,
}

class PageConfiguration{
  final String? key;
  final String? path;
  final Pages? uiPages;
  PageAction? currentPageAction;

  PageConfiguration({@required this.key, @required this.path,@required this.uiPages, this.currentPageAction});
  
}

PageConfiguration PhoneAuthConfig = PageConfiguration(key: 'PhoneAuth', path: PhoneAuthPath, uiPages: Pages.PhoneAuth,currentPageAction: null);
PageConfiguration LayoutConfig = PageConfiguration(key: 'Layout', path: LayoutPath, uiPages: Pages.Layout,currentPageAction: null);
PageConfiguration AnalyticsConfig = PageConfiguration(key: 'Analytics', path: AnalyticsPath, uiPages: Pages.Analytics,currentPageAction: null);
PageConfiguration OrdersConfig = PageConfiguration(key: 'Orders', path: OrdersPath, uiPages: Pages.Orders,currentPageAction: null);
PageConfiguration OrdersDetailsConfig = PageConfiguration(key: 'OrdersDetails', path: OrdersDetailsPath, uiPages: Pages.OrdersDetails,currentPageAction: null);
PageConfiguration ProfileConfig = PageConfiguration(key: 'Profile', path: ProfilePath, uiPages: Pages.Profile,currentPageAction: null);
PageConfiguration ProfileEditConfig = PageConfiguration(key: 'ProfileEdit', path: ProfileEditPath, uiPages: Pages.ProfileEdit,currentPageAction: null);
PageConfiguration AddMenuConfig = PageConfiguration(key: 'AddMenu', path: AddMenuPath, uiPages: Pages.AddMenu,currentPageAction: null);
PageConfiguration UpdateMenuConfig = PageConfiguration(key: 'UpdateMenu', path: UpdateMenuPath, uiPages: Pages.UpdateMenu,currentPageAction: null);
PageConfiguration MenuDetailsConfig = PageConfiguration(key: 'MenuDetails', path: MenuDetailsPath, uiPages: Pages.MenuDetails,currentPageAction: null);
PageConfiguration AddItemsConfig = PageConfiguration(key: 'AddItems', path: AddItemPath, uiPages: Pages.AddItems,currentPageAction: null);
PageConfiguration UpdateItemsConfig = PageConfiguration(key: 'UpdateItems', path: UpdateItemPath, uiPages: Pages.UpdateItem,currentPageAction: null);
PageConfiguration TermsConfig = PageConfiguration(key: 'Terms', path: TermsPath, uiPages: Pages.Terms,currentPageAction: null);
PageConfiguration PolicyConfig = PageConfiguration(key: 'Policy', path: PolicyPath, uiPages: Pages.Policy,currentPageAction: null);
PageConfiguration AboutsUsConfig = PageConfiguration(key: 'AboutUs', path: AboutUsPath, uiPages: Pages.AboutUs,);