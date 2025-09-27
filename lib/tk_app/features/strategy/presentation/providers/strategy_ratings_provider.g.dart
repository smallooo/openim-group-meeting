// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_ratings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$strategyRatingsDataHash() =>
    r'a13a9f1dc5928127aaa8b27161a2b481ba6c49b4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 策略评价数据 Provider（只读）
///
/// Copied from [strategyRatingsData].
@ProviderFor(strategyRatingsData)
const strategyRatingsDataProvider = StrategyRatingsDataFamily();

/// 策略评价数据 Provider（只读）
///
/// Copied from [strategyRatingsData].
class StrategyRatingsDataFamily extends Family<StrategyRatingsData?> {
  /// 策略评价数据 Provider（只读）
  ///
  /// Copied from [strategyRatingsData].
  const StrategyRatingsDataFamily();

  /// 策略评价数据 Provider（只读）
  ///
  /// Copied from [strategyRatingsData].
  StrategyRatingsDataProvider call(
    String strategyId,
  ) {
    return StrategyRatingsDataProvider(
      strategyId,
    );
  }

  @override
  StrategyRatingsDataProvider getProviderOverride(
    covariant StrategyRatingsDataProvider provider,
  ) {
    return call(
      provider.strategyId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'strategyRatingsDataProvider';
}

/// 策略评价数据 Provider（只读）
///
/// Copied from [strategyRatingsData].
class StrategyRatingsDataProvider
    extends AutoDisposeProvider<StrategyRatingsData?> {
  /// 策略评价数据 Provider（只读）
  ///
  /// Copied from [strategyRatingsData].
  StrategyRatingsDataProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyRatingsData(
            ref as StrategyRatingsDataRef,
            strategyId,
          ),
          from: strategyRatingsDataProvider,
          name: r'strategyRatingsDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyRatingsDataHash,
          dependencies: StrategyRatingsDataFamily._dependencies,
          allTransitiveDependencies:
              StrategyRatingsDataFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyRatingsDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.strategyId,
  }) : super.internal();

  final String strategyId;

