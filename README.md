# 📱 TapMVI

A modern Flutter application built with the **MVI (Model-View-Intent)** architecture using **Cubit**, **Bloc**, **Freezed**, and **SOLID principles**. This project is designed for scalable, maintainable, and testable mobile application development.

---

## 🚀 Getting Started

This repository contains a robust Flutter codebase for  mobile app development with a clean architecture pattern.

### ✅ Features

- 🔁 MVI Pattern with `Cubit`/`Bloc`
- 🧊 Immutable Models with `Freezed`
- 📦 Dependency Injection with `injectable` and `get_it`
- 📡 API Integration using `http`
- 🌗 Light/Dark Theme Ready
- 📊 Charts with `fl_chart`
- 🔍 Search Functionality with Highlighting
- 🎬 Splash Screen with animation
- 🔀 Route-based navigation using centralized `AppRouter`

---

## 📁 Project Structure

```bash
lib/
│
├── core/                # Global utilities and setup (DI, constants, themes)
├── app/                 # Navigation and routing
├── features/            # Feature-first folder structure
│   ├── splash_screen/
│   ├── home/
│   └── company_detail/
│
├── main.dart            # App entry point
