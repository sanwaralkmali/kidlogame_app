## Dependencies

For the features in KIDLOGAME, the following Flutter packages might be useful:

- http: For making HTTP requests.

- provider or riverpod: For state management.

- sqflite: A SQLite plugin for Flutter, for database management.

- path_provider: For finding commonly used locations on the filesystem.

- flutter_login: A ready-made login/signup widget.

- shared_preferences: For storing simple data in key-value pairs, like user preferences.

- crypto: For cryptographic hashing functions for data integrity checks or password hashing.

- google_sign_in and firebase_auth: If Google Sign-In functionality is planned.

---------------------------------------

## Adding Necessary Packages

In Flutter, we add external packages to the `pubspec.yaml` file found in the root directory of our project.

These packages can range from simple utility packages to complex Flutter plugins. Each package needs to be specified under the `dependencies:` section. The general format for adding a package is `<package_name>: ^<version_number>`. We obtain the version number from the package's page on [pub.dev](https://pub.dev/), always using the latest stable version.

Here's an example:

```yaml
dependencies:
  flutter:
    sdk: flutter

  http: ^0.13.3
  provider: ^6.0.1
  sqflite: ^2.0.0+4
  path_provider: ^2.0.8
  flutter_login: ^2.0.0
  shared_preferences: ^2.0.9
  crypto: ^3.0.1
  google_sign_in: ^5.2.1
  firebase_auth: ^3.3.3

```

After adding the dependencies, run the flutter pub get command in the terminal to fetch the packages.

Note: The above is a sample set of dependencies. Ensure you are adding the correct versions of the packages that are compatible with your Flutter SDK version. Additionally, google_sign_in and firebase_auth are specifically for Google Sign-In functionality - only add these if you plan to implement this feature.


# Fonts 

```
- family: Balsamiq_Sans
      fonts:
        - asset: assets/fonts/Balsamiq_Sans/BalsamiqSans-Regular.ttf
          weight: 700

    - family: Bebas_Neue
      fonts:
        - asset: assets/fonts/Bebas_Neue/BebasNeue-Regular.ttf

    - family: Bubblegum_Sans
      fonts:
        - asset: assets/fonts/Bubblegum_Sans/BubblegumSans-Regular.ttf

    - family: Comic_Neue
      fonts:
        - asset: assets/fonts/Comic_Neue/ComicNeue-Regular.ttf
        - asset: assets/fonts/Comic_Neue/ComicNeue-Bold.ttf
          weight: 700
        - asset: assets/fonts/Comic_Neue/ComicNeue-Light.ttf
          weight: 300

    - family: Dancing_Script
      fonts:
        - asset: assets/fonts/Dancing_Script/DancingScript-VariableFont_wght.ttf

    - family: Handlee
      fonts:
        - asset: assets/fonts/Handlee/Handlee-Regular.ttf

    - family: Lobster
      fonts:
        - asset: assets/fonts/Lobster/Lobster-Regular.ttf

    - family: Montserrat_Alternates
      fonts:
        - asset: assets/fonts/Montserrat Alternates/MontserratAlternates-Regular.ttf
        - asset: assets/fonts/Montserrat Alternates/MontserratAlternates-Bold.ttf
          weight: 700
        - asset: assets/fonts/Montserrat Alternates/MontserratAlternates-Light.ttf
          weight: 300
        - asset: assets/fonts/Montserrat Alternates/MontserratAlternates-Medium.ttf
          weight: 500

    - family: Nunito
      fonts:
        - asset: assets/fonts/Nunito/Nunito-Italic-VariableFont_wght.ttf
          style: italic
        - asset: assets/fonts/Nunito/Nunito-VariableFont_wght.ttf


    - family: Patrick_Hand
      fonts:
        - asset: assets/fonts/Patrick_Hand/PatrickHand-Regular.ttf

    - family: Patrick_Hand_SC
      fonts:
        - asset: assets/fonts/Patrick_Hand_SC/PatrickHandSC-Regular.ttf


    - family: Titillium_Web
      fonts:
        - asset: assets/fonts/Titillium_Web/TitilliumWeb-Black.ttf
        
```