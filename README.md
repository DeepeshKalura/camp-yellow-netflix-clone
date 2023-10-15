# Camp Yellow Netflix Clone

Welcome to the Camp Yellow Netflix Clone project! This Flutter application is a test project designed to showcase a Netflix-inspired user interface. The application was initially designed in Figma and then implemented using Flutter, following consistent theming and styling practices. It utilizes the BLoC state management pattern to create a modular and maintainable codebase.

## Project Overview

This project aims to replicate the user interface of the popular streaming platform, Netflix, to create a visually appealing and user-friendly app. While this project is focused on the user interface (UI) aspect, it provides a structured codebase for future development and enhancement.

## Features

- Netflix-inspired UI design.
- Consistent theming and styling throughout the app.
- Modular code organization.
- State management with BLoC (Business Logic Component).
- Easily customizable to add more features or expand functionality.

## Installation

Before getting started with this project, ensure that you have Flutter and Dart installed on your system. If you haven't already, you can follow the official Flutter installation guide: [Flutter Installation](https://flutter.dev/docs/get-started/install)

1. Clone this repository to your local machine:

```bash
git clone https://github.com/DeepeshKalura/camp-yellow-netflix-clone.git
```

2. Navigate to the project directory:

```bash
cd camp-yellow-netflix-clone
```

3. Install the required dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## Project Structure

The project is organized into several directories, each serving a specific purpose:

- **lib**: This is where most of the project code resides, including the main application logic and user interface components.
  - **bloc**: Contains the BLoC (Business Logic Component) classes for state management.
  - **data**: Placeholder data or API integration can be added here.
  - **models**: Data models used throughout the app.
  - **ui**: UI components and screens.
  - **utils**: Utility functions and helper classes.
- **assets**: Store image assets, fonts, and other resources used in the app.
- **test**: Contains unit tests for the application (if applicable).

## How to Customize

To customize this Netflix clone for your own purposes, you can:

- Modify the UI components in the `lib/ui` directory.
- Adjust the theming and styling in `lib/utils/app_theme.dart`.
- Extend the functionality by adding more BLoC components in the `lib/bloc` directory.
- Integrate APIs or replace the placeholder data in the `lib/data` directory.

## Contribution

This project is a test project and may not actively accept contributions. However, feel free to fork the repository, make your own enhancements, and create a pull request if you'd like to share improvements with the community.


## Contact

If you have any questions or need further assistance, feel free to contact the project owner at deepeshkalurs@gmail.com.

Happy coding, and enjoy building your own Netflix-inspired Flutter app!