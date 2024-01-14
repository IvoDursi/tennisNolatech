import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage_service/local_storage_service.dart';
import 'package:mocktail/mocktail.dart';

import '../helper/local_storage_service_test_helper.dart';
import '../models/json_models.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockBox<T> extends Mock implements Box<T> {}

void main() {
  group('LocalStorageService', () {
    late MockHiveInterface? hive;
    late Box<String> box;
    late LocalStorageServiceTestHelper helper;
    late LocalStorageService service;
    setUp(() {
      hive = MockHiveInterface();
      box = MockBox<String>();
      helper = LocalStorageServiceTestHelper(mockHive: hive, mockBox: box);
      service = LocalStorageService(hive);
    });
    test('constructor returns normally', () {
      expect(
        () {
          return LocalStorageService();
        },
        returnsNormally,
      );
      expect(
        () {
          return LocalStorageService(hive);
        },
        returnsNormally,
      );
    });
    group('.delete', () {
      test('delete success', () {
        helper
          ..configureBoxHive()
          ..configureDeleteHive();

        service.delete(key: keyConst);

        verify(() => box.delete(keyConst)).called(1);
      });
    });
    group('.get', () {
      test('no data failure', () {
        helper
          ..configureBoxHive()
          ..configureGetNoDataHive();

        final either = service.get<String>(
          key: keyConst,
          fromJson: (_) => 'success',
        );

        verify(() => box.get(keyConst)).called(1);

        expect(
          either,
          const Left<void, String>(
            null,
          ),
        );
      });

      test('serialize failure', () {
        helper
          ..configureBoxHive()
          ..configureGetInvalidJsonHive();

        final either = service.get<String>(
          key: keyConst,
          fromJson: (_) => 'success',
        );

        verify(() => box.get(keyConst)).called(1);

        expect(
          either,
          const Left<void, String>(
            null,
          ),
        );
      });
      test('success', () {
        helper
          ..configureBoxHive()
          ..configureGetHive();

        final either = service.get<String>(
          key: keyConst,
          fromJson: (_) => 'success',
        );

        verify(() => box.get(keyConst)).called(1);

        expect(
          either,
          const Right<void, String>('success'),
        );
      });
    });
    group('.save', () {
      test('error', () async {
        helper
          ..configureBoxHive()
          ..configureSaveErrorHive();

        final either = await service.save(
          key: keyConst,
          value: dataJson,
        );

        verify(() => box.put(keyConst, jsonEncode(dataJson))).called(1);

        expect(
          either,
          const Left<void, void>(
            null,
          ),
        );
      });
      test('success', () async {
        helper
          ..configureBoxHive()
          ..configureSaveHive();

        final either = await service.save(
          key: keyConst,
          value: dataJson,
        );

        verify(() => box.put(keyConst, jsonEncode(dataJson))).called(1);

        expect(
          either,
          const Right<void, void>(null),
        );
      });
    });
  });
}
