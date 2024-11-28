# Compose Desktop Hello World

A simple Hello World desktop application built with Jetpack Compose for Desktop.

## Prerequisites

Before you begin, ensure you have the following installed:
- Java Development Kit (JDK) 17 or later
  - Download from: [Eclipse Temurin JDK 17](https://adoptium.net/temurin/releases/?version=17)
  - Make sure JAVA_HOME is set in your environment variables
- Gradle (Optional - Project includes Gradle Wrapper)
  - If you don't have Gradle installed globally, you can use the provided `setup-gradle.ps1` script:
    ```powershell
    # Run in PowerShell as Administrator
    .\setup-gradle.ps1
    ```
    This script will:
    - Download Gradle 8.3
    - Install it to C:\gradle
    - Add Gradle to your PATH
    - Set GRADLE_HOME environment variable

## Project Setup

1. Clone the repository:
```bash
git clone [your-repository-url]
cd compose-desktop-hello
```

2. No additional setup is required as the project uses Gradle Wrapper (gradlew), which will automatically download the correct Gradle version and dependencies.

## Running the Application

### Using Command Line

1. Open a terminal/command prompt
2. Navigate to the project directory
3. Run the application using:
```bash
# On Windows
.\gradlew.bat run

# On Linux/macOS
./gradlew run
```

### Using an IDE

1. Open the project in IntelliJ IDEA or another IDE that supports Kotlin
2. Wait for the IDE to sync the Gradle project
3. Run the `Main.kt` file

## Project Structure

```
compose-desktop-hello/
├── build.gradle.kts           # Gradle build configuration
├── settings.gradle.kts        # Gradle settings
├── src/
│   └── main/
│       └── kotlin/
│           └── Main.kt       # Main application code
└── README.md                 # This file
```

## Technologies Used

- Kotlin 1.8.20
- Compose Desktop 1.4.0
- Gradle Build System
- Material 3 Components

## Building Distribution

To create a distribution package:

```bash
# Windows (MSI)
.\gradlew.bat packageMsi

# Linux (DEB)
.\gradlew.bat packageDeb

# macOS (DMG)
.\gradlew.bat packageDmg
```

The packaged application will be available in the `build/compose/binaries` directory.

## Troubleshooting

1. **Java Version Error**: Make sure you have JDK 17 installed and JAVA_HOME is correctly set
2. **Gradle Build Failed**: Try running with `--stacktrace` flag for more details:
   ```bash
   .\gradlew.bat run --stacktrace
   ```

## License

[Your chosen license]

## Contributing

[Your contribution guidelines]
