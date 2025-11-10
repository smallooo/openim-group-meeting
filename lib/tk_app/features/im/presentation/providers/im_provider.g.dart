// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'im_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imHash() => r'249d77a5d8089e4ee303efc2078f2342c7274007';

/// IM Provider
///
/// 管理 IM 相关状态，与现有 IM 系统桥接
///
/// Copied from [Im].
@ProviderFor(Im)
final imProvider = AutoDisposeNotifierProvider<Im, ImState>.internal(
  Im.new,
  name: r'imProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$imHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Im = AutoDisposeNotifier<ImState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
