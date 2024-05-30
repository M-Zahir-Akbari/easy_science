# Easy Science

**Easy Science** is a Flutter application designed to provide educational content for subjects such as Mathematics, Physics, and Chemistry. The app features a user-friendly interface with a drawer menu and navigable screens for different subjects and lessons.

## Table of Contents

- [About the Project](#about-the-project)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## About the Project

**Easy Science** aims to make learning science subjects easy and accessible through a mobile application. Users can navigate through different subjects, view lessons, and access various features via a drawer menu. The application will then be able to have mini-calculators for each formula so that users can practice the formulas or check if they themselves have calculated correctly.

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

Ensure you have Flutter installed on your machine. You can follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to install Flutter.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/M-Zahir-Akbari/easy_science.git
   ```
2. Navigate to the project directory
   ```sh
   cd easy_science
   ```
3. Install the dependencies
   ```sh
   flutter pub get
   ```

## Usage

To run the application, use the following command:
```sh
flutter run
```

### Sample Code Snippets

**main.dart**
```dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const EasyScience());
}

class EasyScience extends StatelessWidget {
  const EasyScience({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Easy Science',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
```

**app_drawer.dart**
```dart
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Easy Science',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_4),
            title: const Text('Night Mode'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_phone),
            title: const Text('Contact us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () {
              Navigator.pop(context); // Closes the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
```

## Project Structure

The project's directory structure is as follows:

```
lib/
│
├── drawer/
│   └── app_drawer.dart
│
├── models/
│   └── lesson.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── lesson_screen.dart
│   └── subject_screen.dart
│
└── main.dart
```

## Roadmap

- [x] Initial project setup
- [ ] Add more lessons and subjects
- [ ] Implement night mode feature
- [ ] Add search functionality
- [ ] Add mini-calculators for each formula
- [ ] Add language support for Dari, Pashto, and English
- [ ] Add like buttons to each content for favorites
- [ ] Improve UI/UX

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Your Name - [Easy.Science.Application@Gmail.com](mailto:Easy.Science.Application@Gmail.com)

Project Link: [https://github.com/M-Zahir-Akbari/easy_science.git](https://github.com/M-Zahir-Akbari/easy_science.git)