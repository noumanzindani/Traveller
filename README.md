# 🧳 Traveller

> **Traveller** is a modern Flutter app that helps users easily plan and book their trips. From discovering beautiful destinations to booking your journey securely, Traveller makes travel planning simple and hassle-free.

---

## ✨ Features

- 🗺️ Browse travel destinations
- 🛒 Easy trip booking system by sliding bar
- 📅 View trip details and full itinerary
- 🌙 SOLID state Priciple

---

## 🚀 Getting Started

### ✅ Prerequisites

- Flutter SDK (3.2.7)
- Dart SDK
- Android Studio / VS Code

### 🔧 Installation

1. Clone the repository:
   git clone https://github.com/noumanzindani/traveller.git
   cd traveller

2. Get the dependencies:
   flutter pub get

3. Run the app:
   flutter run

---

## 🏗️ App Architecture – MVVM (Model-View-ViewModel)

Traveller is built using the **MVVM (Model-View-ViewModel)** architecture to maintain a clean, scalable, and maintainable codebase.


### 🧱 Project Structure

lib/
├── models/ # Data models
├── views/ # UI screens
├── viewmodels/ # Business logic
├── services/ # API calls, auth, booking, etc.
├── utils/ # Constants, helpers
└── main.dart # Entry point

### 📦 Packages Used

provider – State management

slide_to_act – slider widegt

uuid – Uniqe Id Generator

flutter_native_splash – Splash Scrren

### 📄 License

This project is licensed under the MIT License.
