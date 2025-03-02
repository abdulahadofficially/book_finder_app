Book Finder App

Overview

Book Finder is a Flutter application that allows users to search for books, add books to their favourites list, and remove them from favourites. The app uses SQLite for offline storage, GetX for state management, and SharedPreferences for Dark Theme persistence.

Features

Search Books

Add to Favourites

Remove from Favourites

Offline Storage with SQLite

GetX State Management

Dark Theme Support (with SharedPreferences)

Tech Stack

Flutter

Dart

GetX

SQLite

SharedPreferences

Cached Network Image

Setup Instructions

Prerequisites

Flutter installed (version 3.10.0 or later)

Android Studio or Visual Studio Code

Emulator or Physical Device

Installation

Clone the Repository

git clone https://github.com/username/book_finder.git
cd book_finder

Install Dependencies

flutter pub get

Run the App

flutter run

Folder Structure

lib/
│
├─ core/             # Core services like DBService and ThemeService
├─ data/             # Data models
├─ presentation/     # UI and Controller
│   ├─ controllers/  # GetX Controllers
│   ├─ screens/      # App Screens
│   └─ widgets/      # Reusable Widgets
└─ main.dart         # Entry Point

Database Setup

SQLite database is automatically initialized when the app runs.

The table name is favourites_books

Dark Theme Setup

Dark Theme is managed through SharedPreferences.

The user's theme preference is saved and applied automatically on app restart.

Usage

Click on the Heart Icon ❤️ to add a book to favourites.

Go to the Favourite Screen to view all favourite books.

Click on the Delete Icon 🗑️ to remove books from favourites.

Toggle Dark Theme from the app settings screen.

Dependencies
