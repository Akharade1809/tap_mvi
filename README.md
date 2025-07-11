# 📱 TapMVI

A modern Flutter application built using the **MVI (Model-View-Intent)** architecture, embracing **Bloc**, **Cubit**, **Freezed**, and **SOLID** principles. This project is designed for clean, scalable, and testable mobile development.


---

## 🚀 Getting Started

This repository includes a production-ready Flutter app using clean architecture principles.

### ✅ Features

- 🔁 MVI Pattern (Cubit/Bloc)
- 🧊 Immutable models with `Freezed`
- 📦 Dependency Injection using `injectable` & `get_it`
- 📡 API Integration using `http`
- 🎨 Custom Themes & Styling
- 🔍 Smart Search with Highlighting
- 🧭 Centralized Navigation via `AppRouter`

---

## 📁 Project Structure

```bash
lib/
│
├── core/                      # Global configurations (DI setup, themes, constants)
│   ├── di/                    # Dependency Injection setup
│   ├── base/                  # base models / parent classes
│
├── app/                       # App-level logic
│   └── navigation/            # Route AppRouter, NavItem
│   └── themes/                # App Theme
│
├── features/                  # Feature-first organization
│   ├── home/
│   │   ├── data/              # DTOs, API services, repositories
│   │   ├── domain/            # Entities, use cases, interfaces
│   │   └── presentation/      # Cubits, Views, Widgets
│   ├── company_detail/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── splash_screen/
│       ├── data/
│       ├── domain/
│       └── presentation/
│ 
├── main.dart                  # Entry point of the app
```
## 🛠️ Tech Stack

- Flutter 3.32.5
- Bloc & Cubit (State Management)
- Freezed (Data Classes & Unions)
- Injectable + GetIt (DI)
- HTTP (API Requests)
- Custom Theming
- Material Design 3

## 🤝 Contributing

PRs, suggestions, and issues are welcome!


