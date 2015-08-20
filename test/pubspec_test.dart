@Skip('not a real test')

import 'package:test/test.dart';
import 'package:pubspec/pubspec.dart';
import 'dart:io';
import 'package:pub_semver/pub_semver.dart';

main() async {
  final PubSpec pubSpec = new PubSpec(
      name: 'fred',
      dependencies: {
        'foo': new PathReference('../foo'),
        'fred': new HostedReference(new VersionRange(min: new Version(1, 2, 3)))
      });

  await pubSpec.save(new Directory('delme'));
}
