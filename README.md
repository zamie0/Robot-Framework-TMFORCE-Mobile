# Robot-Framework-TMFORCE-Mobile

## 🚀 Project Overview

This repository hosts an automated test suite developed using **Robot Framework** for the **TMFORCE-Mobile** application. It leverages a keyword-driven approach to facilitate robust, readable, and maintainable end-to-end tests for mobile applications. The suite is designed to verify various functionalities, from user login and task management to service verification and utility tests like Wi-Fi connectivity.

## ✨ Key Features & Benefits

*   **Automated Mobile Testing**: Comprehensive test automation for the TMFORCE-Mobile application across various functionalities.
*   **Keyword-Driven Approach**: Tests are built using reusable keywords, making them highly readable and easy to understand, even for non-technical stakeholders.
*   **Modular & Scalable**: A well-organized structure with dedicated directories for configurations, keywords, and locators promotes modularity and allows for easy expansion.
*   **Easy Maintenance**: Centralized keyword definitions and locators simplify test maintenance and updates.
*   **Robust Reporting**: Generates detailed HTML test reports and logs, providing clear insights into test execution results.
*   **CI/CD Friendly**: Designed to be integrated into Continuous Integration/Continuous Delivery pipelines for automated quality checks.

## 🛠️ Technologies

This project utilizes the following key technologies:

*   **Robot Framework**: An open-source automation framework for acceptance testing, acceptance test-driven development (ATDD), and robotic process automation (RPA).
*   **Python**: The programming language underpinning Robot Framework.
*   **Appium Library for Robot Framework**: (Inferred) Likely used for interacting with mobile applications (Android/iOS) and devices/emulators.
*   **Appium Server**: (Inferred) Necessary backend server to enable communication between test scripts and mobile devices.
*   **Node.js**: (Inferred) Required for running the Appium Server.

## 📋 Prerequisites & Dependencies

Before you can run these tests, ensure you have the following installed and configured:

