# Sokrio Users

A Flutter application demonstrating Clean Architecture, BLoC state management, and API integration.

## Features

- User list with infinite scrolling pagination
- User detail screen with complete information
- Search functionality (local filtering)
- Pull to refresh
- Offline caching with Hive
- Error handling and retry mechanism
- Clean Architecture with separation of concerns
- BLoC pattern for state management

## Architecture

This project follows Clean Architecture principles with three main layers:

### 1. Presentation Layer
- **BLoC**: State management using flutter_bloc
- **Pages**: User list and detail pages
- **Widgets**: Reusable UI components

### 2. Domain Layer
- **Entities**: Core business models (User)
- **Use Cases**: Business logic (GetUsers, GetCachedUsers)
- **Repository Interfaces**: Abstract contracts for data operations

### 3. Data Layer
- **Models**: Data transfer objects with JSON serialization
- **Data Sources**: Remote (API) and Local (Hive) data sources
- **Repository Implementation**: Concrete implementation of repository interfaces

### Core
- **Dependency Injection**: Using get_it
- **Network Info**: Connectivity checking
- **Error Handling**: Custom failures and exceptions
- **Constants**: API configuration

## Dependencies

- **flutter_bloc**: ^9.1.1 — State management using BLoC pattern
- **dio**: ^5.9.0 — HTTP client for API calls
- **dio_smart_retry**: ^7.0.1 — Retry mechanism for Dio requests
- **hive**: ^2.2.3 & **hive_flutter**: ^1.1.0 — Local storage for caching
- **get_it**: ^8.2.0 — Dependency injection
- **connectivity_plus**: ^7.0.0 — Network connectivity checking
- **extended_image**: ^10.0.1 — Advanced image caching and display
- **dartz**: ^0.10.1 — Functional programming utilities (Either type)
- **equatable**: ^2.0.7 — Value equality for objects
- **google_fonts**: ^6.3.1 — Custom fonts support
- **logger**: ^2.6.1 — Logging utility for debugging
- **flutter_native_splash**: ^2.4.6 — Native splash screen setup
- **go_router**: ^16.2.1 — Routing and navigation
- **lottie**: ^3.3.1 — Animated Lottie support
- **freezed_annotation**: ^2.4.1 — Code generation for immutable classes

### Dev Dependencies

- **flutter_test** — Testing support
- **flutter_lints**: ^5.0.0 — Linting rules
- **build_runner**: ^2.4.8 — Code generation runner
- **freezed**: ^2.4.1 — Generates immutable data classes
- **hive_generator**: ^2.0.1 — Generates Hive type adapters
- **mockito**: ^5.4.4 — Mocking support for tests


## Setup Instructions

1. **Install FVM (Flutter Version Management)**
```bash
   dart pub global activate fvm
```

2. **Install Flutter 3.35.2 using FVM**
```bash
   fvm install 3.35.2
   fvm use 3.35.2
```

Or check the current Flutter version:
```bash
   fvm flutter --version
```

3. **Clone the repository and navigate to the project**
```bash
   cd sokrio-users
```

4. **Get dependencies**
```bash
   fvm flutter pub get
```

5. **Generate Hive adapters**
```bash
   fvm dart run build_runner build --delete-conflicting-outputs
```

6. **Run the app**
```bash
   fvm flutter run
```

## Build Instructions

### Build APK (Release)
```bash
fvm flutter build apk --release --split-per-abi --obfuscate --split-debug-info=build/app/symbols
```

### Build App Bundle (Release)
```bash
fvm flutter build appbundle --release --obfuscate --split-debug-info=build/app/symbols
```

> **Note**: This project uses [FVM (Flutter Version Management)](https://fvm.app/) to manage Flutter versions. All Flutter commands should be prefixed with `fvm` (e.g., `fvm flutter run`). If you prefer not to use FVM, ensure you have Flutter 3.35.2 or higher installed globally.

## Project Structure
```
lib/
├── src/
│   ├── core/
│   │   ├── di/
│   │   ├── enums/
│   │   ├── errors/
│   │   ├── extensions/
│   │   ├── fake_data/
│   │   ├── helpers/
│   │   ├── mixins/
│   │   ├── network/
│   │   ├── routes/
│   │   ├── services/
│   │   ├── shared/
│   │   ├── theme/
│   │   ├── utils/
│   │   └── widgets/
│   └── features/
│       └── users/
│           ├── data/
│           │   ├── data_source/
│           │   ├── models/
│           │   └── repositories/
│           ├── domain/
│           │   ├── entities/
│           │   ├── repositories/
│           │   └── use_cases/
│           └── presentation/
│               ├── bloc/
│               ├── pages/
│               └── widgets/
└── main.dart
```

## API

This app uses the [ReqRes API](https://reqres.in/):
- Endpoint: `https://reqres.in/api/users`
- Pagination: `?page=1&per_page=10`

## Features Implementation

### Pagination
- Loads 10 users per page
- Infinite scrolling
- Gracefully stops when no more data is available

### Search
- Real-time local filtering by user name
- Works offline with cached data
- Case-insensitive search

### Caching
- Automatic caching of first page results using Hive
- Offline mode displays cached data with offline banner

### Error Handling
- Network error detection
- Server error handling
- Timeout management
- User-friendly error messages with retry option

### Pull to Refresh
- Swipe down to refresh user list
- Resets pagination to first page
- Updates cached data

## Testing

Run tests with:
```bash
flutter test
```

## Performance Optimizations

- Image caching for user images
- Lazy loading with pagination
- Local data caching
- Efficient state management with BLoC
- Hero animations for smooth transitions

## Design Principles

- Single Responsibility Principle
- Dependency Inversion
- Separation of Concerns
- Testability
- Scalability

## License

This project is created for demonstration purposes.
