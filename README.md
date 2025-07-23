# CleanArchitectureSwiftUI

A reference SwiftUI app demonstrating **Clean Architecture** for iOS, using real API data, offline caching, and professional testability.

---

## ✨ Features

- **Splash Screen:** Loads user data from the internet or cache, with a friendly 2-second splash.
- **User List Screen:** Shows all users, supports fast search with clear icon, and taps for detail.
- **User Detail Screen:** Tap any user to see their details, with clean navigation.
- **Offline Support:** Uses UserDefaults to cache API results for offline use.
- **Clean Architecture:** Strict separation of Presentation, Application, Domain, and Data layers.
- **Minimal Dependencies:** 100% pure Swift/SwiftUI and Foundation.
- **Modern UI:** State-driven, reactive, and beautiful.
- **Robust Unit Tests:** Easy mocking and testable logic at all layers.

---

## 🏛️ Clean Architecture Principles

> **"Inner layers know nothing about outer layers."**  
> — Uncle Bob (Robert C. Martin)

This project demonstrates Clean Architecture in iOS, **separating code by responsibility** for testable, maintainable, and scalable code.

- **Presentation Layer:** SwiftUI Views and ViewModels (no business/data code)
- **Application Layer:** Use cases (coordinate business logic, unaware of data/UI)
- **Domain Layer:** Pure business models & repository protocols (no frameworks, no iOS code)
- **Data Layer:** API, cache, repository implementations (only this layer knows about URLSession, UserDefaults, etc.)

### Why Use Clean Architecture?

- Refactor your data source (API, cache, CoreData, Firebase, etc.) with **zero impact on UI/business code**
- **Unit test** every layer in isolation (no more flaky, slow UI/network tests)
- Add new features and screens faster—**no tangled dependencies**
- Real-world proven: used by Google, Square, Uber, and the world’s best teams

---


<img width="800" height="800" alt="Clean-Architecture-1" src="https://github.com/user-attachments/assets/61d67af7-dccf-442c-bbea-9229e7f5986a" />



## 📂 Project Structure

```text
CleanArchitectureSwiftUI/
├── Application/
│   └── UseCases/           # Use cases (Application Layer)
├── Data/
│   ├── Model/              # API DTOs (UserDto)
│   ├── Repository/         # Repository implementations
│   └── Source/             # Data sources (Remote/Local)
├── Domain/
│   ├── Model/              # Pure business models (User)
│   └── Repository/         # Repository protocols/interfaces
├── Presentation/
│   ├── Splash/             # SplashScreen (View + ViewModel)
│   ├── UserList/           # UserListView (View + ViewModel)
│   └── UserDetail/         # UserDetailView (View)
├── Assets/
└── ... (boilerplate)

---

*Tests are mirrored in `/Tests/` for robust testing by layer!*

---

## 🔗 Public API Used

- [JSONPlaceholder /users](https://jsonplaceholder.typicode.com/users)

---

## 🛠️ Tech Stack

- **Swift 5.9+**
- **SwiftUI**
- **URLSession** (networking)
- **UserDefaults** (offline cache)
- **Foundation** (JSON parsing)
- **XCTest** (unit tests)
- **No third-party libraries required!**

---

## 🚀 How To Run

1. **Clone this repo.**
2. Open `CleanArchitectureSwiftUI.xcodeproj` in **Xcode 15+**.
3. Select your preferred **simulator or device**.
4. Click **Run (⌘R)**!
    - **First run:** Loads users from API and caches them.
    - **Next runs:** Loads from cache instantly if offline.
5. To run tests: Go to **Product > Test (⌘U)**

---