*   **Python 3.x**: [Download Python](https://www.python.org/downloads/)
*   **pip**: Python package installer (usually comes with Python).
*   **Node.js & npm**: [Download Node.js](https://nodejs.org/en/download/)
*   **Appium Server**: Install globally via npm:
    ```bash
    npm install -g appium
    appium driver install uiautomator2 # For Android
    # appium driver install xcuitest # For iOS (if applicable)
    ```
*   **Android SDK / Xcode**:
    *   For Android testing, ensure you have Android SDK installed, `ANDROID_HOME` environment variable set, and `platform-tools` added to your system PATH.
    *   For iOS testing, you'll need Xcode installed on a macOS machine.
*   **Mobile Device or Emulator**: An Android device/emulator with developer options and USB debugging enabled, or an iOS simulator/device.

## 🚀 Installation & Setup

Follow these steps to get the project up and running on your local machine:

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/zamie0/Robot-Framework-TMFORCE-Mobile.git
    cd Robot-Framework-TMFORCE-Mobile
    ```

2.  **Install Python Dependencies**:
    It's recommended to use a virtual environment.
    ```bash
    python -m venv venv
    # On Windows
    .\venv\Scripts\activate
    # On macOS/Linux
    source venv/bin/activate

    pip install robotframework
    pip install robotframework-appiumlibrary # Or other relevant libraries like SeleniumLibrary if web views are involved
    # Add any other project-specific dependencies here
    ```
    *Note: A `requirements.txt` file would be ideal here for easy dependency management.*

3.  **Start Appium Server**:
    Open a new terminal window and start the Appium server:
    ```bash
    appium
    ```
    Ensure the Appium server is running before executing tests.

4.  **Configure `setting.robot`**:
    Navigate to the `Configs/` directory and open `setting.robot`. Adjust the `Desired Capabilities`, Appium server URL, and other environment-specific variables to match your test environment (e.g., device name, platform version, app package, app activity, etc.).

## 💡 Usage Examples

To run the tests, use the `robot` command from the project root directory.

1.  **Run a specific test suite (e.g., Login tests):**
    ```bash
    robot Keywords/Login.robot
    ```

2.  **Run all tests in the `Keywords` directory:**
    ```bash
    robot Keywords/
    ```

3.  **Run tests with custom variables (e.g., a specific device ID):**
    ```bash
    robot -v DEVICE_ID:emulator-5554 Keywords/Login.robot
    ```

4.  **View Test Reports**:
    After execution, HTML reports (`report.html`) and logs (`log.html`) will be generated in the output directory (usually the directory from where the `robot` command was executed, or a specified `--outputdir`). Open these files in your web browser to view detailed test results.

### Project Structure

```
.
├── .gitignore
├── Configs/
│   └── setting.robot           # Configuration file for test environment, capabilities, etc.
├── Keywords/
│   ├── ATV.robot               # Keywords for ATV (All Task View?) related functionalities
│   ├── AssignedTask.robot      # Keywords for assigned task management
│   ├── Attachment_Note.robot   # Keywords for handling attachments and notes
│   ├── CCP.robot               # Keywords for CCP (Customer Care Portal?) functionalities
│   ├── CurrentTask.robot       # Keywords for current task operations
│   ├── FDP.robot               # Keywords for FDP (Field Dispatch Portal?) operations
│   ├── LaunchApp.robot         # Keywords for launching and closing the mobile application
│   ├── Login.robot             # Keywords for user login and logout
│   ├── RAF.robot               # Keywords for RAF (Request for Approval?) processes
│   ├── ServiceVerify.robot     # Keywords for service verification flows
│   ├── Sidebar.robot           # Keywords for interactions with the application's sidebar/navigation menu
│   ├── SupplyLogisticInventory.robot # Keywords for supply, logistic, and inventory management
│   ├── Task.robot              # General task-related keywords
│   ├── Ticket.robot            # Keywords for ticket management
│   └── WifiTest.robot          # Keywords for Wi-Fi related tests (e.g., connectivity checks)
└── Locators/                   # Directory to store element locators (e.g., XPaths, IDs)
    └── # Placeholder for locator files
```

## ⚙️ Configuration Options

The primary configuration file for this project is `Configs/setting.robot`. This file is crucial for defining environment-specific variables and Appium capabilities.

**Common configuration items in `setting.robot` include:**

*   **`APPIUM_SERVER_URL`**: The URL where your Appium server is running (e.g., `http://127.0.0.1:4723/wd/hub`).
*   **`PLATFORM_NAME`**: The mobile OS (e.g., `Android`, `iOS`).
*   **`PLATFORM_VERSION`**: The OS version of your device/emulator (e.g., `11.0`, `14.5`).
*   **`DEVICE_NAME`**: The name of your device/emulator (e.g., `Pixel_4_API_30`, `iPhone 12 Pro`).
*   **`APP_PACKAGE`**: The package identifier of the Android application (e.g., `com.example.tmforce`).
*   **`APP_ACTIVITY`**: The main activity of the Android application (e.g., `com.example.tmforce.MainActivity`).
*   **`NO_RESET`**: (True/False) To prevent resetting the app state between test sessions.
*   **`FULL_RESET`**: (True/False) To perform a full reset (uninstall/install) of the app between test sessions.

**Example `setting.robot` snippet:**

```robotframework
***Settings***
Library    AppiumLibrary

***Variables***
${APPIUM_SERVER_URL}    http://127.0.0.1:4723/wd/hub
&{ANDROID_CAPABILITIES}
    platformName=Android
    platformVersion=11.0
    deviceName=Pixel_4_API_30
    appPackage=com.tmforce.mobile
    appActivity=com.tmforce.mobile.MainActivity
    automationName=UiAutomator2
    noReset=True
    # Add other capabilities as needed
```

## 🤝 Contributing Guidelines

Contributions are welcome! If you'd like to contribute, please follow these steps:

1.  **Fork** the repository.
2.  **Create a new branch** (`git checkout -b feature/your-feature-name`).
3.  **Implement** your changes, ensuring adherence to existing code style and Robot Framework best practices.
    *   Create new keywords in relevant `.robot` files within the `Keywords/` directory.
    *   Define locators in the `Locators/` directory if they are complex or frequently used.
    *   Update `setting.robot` or add new configuration variables if necessary.
4.  **Write clear, concise commit messages**.
5.  **Push** your branch (`git push origin feature/your-feature-name`).
6.  **Open a Pull Request** describing your changes and their benefits.

## 📄 License Information

This project currently has **no specified license**. This means that by default, all rights are reserved by the copyright holder.

It is highly recommended to add a standard open-source license (e.g., MIT, Apache 2.0, GPL) to clarify usage, modification, and distribution terms.

## 🙏 Acknowledgments

*   [Robot Framework](https://robotframework.org/) - For providing an excellent test automation framework.
*   [Appium](http://appium.io/) - For enabling mobile application automation.
*   [Python](https://www.python.org/) - The versatile language powering this project.