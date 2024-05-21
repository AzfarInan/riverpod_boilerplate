// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_todo_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addTodoUseCaseHash() => r'7beefb174f0f18ef9a788ecbcc16fe59df90b1fe';

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

abstract class _$AddTodoUseCase
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String description;

  FutureOr<void> build(
    String description,
  );
}

/// See also [AddTodoUseCase].
@ProviderFor(AddTodoUseCase)
const addTodoUseCaseProvider = AddTodoUseCaseFamily();

/// See also [AddTodoUseCase].
class AddTodoUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [AddTodoUseCase].
  const AddTodoUseCaseFamily();

  /// See also [AddTodoUseCase].
  AddTodoUseCaseProvider call(
    String description,
  ) {
    return AddTodoUseCaseProvider(
      description,
    );
  }

  @override
  AddTodoUseCaseProvider getProviderOverride(
    covariant AddTodoUseCaseProvider provider,
  ) {
    return call(
      provider.description,
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
  String? get name => r'addTodoUseCaseProvider';
}

/// See also [AddTodoUseCase].
class AddTodoUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AddTodoUseCase, void> {
  /// See also [AddTodoUseCase].
  AddTodoUseCaseProvider(
    String description,
  ) : this._internal(
          () => AddTodoUseCase()..description = description,
          from: addTodoUseCaseProvider,
          name: r'addTodoUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoUseCaseHash,
          dependencies: AddTodoUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AddTodoUseCaseFamily._allTransitiveDependencies,
          description: description,
        );

  AddTodoUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.description,
  }) : super.internal();

  final String description;

  @override
  FutureOr<void> runNotifierBuild(
    covariant AddTodoUseCase notifier,
  ) {
    return notifier.build(
      description,
    );
  }

  @override
  Override overrideWith(AddTodoUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddTodoUseCaseProvider._internal(
        () => create()..description = description,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        description: description,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AddTodoUseCase, void>
      createElement() {
    return _AddTodoUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoUseCaseProvider && other.description == description;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, description.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddTodoUseCaseRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `description` of this provider.
  String get description;
}

class _AddTodoUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AddTodoUseCase, void>
    with AddTodoUseCaseRef {
  _AddTodoUseCaseProviderElement(super.provider);

  @override
  String get description => (origin as AddTodoUseCaseProvider).description;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