  @override
  Override overrideWith(
    StrategyRatingsData? Function(StrategyRatingsDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyRatingsDataProvider._internal(
        (ref) => create(ref as StrategyRatingsDataRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        strategyId: strategyId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<StrategyRatingsData?> createElement() {
    return _StrategyRatingsDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyRatingsDataProvider &&
        other.strategyId == strategyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, strategyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StrategyRatingsDataRef on AutoDisposeProviderRef<StrategyRatingsData?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyRatingsDataProviderElement
    extends AutoDisposeProviderElement<StrategyRatingsData?>
    with StrategyRatingsDataRef {
  _StrategyRatingsDataProviderElement(super.provider);

  @override
  String get strategyId => (origin as StrategyRatingsDataProvider).strategyId;
}

String _$strategyRatingsLoadingHash() =>
    r'b8ce32a9cefe99c039ef1ad8f4a3a952c4439fc7';

/// 策略评价加载状态 Provider
///
/// Copied from [strategyRatingsLoading].
@ProviderFor(strategyRatingsLoading)
const strategyRatingsLoadingProvider = StrategyRatingsLoadingFamily();

/// 策略评价加载状态 Provider
///
/// Copied from [strategyRatingsLoading].
class StrategyRatingsLoadingFamily extends Family<bool> {
  /// 策略评价加载状态 Provider
  ///
  /// Copied from [strategyRatingsLoading].
  const StrategyRatingsLoadingFamily();

  /// 策略评价加载状态 Provider
  ///
  /// Copied from [strategyRatingsLoading].
  StrategyRatingsLoadingProvider call(
    String strategyId,
  ) {
    return StrategyRatingsLoadingProvider(
      strategyId,
    );
  }

  @override
  StrategyRatingsLoadingProvider getProviderOverride(
    covariant StrategyRatingsLoadingProvider provider,
  ) {
    return call(
      provider.strategyId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'strategyRatingsLoadingProvider';
}

/// 策略评价加载状态 Provider
///
/// Copied from [strategyRatingsLoading].
class StrategyRatingsLoadingProvider extends AutoDisposeProvider<bool> {
  /// 策略评价加载状态 Provider
  ///
  /// Copied from [strategyRatingsLoading].
  StrategyRatingsLoadingProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyRatingsLoading(
            ref as StrategyRatingsLoadingRef,
            strategyId,
          ),
          from: strategyRatingsLoadingProvider,
          name: r'strategyRatingsLoadingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyRatingsLoadingHash,
          dependencies: StrategyRatingsLoadingFamily._dependencies,
          allTransitiveDependencies:
              StrategyRatingsLoadingFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyRatingsLoadingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.strategyId,
  }) : super.internal();

  final String strategyId;

  @override
  Override overrideWith(
    bool Function(StrategyRatingsLoadingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyRatingsLoadingProvider._internal(
        (ref) => create(ref as StrategyRatingsLoadingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        strategyId: strategyId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _StrategyRatingsLoadingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyRatingsLoadingProvider &&
        other.strategyId == strategyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, strategyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StrategyRatingsLoadingRef on AutoDisposeProviderRef<bool> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyRatingsLoadingProviderElement
    extends AutoDisposeProviderElement<bool> with StrategyRatingsLoadingRef {
  _StrategyRatingsLoadingProviderElement(super.provider);

  @override
  String get strategyId =>
      (origin as StrategyRatingsLoadingProvider).strategyId;
}

String _$strategyRatingsErrorHash() =>
    r'6cbd9f1a2d2b980a0c774c9ec0eb87082cfa9013';

/// 策略评价错误信息 Provider
///
/// Copied from [strategyRatingsError].
@ProviderFor(strategyRatingsError)
const strategyRatingsErrorProvider = StrategyRatingsErrorFamily();

/// 策略评价错误信息 Provider
///
/// Copied from [strategyRatingsError].
class StrategyRatingsErrorFamily extends Family<String?> {
  /// 策略评价错误信息 Provider
  ///
  /// Copied from [strategyRatingsError].
  const StrategyRatingsErrorFamily();

  /// 策略评价错误信息 Provider
  ///
  /// Copied from [strategyRatingsError].
  StrategyRatingsErrorProvider call(
    String strategyId,
  ) {
    return StrategyRatingsErrorProvider(
      strategyId,
    );
  }

  @override
  StrategyRatingsErrorProvider getProviderOverride(
    covariant StrategyRatingsErrorProvider provider,
  ) {
    return call(
      provider.strategyId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'strategyRatingsErrorProvider';
}

/// 策略评价错误信息 Provider
///
/// Copied from [strategyRatingsError].
class StrategyRatingsErrorProvider extends AutoDisposeProvider<String?> {
  /// 策略评价错误信息 Provider
  ///
  /// Copied from [strategyRatingsError].
  StrategyRatingsErrorProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyRatingsError(
            ref as StrategyRatingsErrorRef,
            strategyId,
          ),
          from: strategyRatingsErrorProvider,
          name: r'strategyRatingsErrorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyRatingsErrorHash,
          dependencies: StrategyRatingsErrorFamily._dependencies,
          allTransitiveDependencies:
              StrategyRatingsErrorFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyRatingsErrorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.strategyId,
  }) : super.internal();

  final String strategyId;

  @override
  Override overrideWith(
    String? Function(StrategyRatingsErrorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyRatingsErrorProvider._internal(
        (ref) => create(ref as StrategyRatingsErrorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        strategyId: strategyId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String?> createElement() {
    return _StrategyRatingsErrorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyRatingsErrorProvider &&
        other.strategyId == strategyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, strategyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StrategyRatingsErrorRef on AutoDisposeProviderRef<String?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyRatingsErrorProviderElement
    extends AutoDisposeProviderElement<String?> with StrategyRatingsErrorRef {
  _StrategyRatingsErrorProviderElement(super.provider);

  @override
  String get strategyId => (origin as StrategyRatingsErrorProvider).strategyId;
}

String _$strategyRatingsNotifierHash() =>
    r'ff532f5b673f912b8d9cae0664aa8795890ff545';

abstract class _$StrategyRatingsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<StrategyRatingsData?> {
  late final String strategyId;

  FutureOr<StrategyRatingsData?> build(
    String strategyId,
  );
}

/// 策略评价列表状态管理
///
/// Copied from [StrategyRatingsNotifier].
@ProviderFor(StrategyRatingsNotifier)
const strategyRatingsNotifierProvider = StrategyRatingsNotifierFamily();

/// 策略评价列表状态管理
///
/// Copied from [StrategyRatingsNotifier].
class StrategyRatingsNotifierFamily
    extends Family<AsyncValue<StrategyRatingsData?>> {
  /// 策略评价列表状态管理
  ///
  /// Copied from [StrategyRatingsNotifier].
  const StrategyRatingsNotifierFamily();

  /// 策略评价列表状态管理
  ///
  /// Copied from [StrategyRatingsNotifier].
  StrategyRatingsNotifierProvider call(
    String strategyId,
  ) {
    return StrategyRatingsNotifierProvider(
      strategyId,
    );
  }

  @override
  StrategyRatingsNotifierProvider getProviderOverride(
    covariant StrategyRatingsNotifierProvider provider,
  ) {
    return call(
      provider.strategyId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'strategyRatingsNotifierProvider';
}

/// 策略评价列表状态管理
///
/// Copied from [StrategyRatingsNotifier].
class StrategyRatingsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StrategyRatingsNotifier,
        StrategyRatingsData?> {
  /// 策略评价列表状态管理
  ///
  /// Copied from [StrategyRatingsNotifier].
  StrategyRatingsNotifierProvider(
    String strategyId,
  ) : this._internal(
          () => StrategyRatingsNotifier()..strategyId = strategyId,
          from: strategyRatingsNotifierProvider,
          name: r'strategyRatingsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyRatingsNotifierHash,
          dependencies: StrategyRatingsNotifierFamily._dependencies,
          allTransitiveDependencies:
              StrategyRatingsNotifierFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyRatingsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.strategyId,
  }) : super.internal();

  final String strategyId;

  @override
  FutureOr<StrategyRatingsData?> runNotifierBuild(
    covariant StrategyRatingsNotifier notifier,
  ) {
    return notifier.build(
      strategyId,
    );
  }

  @override
  Override overrideWith(StrategyRatingsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: StrategyRatingsNotifierProvider._internal(
        () => create()..strategyId = strategyId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        strategyId: strategyId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<StrategyRatingsNotifier,
      StrategyRatingsData?> createElement() {
    return _StrategyRatingsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyRatingsNotifierProvider &&
        other.strategyId == strategyId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, strategyId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StrategyRatingsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<StrategyRatingsData?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyRatingsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StrategyRatingsNotifier,
        StrategyRatingsData?> with StrategyRatingsNotifierRef {
  _StrategyRatingsNotifierProviderElement(super.provider);

  @override
  String get strategyId =>
      (origin as StrategyRatingsNotifierProvider).strategyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
