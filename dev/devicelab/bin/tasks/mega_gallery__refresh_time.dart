// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter_devicelab/tasks/refresh.dart';
import 'package:flutter_devicelab/framework/framework.dart';
import 'package:flutter_devicelab/framework/utils.dart';

Future<Null> main() async {
  String revision = await getCurrentFlutterRepoCommit();
  DateTime revisionTimestamp = await getFlutterRepoCommitTimestamp(revision);
  await task(createRefreshTest(
    commit: revision,
    timestamp: revisionTimestamp,
  ));
}
