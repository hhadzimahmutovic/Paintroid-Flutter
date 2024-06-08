// Mocks generated by Mockito 5.4.4 from annotations
// in paintroid/test/unit/provider/save_as_raster_image_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Dart imports:
import 'dart:async' as _i4;
import 'dart:io' as _i10;
import 'dart:typed_data' as _i7;
import 'dart:ui' as _i5;

// Package imports:
import 'package:mockito/mockito.dart' as _i1;
import 'package:oxidized/oxidized.dart' as _i2;

// Project imports:
import 'package:paintroid/core/providers/object/file_service.dart' as _i9;
import 'package:paintroid/core/providers/object/image_service.dart' as _i3;
import 'package:paintroid/core/utils/failure.dart' as _i6;

import 'package:paintroid/core/providers/object/permission_service.dart'
    as _i11;
import 'package:paintroid/core/providers/object/photo_library_service.dart'
    as _i8;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResult_0<T extends Object, E extends Object> extends _i1.SmartFake
    implements _i2.Result<T, E> {
  _FakeResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IImageService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIImageService extends _i1.Mock implements _i3.IImageService {
  MockIImageService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i5.Image, _i6.Failure>> import(
          _i7.Uint8List? fileData) =>
      (super.noSuchMethod(
        Invocation.method(
          #import,
          [fileData],
        ),
        returnValue: _i4.Future<_i2.Result<_i5.Image, _i6.Failure>>.value(
            _FakeResult_0<_i5.Image, _i6.Failure>(
          this,
          Invocation.method(
            #import,
            [fileData],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i5.Image, _i6.Failure>>);

  @override
  _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>> exportAsJpg(
    _i5.Image? image,
    int? quality,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #exportAsJpg,
          [
            image,
            quality,
          ],
        ),
        returnValue: _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>.value(
            _FakeResult_0<_i7.Uint8List, _i6.Failure>(
          this,
          Invocation.method(
            #exportAsJpg,
            [
              image,
              quality,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>);

  @override
  _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>> exportAsPng(
          _i5.Image? image) =>
      (super.noSuchMethod(
        Invocation.method(
          #exportAsPng,
          [image],
        ),
        returnValue: _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>.value(
            _FakeResult_0<_i7.Uint8List, _i6.Failure>(
          this,
          Invocation.method(
            #exportAsPng,
            [image],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>);

  @override
  _i2.Result<_i7.Uint8List, _i6.Failure> getProjectPreview(String? path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProjectPreview,
          [path],
        ),
        returnValue: _FakeResult_0<_i7.Uint8List, _i6.Failure>(
          this,
          Invocation.method(
            #getProjectPreview,
            [path],
          ),
        ),
      ) as _i2.Result<_i7.Uint8List, _i6.Failure>);
}

/// A class which mocks [IPhotoLibraryService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIPhotoLibraryService extends _i1.Mock
    implements _i8.IPhotoLibraryService {
  MockIPhotoLibraryService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i2.Unit, _i6.Failure>> save(
    String? filename,
    _i7.Uint8List? data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #save,
          [
            filename,
            data,
          ],
        ),
        returnValue: _i4.Future<_i2.Result<_i2.Unit, _i6.Failure>>.value(
            _FakeResult_0<_i2.Unit, _i6.Failure>(
          this,
          Invocation.method(
            #save,
            [
              filename,
              data,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i2.Unit, _i6.Failure>>);

  @override
  _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>> pick() =>
      (super.noSuchMethod(
        Invocation.method(
          #pick,
          [],
        ),
        returnValue: _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>.value(
            _FakeResult_0<_i7.Uint8List, _i6.Failure>(
          this,
          Invocation.method(
            #pick,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i7.Uint8List, _i6.Failure>>);
}

/// A class which mocks [IFileService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIFileService extends _i1.Mock implements _i9.IFileService {
  MockIFileService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Result<_i10.File, _i6.Failure>> save(
    String? filename,
    _i7.Uint8List? data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #save,
          [
            filename,
            data,
          ],
        ),
        returnValue: _i4.Future<_i2.Result<_i10.File, _i6.Failure>>.value(
            _FakeResult_0<_i10.File, _i6.Failure>(
          this,
          Invocation.method(
            #save,
            [
              filename,
              data,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i10.File, _i6.Failure>>);

  @override
  _i4.Future<_i2.Result<_i10.File, _i6.Failure>> saveToApplicationDirectory(
    String? filename,
    _i7.Uint8List? data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveToApplicationDirectory,
          [
            filename,
            data,
          ],
        ),
        returnValue: _i4.Future<_i2.Result<_i10.File, _i6.Failure>>.value(
            _FakeResult_0<_i10.File, _i6.Failure>(
          this,
          Invocation.method(
            #saveToApplicationDirectory,
            [
              filename,
              data,
            ],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i10.File, _i6.Failure>>);

  @override
  _i4.Future<_i2.Result<_i10.File, _i6.Failure>> pick() => (super.noSuchMethod(
        Invocation.method(
          #pick,
          [],
        ),
        returnValue: _i4.Future<_i2.Result<_i10.File, _i6.Failure>>.value(
            _FakeResult_0<_i10.File, _i6.Failure>(
          this,
          Invocation.method(
            #pick,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Result<_i10.File, _i6.Failure>>);

  @override
  _i2.Result<_i10.File, _i6.Failure> getFile(String? path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFile,
          [path],
        ),
        returnValue: _FakeResult_0<_i10.File, _i6.Failure>(
          this,
          Invocation.method(
            #getFile,
            [path],
          ),
        ),
      ) as _i2.Result<_i10.File, _i6.Failure>);

  @override
  _i4.Future<bool> checkIfFileExistsInApplicationDirectory(String? fileName) =>
      (super.noSuchMethod(
        Invocation.method(
          #checkIfFileExistsInApplicationDirectory,
          [fileName],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<_i2.Result<_i10.FileSystemEntity, _i6.Failure>>
      deleteFileInApplicationDirectory(String? fileName) => (super.noSuchMethod(
            Invocation.method(
              #deleteFileInApplicationDirectory,
              [fileName],
            ),
            returnValue: _i4
                .Future<_i2.Result<_i10.FileSystemEntity, _i6.Failure>>.value(
                _FakeResult_0<_i10.FileSystemEntity, _i6.Failure>(
              this,
              Invocation.method(
                #deleteFileInApplicationDirectory,
                [fileName],
              ),
            )),
          ) as _i4.Future<_i2.Result<_i10.FileSystemEntity, _i6.Failure>>);
}

/// A class which mocks [IPermissionService].
///
/// See the documentation for Mockito's code generation for more information.
class MockIPermissionService extends _i1.Mock
    implements _i11.IPermissionService {
  MockIPermissionService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<bool> requestAccessToPickPhotos() => (super.noSuchMethod(
        Invocation.method(
          #requestAccessToPickPhotos,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> requestAccessForSavingToPhotos() => (super.noSuchMethod(
        Invocation.method(
          #requestAccessForSavingToPhotos,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  _i4.Future<bool> requestAccessToSharedFileStorage() => (super.noSuchMethod(
        Invocation.method(
          #requestAccessToSharedFileStorage,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
}
