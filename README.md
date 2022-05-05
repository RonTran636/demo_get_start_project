# demo_get_start_project

A quick view for starting up the project

## Getting Started

###1. Chosen state management: GetX

###2. Setting up project:
  - For fast generate assets file, I created a shorcut to run it. Everytime new assets added, run `./generated_build.sh`.
  - For generate string, after add string to `assets/translation/en-US` , run the command above.

###3. Setting up flavor to run:
  - Referral link: `https://medium.com/@animeshjain/build-flavors-in-flutter-android-and-ios-with-different-firebase-projects-per-flavor-27c5c5dac10b`
  - For Android Studio users: edit on `Edit Configuration`, choose entry point match with the flavor you want, add into flavor field chosen flavor.
  - For Visual Studio Code user: create a file in `.vscode/launch.json` and config like below
  ```
    {
    "version": "0.2.0",
    "configurations": [
        {
            "name": "dev",
            "type": "dart",
            "request": "launch",
            "args": [
                "--flavor",
                "dev"
            ],
            "program": "lib/main_dev.dart"
        },
        {
            "name": "staging",
            "type": "dart",
            "request": "launch",
            "args": [
                "--flavor",
                "staging"
            ],
            "program": "lib/main_staging.dart"
        },
        {
            "name": "prod",
            "request": "launch",
            "type": "dart",
            "args": [
                "--flavor",
                "prod"
            ],
            "program": "lib/main_prod.dart"
        }
    ]
  }
  ```

###4. Build APK for Android testing (Firebase Distribution)

 - Run the command: `flutter build apk --flavor <flavor_value> -t lib/main.<flavor_value>.dart`
 - Available flavors: `dev` / `staging` / `prod`
