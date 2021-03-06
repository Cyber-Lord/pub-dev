// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';

part 'package_api.g.dart';

/// Options and flags to get/set on a package.
@JsonSerializable()
class PkgOptions {
  final bool isDiscontinued;

  PkgOptions({
    this.isDiscontinued,
  });

  factory PkgOptions.fromJson(Map<String, dynamic> json) =>
      _$PkgOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$PkgOptionsToJson(this);
}

/// Publisher ownership to get/set on a package.
@JsonSerializable()
class PackagePublisherInfo {
  /// Domain name of the publisher that owns this package, `null` if package
  /// is not owned by a publisher.
  final String publisherId;

  PackagePublisherInfo({
    this.publisherId,
  });

  factory PackagePublisherInfo.fromJson(Map<String, dynamic> json) =>
      _$PackagePublisherInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PackagePublisherInfoToJson(this);
}
