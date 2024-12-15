# Appointment App
# 📐 Application Structure

The project is designed with a clean and organized structure for better clarity and scalability.

## 1. Core
This folder contains the fundamental and shared components of the app:  
- **DI (Dependency Injection):**  
   - Uses `get_it` for managing dependencies.  
- **Networking:**  
   - Utilizes `dio` along with `retrofit` for clean and simplified API calls.  
- **Routing:**  
   - Manages navigation between screens.  
- **Helpers:**  
   - Utility classes and helper functions.  
- **Theming:**  
   - Handles the app’s theme and color customization.  
- **Widgets:**  
   - Reusable UI components.  

---

## 2. Features
The app is modularized into features, and each feature has an independent structure:  

### Feature: Home  
- **Data**  
   - **Models:** Data models for the feature.  
   - **Repo:** Repository layer for data access.  
- **Logic**  
   - **Cubit/States:**  
     State management using `flutter_bloc` and Cubit.  
- **UI**  
   - **Screens/Widgets:**  
     Screens and reusable UI components for the feature.  

---

## 🛠️ Dependencies

### Main Libraries  
- **State Management:**  
   - `flutter_bloc`  
- **Dependency Injection:**  
   - `get_it`  
- **Networking:**  
   - `dio`  
   - `retrofit`  
   - `pretty_dio_logger`  
- **Code Generation:**  
   - `freezed` and `freezed_annotation`  
   - `json_serializable` and `json_annotation`  
   - `build_runner`  
- **Localization:**  
   - `easy_localization`  
   - `intl`  
- **UI Libraries:**  
   - `flutter_svg`  
   - `flutter_screenutil`  
- **Firebase Integration:**  
   - `firebase_core`  
- **Splash Screen:**  
   - `flutter_native_splash`  

---

## 🚀 How to Run the Project

1. **Install dependencies:**  
   ```bash
   flutter pub get
2. **Generate required files:** 
   Use the following command to generate freezed and retrofit files:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
2. **flutter run:** 
   ```bash
   flutter run
   ```
---

## 🗂️ Folder Structure

```plaintext
lib/
│
├── core/                # Shared core components
│   ├── di/              # Dependency Injection
│   ├── networking/      # Dio + Retrofit
│   ├── routing/         # Navigation management
│   ├── helpers/         # Utility functions
│   ├── theming/         # App themes and colors
│   └── widgets/         # Reusable UI components
│
├── features/            # App features
│   └── home/            # Home feature
│       ├── data/        # Data layer (Models, Repository)
│       ├── logic/       # State management (Cubit/States)
│       └── ui/          # User Interface (Screens/Widgets)
│
├── my_app.dart          # The main app widget; sets up the app structure and themes
├── main_development.dart # Entry point for the development environment
└── main_production.dart  # Entry point for the production environment
