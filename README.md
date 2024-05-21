# Flutter Riverpod Boilerplate App

This project is a simple TodoList application built using Flutter with Clean Architecture principles. It uses Riverpod for state management and Freezed for immutability and data classes.

## Features

- View a list of todos
- Add a new todo
- Update an existing todo
- Delete a todo

## Project Structure

The project follows Clean Architecture, divided into the following layers:

- **Presentation**: UI code and state management
- **Domain**: Business logic and use cases
- **Data**: Data sources and repository implementations

## Dependencies

- **Flutter**: `^3.22.0`
- **Riverpod**: `^2.5.1`
- **Freezed**: `^2.5.2`
- **Build Runner**: `^2.4.10`
- **Json Serializable**: `^6.8.0`
- **UUID**: `^4.4.0`

## Getting Started

### Prerequisites

Ensure you have the following installed:

- Flutter SDK version `3.22.0`
- Dart SDK version `>=3.4.0 <4.0.0`

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/your-repo/flutter_todolist.git
    cd flutter_todolist
    ```

2. Install dependencies:

    ```sh
    flutter pub get
    ```

3. Generate the necessary code:

    ```sh
    flutter pub run build_runner build --delete-conflicting-outputs
    ```

### Running the App

1. Ensure you have an emulator running or a physical device connected.

2. Run the app:

    ```sh
    flutter run
    ```

### Project Structure

```plaintext
lib/
├── core/
│   ├── errors/
│   ├── usecases/
├── features/
│   └── todo/
│       ├── data/
│       │   ├── datasources/
│       │   │   ├── todo_data_source.dart
│       │   │   ├── todo_data_source_impl.dart
│       │   ├── models/
│       │   └── repositories/
│       │       ├── todo_repository_impl.dart
│       ├── domain/
│       │   ├── entities/
│       │   │   └── todo.dart
│       │   ├── repositories/
│       │   │   └── todo_repository.dart
│       │   └── usecases/
│       │       ├── add_todo_use_case.dart
│       │       ├── get_todo_use_case.dart
│       └── presentation/
│           ├── providers/
│           │   └── todo_list_notifier.dart
│           └── views/
│               └── todo_list_view.dart
└── main.dart
