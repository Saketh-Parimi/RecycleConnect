# Recycle Connect

This project is a recycling sustainability social media app. Consumers who don't know how to recycle their items, like batteries, can post a post about their recyclable items, then a volunteer and see the post and use that information to get the items and put it in a recycling plant. The volunteer can see the nearest recycling plant on the app also.

## Clone the code repository

```bash
git clone https://github.com/Saketh-Parimi/RecycleConnect
cd RecycleConnect
```

## Prerequisites

Backend:

-   [Python > 3.8](https://python.org) _(NOTE: MacOS and Linux users should use the `python3` command, while Windows users should use `python`)_

Frontend:

-   [NodeJS > 16.1](https://nodejs.org)

Mobile:

-   [Flutter > 3.4](https://flutter.dev)
-   [Android Studio](https://docs.flutter.dev/get-started/install/macos#android-setup) for Android development on Windows, MacOS, or Linux OR [Xcode](https://docs.flutter.dev/get-started/install/macos#ios-setup) for iOS development on MacOS

## Setting up the Mobile Frontend (Mobile Folder)

Make sure to run `flutter doctor` and fix any issues with the SDK installation. Then, launch your emulator from either Android Studio or Xcode.

```bash
cd mobile
flutter pub get
flutter run lib/main.dart
```

## Setting up the Server Backend (Server Folder)

WINDOWS:

```bash
python -m venv server/venv
.\server\venv\Scripts\activate
pip install -r server/requirements.txt
python server/main.py
```

MAC/LINUX:

```bash
python3 -m venv server/venv
source server/venv/bin/activate
pip3 install -r server/requirements.txt
python3 server/main.py
```

Navigate to the URL displayed in the terminal in your web browser of choice.

_NOTE: When testing locally, the backend server should be running alongside the frontend platform being worked on._
