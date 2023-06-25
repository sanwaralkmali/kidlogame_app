## KidloGame: Directory Structure Documentation

In the KidloGame project, we use a specific directory structure to keep our project organized. This structure is flexible and can be adjusted according to project needs. Here is the current structure:

```
kidlogame_app/
├── android/
├── ios/
├── lib/
│   ├── models/
│   ├── views/
│   │   ├── login/
│   │   ├── signup/
│   │   ├── home/
│   │   └── game/
│   ├── widgets/
│   ├── utils/
│   ├── services/
│   └── main.dart
├── test/
├── web/
├── assets/
│   ├── images/
│   └── fonts/
├── pubspec.yaml
└── README.md

```

## Directory Description

- android/ and ios/: These directories contain files required for building the application on Android and iOS.

- lib/: This is where Dart code is stored.

- models/: Contains data classes.

- views/: Houses all screens such as login, signup, home, and game.

- widgets/: Used to store any custom reusable widgets.

- utils/: Houses utility functions.

- services/: Contains service classes that handle API calls or other services.

- test/: Contains all the tests.

- web/: Contains files needed for building the app on the web.

- assets/: Stores assets like images and fonts.

- pubspec.yaml: A file that defines the project and its dependencies.

- README.md: A text file providing information about the project.

Remember, all assets (images, fonts, etc.) must be declared in the pubspec.yaml file under the flutter: section as shown below:

```
flutter:
  assets:
    - assets/images/
    - assets/fonts/

```

This helps Flutter locate and load these assets when needed.