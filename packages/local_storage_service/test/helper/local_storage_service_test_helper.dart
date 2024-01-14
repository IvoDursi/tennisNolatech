import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

import '../models/json_models.dart';

class LocalStorageServiceTestHelper {
  LocalStorageServiceTestHelper({
    required this.mockHive,
    required this.mockBox,
  });
  late final HiveInterface? mockHive;
  late final Box<String> mockBox;

  void configureBoxHive() {
    when(() => mockHive!.box<String>('appBox')).thenReturn(mockBox);
  }

  void configureDeleteHive() {
    when(() => mockBox.delete(keyConst)).thenAnswer((_) async {});
  }

  void configureGetHive() {
    when(() => mockBox.get(keyConst)).thenReturn(jsonEncode(dataJson));
  }

  void configureGetNoDataHive() {
    when(() => mockBox.get(keyConst)).thenReturn(null);
  }

  void configureGetInvalidJsonHive() {
    when(() => mockBox.get(keyConst)).thenReturn('Invalid json');
  }

  void configureSaveHive() {
    when(
      () => mockBox.put(keyConst, jsonEncode(dataJson)),
    ).thenAnswer((_) async {});
  }

  void configureSaveWithCustomBoxHive() {
    when(
      () => mockBox.put(keyConst, jsonEncode(dataJson)),
    ).thenAnswer((_) async {});
  }

  void configureSaveErrorHive() {
    when(
      () => mockBox.put(keyConst, jsonEncode(dataJson)),
    ).thenThrow('Error');
  }
}
