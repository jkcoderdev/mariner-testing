import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:mariner/routes/guards/auth_guard.dart';

import 'package:mariner/pages/main_page.dart';
import 'package:mariner/pages/login_page.dart';
import 'package:mariner/pages/logout_page.dart';

import 'package:mariner/pages/module_page.dart';

import 'package:mariner/pages/members/users_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      guards: [AuthGuard()],
      initial: true,
      children: [
        AutoRoute(
          page: ModuleRoute.page,
          path: 'members',
          children: [
            AutoRoute(
              page: UsersRoute.page,
              path: 'users',
              initial: true
            )
          ]
        )
      ]
    ),
    AutoRoute(
      page: LoginRoute.page,
      path: '/login',
    ),
    AutoRoute(
      page: LogoutRoute.page,
      path: '/logout',
    )
  ];
}