import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator/app_state.dart';
import 'package:navigator/router/ui_pages.dart';
import 'package:navigator/ui/phone_auth.dart';
import 'package:navigator/ui/Home/Layout.dart';
import 'package:navigator/ui/Home/SubModules/Analytics.dart';
import 'package:navigator/ui/Home/SubModules/Orders/Orderlist.dart';
import 'package:navigator/ui/Home/SubModules/Orders/OrderDetails.dart';
import 'package:navigator/ui/Home/SubModules/Profile.dart';
import 'package:navigator/ui/Home/SubModules/ProfileEdit.dart';
import 'package:navigator/ui/Menu/AddMenu.dart';
import 'package:navigator/ui/Menu/update.dart';
import 'package:navigator/ui/Menu/MenuItem/MenuDetails.dart';
import 'package:navigator/ui/Menu/MenuItem/addItem.dart';
import 'package:navigator/ui/Menu/MenuItem/updateItem.dart';
import 'package:navigator/ui/Support/aboutUs.dart';
import 'package:navigator/ui/Support/privacy.dart';
import 'package:navigator/ui/Support/terms.dart';

class NavigationRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PageConfiguration> {
   final List<Page> _pages = [];

  @override
  final GlobalKey<NavigatorState> navigatorKey;
  final AppState appState;

  NavigationRouterDelegate(this.appState) : navigatorKey = GlobalKey() {
    appState.addListener(() {
      notifyListeners();
    });
  }

  List<MaterialPage> get pages => List.unmodifiable(_pages);

  int numPages() => pages.length;

  @override
  PageConfiguration get currentConfiguration =>
      _pages.last.arguments as PageConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage,
      pages: buildPages(),
    );
  }

  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }
    if (canPop()) {
      pop();
      return true;
    } else {
      return false;
    }
  }

  void _removePage(MaterialPage page) {
    if (page != null) {
      _pages.remove(page);
    }
  }

  void pop() {
    if (canPop()) {
      _removePage(pages.last);
    }
  }

  bool canPop() {
    return _pages.length > 1;
  }

  @override
  Future<bool> popRoute() {
    if (canPop()) {
      _removePage(pages.last);
      return Future.value(true);
    }
    return Future.value(false);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
      child: child,
      key: ValueKey(pageConfig.key),
      name: pageConfig.path,
      arguments: pageConfig,
    );
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    _pages.add(
      _createPage(child, pageConfig),
    );
  }

  void addPage(PageConfiguration pageConfig) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).uiPages !=
            pageConfig.uiPages;
    if (shouldAddPage) {
      switch (pageConfig.uiPages!) {
        case Pages.PhoneAuth:
          _addPageData(PhoneAuth(), PhoneAuthConfig);
          break;
        case Pages.Layout:
          _addPageData(Layout(), LayoutConfig);
          break;
        case Pages.Analytics:
          _addPageData(Analytics(), AnalyticsConfig);
          break;
        case Pages.Orders:
          _addPageData(Orders(), OrdersConfig);
          break;
        case Pages.OrdersDetails:
        // _addPageData(OrderDetails(), OrdersDetailsConfig);
        break;
        case Pages.Profile:
          _addPageData(Profile(), ProfileConfig);
          break;
        case Pages.ProfileEdit:
          _addPageData(ProfileEdit(), ProfileEditConfig);
          break;
        case Pages.UpdateMenu:
          _addPageData(UpdateMenu(), UpdateMenuConfig);
          break;
        case Pages.AddMenu:
          _addPageData(AddMenu(), AddMenuConfig);
          break;
        case Pages.MenuDetails:
          _addPageData(MenuDetails(), MenuDetailsConfig);
          break;
        case Pages.AddItems:
          _addPageData(AddItems(), AddItemsConfig);
          break;
        case Pages.UpdateItem:
          _addPageData(UpdateItem(), UpdateItemsConfig);
          break;
        case Pages.Terms:
          _addPageData(Terms(), TermsConfig);
          break;
        case Pages.Policy:
          _addPageData(Policy(), PolicyConfig);
          break;
        case Pages.AboutUs:
          _addPageData(AboutUs(), PhoneAuthConfig);
          break;
      }
    }
  }

  void replace(PageConfiguration newRoute) {
    if (_pages.isNotEmpty) {
      _pages.removeLast();
    }
    addPage(newRoute);
  }

  void setPath(List<MaterialPage> path) {
    _pages.clear();
    _pages.addAll(path);
  }

  void replaceAll(PageConfiguration newRoute) {
    setNewRoutePath(newRoute);
  }

  void push(PageConfiguration newRoute) {
    addPage(newRoute);
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    _addPageData(child, newRoute);
  }

  void addAll(List<PageConfiguration> routes) {
    _pages.clear();
    routes.forEach((route) {
      addPage(route);
    });
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).uiPages !=
            configuration.uiPages;
    if (shouldAddPage) {
      _pages.clear();
      addPage(configuration);
    }
    return SynchronousFuture(null);
  }

  void _setPageAction(PageAction action) {
    switch (action.page!.uiPages!) {
      case Pages.PhoneAuth:
        PhoneAuthConfig.currentPageAction = action;
        break;
      case Pages.Layout:
        LayoutConfig.currentPageAction = action;
        break;
      case Pages.Analytics:
        AnalyticsConfig.currentPageAction = action;
        break;
      case Pages.Orders:
        OrdersConfig.currentPageAction = action;
        break;
      case Pages.OrdersDetails:
      // _addPageData(OrderDetails(), OrdersDetailsConfig);
      break;
      case Pages.Profile:
        ProfileConfig.currentPageAction = action;
        break;
      case Pages.ProfileEdit:
        ProfileEditConfig.currentPageAction = action;
        break;
      case Pages.UpdateMenu:
        UpdateMenuConfig.currentPageAction = action;
        break;
      case Pages.AddMenu:
        AddMenuConfig.currentPageAction = action;
        break;
      case Pages.MenuDetails:
        MenuDetailsConfig.currentPageAction = action;
        break;
      case Pages.AddItems:
        AddItemsConfig.currentPageAction = action;
        break;
      case Pages.UpdateItem:
        UpdateItemsConfig.currentPageAction = action;
        break;
      case Pages.Terms:
        TermsConfig.currentPageAction = action;
        break;
      case Pages.Policy:
        PolicyConfig.currentPageAction = action;
        break;
      case Pages.AboutUs:
        AboutsUsConfig.currentPageAction = action;
        break;
    }
  }

  List<Page> buildPages() {
    switch (appState.currentAction.state) {
      case PageState.none:
        break;
      case PageState.addPage:
        _setPageAction(appState.currentAction);
        addPage(appState.currentAction.page!);
        break;
      case PageState.pop:
        pop();
        break;
      case PageState.replace:
        _setPageAction(appState.currentAction);
        replace(appState.currentAction.page!);
        break;
      case PageState.replaceAll:
        _setPageAction(appState.currentAction);
        replaceAll(appState.currentAction.page!);
        break;
      case PageState.addWidget:
        _setPageAction(appState.currentAction);
        pushWidget(
            appState.currentAction.widget!, appState.currentAction.page!);
        break;
      case PageState.addAll:
        addAll(appState.currentAction.pages!);
        break;
    }
    appState.resetCurrentAction();
    return List.of(_pages);
  }

  void parseRoute(Uri uri) {
    if (uri.pathSegments.isEmpty) {
      setNewRoutePath(PhoneAuthConfig);
      return;
    }
  }
}
