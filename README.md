# iOS Portfolio – Rashida Dalal

This repository showcases a curated set of iOS projects demonstrating my experience building scalable, secure, and production-ready mobile applications.

The focus is on clean architecture, modern Swift development, performance optimization, and real-world problem solving aligned with enterprise iOS engineering standards.

## About Me

Senior iOS Developer with 10 years of professional experience designing, developing, and maintaining high-quality iOS applications across Finance, Healthcare, and B2B domains.

Experienced in working with global teams, contributing to architecture decisions, optimizing performance, and delivering production-ready applications used at scale.

## Technical Stack

**Programming Languages & Frameworks**
- Swift, Objective-C
- SwiftUI, UIKit, Combine
- Core Data, Core Animation, AVFoundation
- Grand Central Dispatch (GCD)
- Swift Modern Concurrency

**Architecture & Design**
- MVVM, MVC, TCA
- Clean Architecture, SOLID principles
- Modularization using Swift Package Manager (SPM)
- Coordinator-based navigation patterns

**Networking & Data**
- RESTful APIs
- URLSession, Alamofire
- JSON parsing and error handling
- Secure token handling and session management
- Security & Encryption

**Testing & Quality**
- XCTest (Unit & UI Testing)
- Test-Driven Development (TDD)
- Code reviews, debugging, performance optimization
- Memory management using Instruments

**Tools & DevOps**
- Xcode, Git
- CI/CD (FastLane, SonarQube, GitHub Actions)
- Firebase, Firestore
- JIRA, Confluence

## Featured Demo Work

### 1. iOS Architecture Patterns
A modular demo comparing MVVM and Clean Architecture, with a testable layering approach from View through to Repository.

**Highlights**
- Side-by-side MVVM vs. Clean Architecture implementation
- Modular, SPM-based project layering
- Clear separation of concerns across View, ViewModel, and Repository
- Built for testability at every layer

**Tech Stack:** Swift, MVVM, Clean Architecture, SPM
🔗 Repository: [`ios-architecture-patterns`](./ios-architecture-patterns)


### 2. SwiftUI & UIKit Components Library

The same reusable UI components — a custom button, card view, and animated loading indicator — built twice: once declaratively in SwiftUI, once imperatively in UIKit.

Highlights

Identical components implemented in both SwiftUI and UIKit for direct comparison
Custom reusable button, card, and animated loading indicator
Consistent visual output across both frameworks
Notes on trade-offs between declarative and imperative approaches

Tech Stack: SwiftUI, UIKit, Swift 
🔗 Repository: [`ios-ui-components`](./ios-ui-components)

### 3.  GCD vs. Modern Concurrency

A side-by-side comparison of Grand Central Dispatch and Swift's modern concurrency model — the same tasks implemented with DispatchQueue/DispatchGroup and again with async/await and actors.

Highlights

Identical tasks implemented with GCD and with async/await for direct comparison
Actor-based isolation to eliminate data races on shared state
Structured task cancellation and error propagation
Notes on when GCD is still the right tool vs. when to reach for async/await

Tech Stack: GCD, Swift Concurrency (async/await, Actors), Combine
🔗 Repository: [`ios-concurrency-demo`](./ios-concurrency-demo)
🔗 Repository: 

### 4. Core Data vs. SwiftData — Local Persistence Layer
A side-by-side local persistence layer comparing Core Data and SwiftData — the same CRUD data model implemented under both frameworks, wrapped behind a shared repository interface.

**Highlights**
- Identical CRUD data model implemented with Core Data and with SwiftData
- Repository pattern abstracting persistence from the rest of the app
- In-memory caching layer with cache invalidation strategy
- Offline-first design with simulated sync-on-reconnect
- Schema migration notes for both frameworks

**Tech Stack:** Core Data, SwiftData, Repository Pattern
🔗 Repository: [`ios-persistence-layer`](./ios-persistence-layer)



### 5. CI/CD Test Automation Pipeline
A working CI/CD pipeline that runs unit and UI test cases automatically on every push, built with Fastlane for build/test automation.

**Highlights**
- Automated CI/CD pipeline running full test suite on every push
- Fastlane-driven build, test, and reporting automation
- Unit and UI test coverage with XCTest
- Mocking strategy for network and persistence dependencies

**Tech Stack:** XCTest, Fastlane, CI/CD
🔗 Repository: [`ios-testing-demo`](./ios-testing-demo)


### 6. Modular Networking Layer (SPM)
A reusable and testable networking layer built as a Swift Package.

**Highlights**
- Request/response abstraction
- Centralized error handling
- Decodable API models
- Easily pluggable across multiple apps

**Tech Stack:** Swift, Swift Package Manager, URLSession, Alamofire
🔗 Repository: [`NetworkKit`](./NetworkKit)


## Key Engineering Practices

- Production-grade coding standards
- Scalable and maintainable architecture
- Performance optimization and memory management
- Secure data handling
- End-to-end feature ownership
- Cross-functional collaboration

## Notes

- All projects are sample implementations.
- No proprietary or client-specific code is included.
- Repositories are maintained to reflect real-world engineering practices.

## Contact

**Rashida Dalal**

Senior iOS Developer

- LinkedIn: https://www.linkedin.com/in/rashida-dalal-9b29a6164/
- GitHub: https://github.com/Rashida99261
- Email: rashida99261@gmail.com
