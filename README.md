# mgbilling: Modern Inventory & Billing Management System (Cloud-Ready)

A comprehensive, cloud-ready Flutter-based software for retail shops, designed to manage inventory, billing, analytics, and more—all with a beautiful, modern UI. The long-term plan is to make mgbilling fully cloud-based, enabling real-time sync, multi-device access, and seamless scalability.

## Features

- **Inventory Management**
  - Add, update, delete, and search products
  - Stock tracking with low-stock alerts
  - Product categories, barcodes, and batch management

- **Billing & Invoicing**
  - Fast, intuitive billing interface
  - Generate, print, and share invoices
  - Apply discounts, taxes, and manage returns

- **Analytics & Reporting**
  - Real-time sales and inventory statistics
  - Daily, weekly, and monthly sales reports
  - Top-selling products, customer insights

- **User Management**
  - Role-based access (admin, cashier, manager)
  - Secure authentication

- **Database & Sync**
  - Local SQLite storage for offline use (current)
  - Cloud database integration for real-time sync and multi-device access (planned)
  - Easy data backup and restore

- **Modern UI/UX**
  - Responsive design for desktop, tablet, and mobile
  - Clean, intuitive navigation
  - Customizable themes

- **Extensible Architecture**
  - Modular codebase for easy feature addition
  - Well-structured directories for scalability

## Directory Structure

```
lib/
├── main.dart
├── app.dart
├── core/
│   ├── constants/
│   ├── error/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── inventory/
│   │   ├── data/...
│   │   ├── domain/...
│   │   ├── presentation/...
│   │   └── inventory_module.dart
│   ├── billing/
│   │   ├── data/...
│   │   ├── domain/...
│   │   ├── presentation/...
│   │   └── billing_module.dart
│   ├── stats/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── presentation/
│   │   └── stats_module.dart
├── services/
│   └── database/
│       └── sqlite_service.dart
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio/Xcode for mobile builds
- macOS, Windows, or Linux

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/MOHIT-S-MAURYA/mgbilliing.git
   cd mgbilling
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

### Project Structure

- **lib/core/**: Shared constants, utilities, widgets
- **lib/features/inventory/**: Inventory management (data, domain, presentation)
- **lib/features/billing/**: Billing and invoice management
- **lib/features/stats/**: Analytics and reporting
- **lib/services/database/**: SQLite integration

### Database

- Uses SQLite for local data storage (current)
- Cloud database integration (e.g., Firebase, Supabase, or custom backend) is planned for future releases
- See `lib/services/database/sqlite_service.dart` for schema and CRUD operations

### UI/UX

- Built with Flutter’s latest widgets and design patterns
- Responsive layouts for all device sizes
- Customizable themes and branding

## Contributing

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -am 'Add new feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Open a Pull Request
s
## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Figma UI Design](https://www.figma.com/community/file/1281501326165558581/inventory-management-system)