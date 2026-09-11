# SKIN App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Android Studio](https://img.shields.io/badge/Android_Studio-3DDC84?style=for-the-badge&logo=android-studio&logoColor=white)

A minimalistic, cross-platform dermatological analysis application built with Flutter. SKIN provides users with AI-driven skin analysis, routine tracking, and expert consultations wrapped in a clean, nature-inspired user interface.

## 📐 Architecture & Design System

This project strictly follows a custom Design System pattern to ensure component reusability and UI consistency. The architecture separates UI building blocks from the final composed screens.

```text
lib/
├── components/     # Reusable atomic UI elements (Buttons, TabBars, Cards)
├── screens/        # Composed views utilizing components
└── main.dart       # Application entry point