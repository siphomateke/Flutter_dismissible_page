import 'dart:math';

import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DismissiblePageModel {
  DismissiblePageModel() {
    stories = [
      StoryModel(title: 'Random'),
      StoryModel(title: 'Photos', imageUrl: randomNature),
      StoryModel(title: 'From', imageUrl: randomFood),
      StoryModel(title: 'Unsplash', imageUrl: randomNature),
    ];
  }

  String get randomFood =>
      'https://source.unsplash.com/collection/1424340/${Random().nextInt(20) + 400}x${Random().nextInt(20) + 600}';

  String get randomNature =>
      'https://source.unsplash.com/collection/1319040/${Random().nextInt(20) + 400}x${Random().nextInt(20) + 600}';

  List<StoryModel> stories = [];
  final contacts = {
    'GitHub': 'https://github.com/Tkko',
    'LinkedIn': 'https://www.linkedin.com/in/thornike/',
    'Medium': 'https://thornike.medium.com/',
    'Pub': 'https://pub.dev/publishers/fman.ge/packages',
  };

  Duration transitionDuration = const Duration(milliseconds: 250);
  Duration reverseTransitionDuration = const Duration(milliseconds: 250);
  bool isFullScreen = true;
  bool disabled = false;
  double startingOpacity = 1;
  double minScale = .85;
  double minRadius = 7;
  double maxRadius = 30;
  double maxTransformValue = .5;
  double dragSensitivity = .7;
  Color backgroundColor = Colors.black;
  DismissiblePageDismissDirection direction =
      DismissiblePageDismissDirection.vertical;
  Map<DismissiblePageDismissDirection, double> dismissThresholds =
      const <DismissiblePageDismissDirection, double>{};
  DragStartBehavior dragStartBehavior = DragStartBehavior.down;
  Duration reverseDuration = const Duration(milliseconds: 200);
  HitTestBehavior behavior = HitTestBehavior.opaque;
}

class StoryModel {
  final String altUrl =
      'https://user-images.githubusercontent.com/26390946/155841439-cba70441-0c45-4a28-806d-9234aa66bea0.png';
  final storyId = UniqueKey();
  final String title;
  final String? imageUrl;

  StoryModel({
    required this.title,
    this.imageUrl,
  });
}
