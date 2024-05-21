// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo_use_case.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$updateTodoUseCaseHash() => r'46a0affc3c30d32234731b11de5c02a23c7d4a9a';

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

abstract class _$UpdateTodoUseCase
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final Todo todo;

  FutureOr<void> build(
    Todo todo,
  );
}

/// See also [UpdateTodoUseCase].
@ProviderFor(UpdateTodoUseCase)
const updateTodoUseCaseProvider = UpdateTodoUseCaseFamily();

/// See also [UpdateTodoUseCase].
class UpdateTodoUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [UpdateTodoUseCase].
  const UpdateTodoUseCaseFamily();

  /// See also [UpdateTodoUseCase].
  UpdateTodoUseCaseProvider call(
    Todo todo,
  ) {
    return UpdateTodoUseCaseProvider(
      todo,
    );
  }

  @override
  UpdateTodoUseCaseProvider getProviderOverride(
    covariant UpdateTodoUseCaseProvider provider,
  ) {
    return call(
      provider.todo,
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
  String? get name => r'updateTodoUseCaseProvider';
}

/// See also [UpdateTodoUseCase].
class UpdateTodoUseCaseProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UpdateTodoUseCase, void> {
  /// See also [UpdateTodoUseCase].
  UpdateTodoUseCaseProvider(
    Todo todo,
  ) : this._internal(
          () => UpdateTodoUseCase()..todo = todo,
          from: updateTodoUseCaseProvider,
          name: r'updateTodoUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateTodoUseCaseHash,
          dependencies: UpdateTodoUseCaseFamily._dependencies,
          allTransitiveDependencies:
              UpdateTodoUseCaseFamily._allTransitiveDependencies,
          todo: todo,
        );

  UpdateTodoUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.todo,
  }) : super.internal();

  final Todo todo;

  @override
  FutureOr<void> runNotifierBuild(
    covariant UpdateTodoUseCase notifier,
  ) {
    return notifier.build(
      todo,
    );
  }

  @override
  Override overrideWith(UpdateTodoUseCase Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateTodoUseCaseProvider._internal(
        () => create()..todo = todo,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        todo: todo,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UpdateTodoUseCase, void>
      createElement() {
    return _UpdateTodoUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateTodoUseCaseProvider && other.todo == todo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, todo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateTodoUseCaseRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `todo` of this provider.
  Todo get todo;
}

class _UpdateTodoUseCaseProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UpdateTodoUseCase, void>
    with UpdateTodoUseCaseRef {
  _UpdateTodoUseCaseProviderElement(super.provider);

  @override
  Todo get todo => (origin as UpdateTodoUseCaseProvider).todo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
