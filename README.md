# Flutter Clean Architecture

## Overview

This repository is a demonstration and implementation guide for utilizing the Clean Architecture in Flutter applications. Clean Architecture helps in separating the concerns in your app, making it more scalable and maintainable.

## Structure

The architecture is divided into layers, each having a distinct role and responsibility:

- **Entity**: Contains the business logic of the application.
- **Use Case**: Encapsulates all the use cases of your app.
- **Repository**: Contains the code that communicates with the data layer.
- **Data Source**: Includes the API calls, database interaction, and data persistence mechanism.
- **Presentation**: Manages the UI and user interactions.

## Features

- **Scalability**: Easy to scale with well-separated concerns.
- **Testability**: Each layer can be tested independently.
- **Maintainability**: Easy to manage and update due to the decoupled nature of the architecture.
- **Versatility**: Can adapt to changes in UI, database, and network environments without affecting the business logic.

## Quick Start

### Requirements

- Flutter: 3.13.6
- Dart: 3.1.3

### Installation

1. Clone the repository:

```sh
git clone https://github.com/sitharaj88/flutter_clean_architecture.git
```

2. Navigate into the directory:

```sh
cd flutter_clean_architecture
```

3. Install dependencies:

```sh
flutter pub get
```

4. Run the application:

```sh
flutter run
```

## Usage

1. **Define Entities**: Create the business objects and rules.
2. **Use Cases**: Define how users interact with your app.
3. **Repository**: Implement the data manipulation methods.
4. **Data Source**: Add your API calls and data interaction logic.
5. **Presentation**: Implement UI and handle user interactions.

## Contributing

Contributios are welcomed! See [CONTRIBUTING.md](CONTRIBUTING.md) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
