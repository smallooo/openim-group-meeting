// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strategy_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$strategyDetailDataHash() =>
    r'a088643ccec289595ef878fbd9a10c6a520132a1';

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

/// 策略详情数据 Provider（只读）
///
/// Copied from [strategyDetailData].
@ProviderFor(strategyDetailData)
const strategyDetailDataProvider = StrategyDetailDataFamily();

/// 策略详情数据 Provider（只读）
///
/// Copied from [strategyDetailData].
class StrategyDetailDataFamily extends Family<StrategyDetailData?> {
  /// 策略详情数据 Provider（只读）
  ///
  /// Copied from [strategyDetailData].
  const StrategyDetailDataFamily();

  /// 策略详情数据 Provider（只读）
  ///
  /// Copied from [strategyDetailData].
  StrategyDetailDataProvider call(
    String strategyId,
  ) {
    return StrategyDetailDataProvider(
      strategyId,
    );
  }

  @override
  StrategyDetailDataProvider getProviderOverride(
    covariant StrategyDetailDataProvider provider,
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
  String? get name => r'strategyDetailDataProvider';
}

/// 策略详情数据 Provider（只读）
///
/// Copied from [strategyDetailData].
class StrategyDetailDataProvider
    extends AutoDisposeProvider<StrategyDetailData?> {
  /// 策略详情数据 Provider（只读）
  ///
  /// Copied from [strategyDetailData].
  StrategyDetailDataProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyDetailData(
            ref as StrategyDetailDataRef,
            strategyId,
          ),
          from: strategyDetailDataProvider,
          name: r'strategyDetailDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyDetailDataHash,
          dependencies: StrategyDetailDataFamily._dependencies,
          allTransitiveDependencies:
              StrategyDetailDataFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyDetailDataProvider._internal(
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
    StrategyDetailData? Function(StrategyDetailDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyDetailDataProvider._internal(
        (ref) => create(ref as StrategyDetailDataRef),
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
  AutoDisposeProviderElement<StrategyDetailData?> createElement() {
    return _StrategyDetailDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyDetailDataProvider &&
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
mixin StrategyDetailDataRef on AutoDisposeProviderRef<StrategyDetailData?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyDetailDataProviderElement
    extends AutoDisposeProviderElement<StrategyDetailData?>
    with StrategyDetailDataRef {
  _StrategyDetailDataProviderElement(super.provider);

  @override
  String get strategyId => (origin as StrategyDetailDataProvider).strategyId;
}

String _$strategyDetailLoadingHash() =>
    r'7ed1faa8ffef8fdd563ee3e5822b127038a925e8';

/// 策略详情加载状态 Provider
///
/// Copied from [strategyDetailLoading].
@ProviderFor(strategyDetailLoading)
const strategyDetailLoadingProvider = StrategyDetailLoadingFamily();

/// 策略详情加载状态 Provider
///
/// Copied from [strategyDetailLoading].
class StrategyDetailLoadingFamily extends Family<bool> {
  /// 策略详情加载状态 Provider
  ///
  /// Copied from [strategyDetailLoading].
  const StrategyDetailLoadingFamily();

  /// 策略详情加载状态 Provider
  ///
  /// Copied from [strategyDetailLoading].
  StrategyDetailLoadingProvider call(
    String strategyId,
  ) {
    return StrategyDetailLoadingProvider(
      strategyId,
    );
  }

  @override
  StrategyDetailLoadingProvider getProviderOverride(
    covariant StrategyDetailLoadingProvider provider,
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
  String? get name => r'strategyDetailLoadingProvider';
}

/// 策略详情加载状态 Provider
///
/// Copied from [strategyDetailLoading].
class StrategyDetailLoadingProvider extends AutoDisposeProvider<bool> {
  /// 策略详情加载状态 Provider
  ///
  /// Copied from [strategyDetailLoading].
  StrategyDetailLoadingProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyDetailLoading(
            ref as StrategyDetailLoadingRef,
            strategyId,
          ),
          from: strategyDetailLoadingProvider,
          name: r'strategyDetailLoadingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyDetailLoadingHash,
          dependencies: StrategyDetailLoadingFamily._dependencies,
          allTransitiveDependencies:
              StrategyDetailLoadingFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyDetailLoadingProvider._internal(
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
    bool Function(StrategyDetailLoadingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyDetailLoadingProvider._internal(
        (ref) => create(ref as StrategyDetailLoadingRef),
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
    return _StrategyDetailLoadingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyDetailLoadingProvider &&
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
mixin StrategyDetailLoadingRef on AutoDisposeProviderRef<bool> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyDetailLoadingProviderElement
    extends AutoDisposeProviderElement<bool> with StrategyDetailLoadingRef {
  _StrategyDetailLoadingProviderElement(super.provider);

  @override
  String get strategyId => (origin as StrategyDetailLoadingProvider).strategyId;
}

String _$strategyDetailErrorHash() =>
    r'b82705d8adf1d039e5591e04256f8bb314cb51dd';

/// 策略详情错误信息 Provider
///
/// Copied from [strategyDetailError].
@ProviderFor(strategyDetailError)
const strategyDetailErrorProvider = StrategyDetailErrorFamily();

/// 策略详情错误信息 Provider
///
/// Copied from [strategyDetailError].
class StrategyDetailErrorFamily extends Family<String?> {
  /// 策略详情错误信息 Provider
  ///
  /// Copied from [strategyDetailError].
  const StrategyDetailErrorFamily();

  /// 策略详情错误信息 Provider
  ///
  /// Copied from [strategyDetailError].
  StrategyDetailErrorProvider call(
    String strategyId,
  ) {
    return StrategyDetailErrorProvider(
      strategyId,
    );
  }

  @override
  StrategyDetailErrorProvider getProviderOverride(
    covariant StrategyDetailErrorProvider provider,
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
  String? get name => r'strategyDetailErrorProvider';
}

/// 策略详情错误信息 Provider
///
/// Copied from [strategyDetailError].
class StrategyDetailErrorProvider extends AutoDisposeProvider<String?> {
  /// 策略详情错误信息 Provider
  ///
  /// Copied from [strategyDetailError].
  StrategyDetailErrorProvider(
    String strategyId,
  ) : this._internal(
          (ref) => strategyDetailError(
            ref as StrategyDetailErrorRef,
            strategyId,
          ),
          from: strategyDetailErrorProvider,
          name: r'strategyDetailErrorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyDetailErrorHash,
          dependencies: StrategyDetailErrorFamily._dependencies,
          allTransitiveDependencies:
              StrategyDetailErrorFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyDetailErrorProvider._internal(
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
    String? Function(StrategyDetailErrorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StrategyDetailErrorProvider._internal(
        (ref) => create(ref as StrategyDetailErrorRef),
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
    return _StrategyDetailErrorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyDetailErrorProvider &&
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
mixin StrategyDetailErrorRef on AutoDisposeProviderRef<String?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyDetailErrorProviderElement
    extends AutoDisposeProviderElement<String?> with StrategyDetailErrorRef {
  _StrategyDetailErrorProviderElement(super.provider);

  @override
  String get strategyId => (origin as StrategyDetailErrorProvider).strategyId;
}

String _$strategyDetailNotifierHash() =>
    r'75ba84ce2ae7e57dd204d00fee45f4887daaf8ff';

abstract class _$StrategyDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<StrategyDetailData?> {
  late final String strategyId;

  FutureOr<StrategyDetailData?> build(
    String strategyId,
  );
}

/// 策略详情状态管理
///
/// Copied from [StrategyDetailNotifier].
@ProviderFor(StrategyDetailNotifier)
const strategyDetailNotifierProvider = StrategyDetailNotifierFamily();

/// 策略详情状态管理
///
/// Copied from [StrategyDetailNotifier].
class StrategyDetailNotifierFamily
    extends Family<AsyncValue<StrategyDetailData?>> {
  /// 策略详情状态管理
  ///
  /// Copied from [StrategyDetailNotifier].
  const StrategyDetailNotifierFamily();

  /// 策略详情状态管理
  ///
  /// Copied from [StrategyDetailNotifier].
  StrategyDetailNotifierProvider call(
    String strategyId,
  ) {
    return StrategyDetailNotifierProvider(
      strategyId,
    );
  }

  @override
  StrategyDetailNotifierProvider getProviderOverride(
    covariant StrategyDetailNotifierProvider provider,
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
  String? get name => r'strategyDetailNotifierProvider';
}

/// 策略详情状态管理
///
/// Copied from [StrategyDetailNotifier].
class StrategyDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<StrategyDetailNotifier,
        StrategyDetailData?> {
  /// 策略详情状态管理
  ///
  /// Copied from [StrategyDetailNotifier].
  StrategyDetailNotifierProvider(
    String strategyId,
  ) : this._internal(
          () => StrategyDetailNotifier()..strategyId = strategyId,
          from: strategyDetailNotifierProvider,
          name: r'strategyDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$strategyDetailNotifierHash,
          dependencies: StrategyDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              StrategyDetailNotifierFamily._allTransitiveDependencies,
          strategyId: strategyId,
        );

  StrategyDetailNotifierProvider._internal(
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
  FutureOr<StrategyDetailData?> runNotifierBuild(
    covariant StrategyDetailNotifier notifier,
  ) {
    return notifier.build(
      strategyId,
    );
  }

  @override
  Override overrideWith(StrategyDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: StrategyDetailNotifierProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<StrategyDetailNotifier,
      StrategyDetailData?> createElement() {
    return _StrategyDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StrategyDetailNotifierProvider &&
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
mixin StrategyDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<StrategyDetailData?> {
  /// The parameter `strategyId` of this provider.
  String get strategyId;
}

class _StrategyDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<StrategyDetailNotifier,
        StrategyDetailData?> with StrategyDetailNotifierRef {
  _StrategyDetailNotifierProviderElement(super.provider);

  @override
  String get strategyId =>
      (origin as StrategyDetailNotifierProvider).strategyId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
