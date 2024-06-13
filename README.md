
# Flutter GetX Starter

Welcome to the Flutter GetX Starter project! This is some basic architecture that I used to small to medium size flutter project. And also this
repository will be good for beginners to get robust starting point for your Flutter applications, leveraging the power of GetX for state management, dependency injection, and route management. Below, you'll find a comprehensive guide to the features and setup instructions to get your application up and running.

## Features

1. **Flavors**
    - Easily manage multiple app configurations such as app name, bundle ID, app icon, and URLs with different flavor options (Production, Staging, Development).

2. **Themes**
    - Integrated light and dark themes to enhance user experience. Switch between themes effortlessly.

3. **Localization**
    - Supports Sinhala and English translations. Adding new languages is straightforward and can be done with minimal effort.

4. **Sample UIs**
    - Pre-built sample user interfaces for:
        - Tab View
        - Login View
        - Dashboard View
        - Profile View

5. **Isolations**
    - Includes sample code for isolations to demonstrate the use of isolates for heavy computations without blocking the UI thread.

6. **Flutter Version Management (FVM)**
    - Manage your Flutter versions using FVM for consistent development environments.

## Getting Started

To run the application, follow these steps:

1. **Install FVM**
    - FVM (Flutter Version Management) is essential for managing Flutter versions. Install it from the terminal:

      ```sh
      pub global activate fvm
      ```

2. **Use Specific Flutter Version**
    - Set the Flutter version for this project:

      ```sh
      fvm use 3.22.1
      ```

3. **Running the Application**
    - This project includes three flavors: Production, Staging, and Development. Use the following commands to run the app with the desired flavor:

      **Production:**
      ```sh
      fvm flutter run -t lib/main_production.dart --flavor production
      ```

      **Staging:**
      ```sh
      fvm flutter run -t lib/main_staging.dart --flavor staging
      ```

      **Development:**
      ```sh
      fvm flutter run -t lib/main_development.dart --flavor development
      ```

## Contributing

We welcome contributions to enhance this starter project. If you have suggestions or improvements, please create an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Thank you for using the Flutter GetX Starter! We hope this project helps you kickstart your Flutter applications with ease. Happy coding!