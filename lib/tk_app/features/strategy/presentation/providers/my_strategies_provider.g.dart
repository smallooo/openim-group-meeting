// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_strategies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myStrategiesListHash() => r'7e29a4caf7315f8bb41544e8103213fc00471cfc';

/// 我的策略列表 Provider（只读）
///
/// Copied from [myStrategiesList].
@ProviderFor(myStrategiesList)
final myStrategiesListProvider =
    AutoDisposeProvider<List<StrategyItem>>.internal(
  myStrategiesList,
  name: r'myStrategiesListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myStrategiesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MyStrategiesListRef = AutoDisposeProviderRef<List<StrategyItem>>;
String _$myStrategiesPaginationHash() =>
    r'9cf39b4174fbc0bca0a9090a6ff553cecafd47e5';

/// 策略分页信息 Provider
///
/// Copied from [myStrategiesPagination].
@ProviderFor(myStrategiesPagination)
final myStrategiesPaginationProvider =
    AutoDisposeProvider<Map<String, dynamic>>.internal(
  myStrategiesPagination,
  name: r'myStrategiesPaginationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myStrategiesPaginationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MyStrategiesPaginationRef
    = AutoDisposeProviderRef<Map<String, dynamic>>;
String _$myStrategiesNotifierHash() =>
    r'bf24550cb54861a6691333e1cf6e1b8a1125a1a9';

/// 我的策略状态管理
///
/// Copied from [MyStrategiesNotifier].
@ProviderFor(MyStrategiesNotifier)
final myStrategiesNotifierProvider = AutoDisposeNotifierProvider<
    MyStrategiesNotifier, MyStrategiesState>.internal(
  MyStrategiesNotifier.new,
  name: r'myStrategiesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myStrategiesNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MyStrategiesNotifier = AutoDisposeNotifier<MyStrategiesState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
