import 'package:flutter/material.dart';

import 'router.dart';

import 'constants.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exercise 2',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        initialRoute: homeRoute,
        onGenerateRoute: createRoute,
      ),
    );
