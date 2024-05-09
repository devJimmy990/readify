import 'package:dio/dio.dart';
import 'package:readify/src/common/common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) => AppDio.getInstance());
