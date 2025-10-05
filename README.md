Automated UI testing project for **LelangMobilku** website built with **Robot Framework + SeleniumLibrary**.

---

## 🚀 Overview

This project automates the main web flows of the [LelangMobilku](https://auction.lelangmobilku.co.id/) application including:

- ✅ Register new user  
- ✅ Login with valid credentials  
- ✅ Navigate to Deposit page  
- ✅ Verify UI components and form validations  

The goal of this project is to ensure core functionalities of LelangMobilku are tested in a **modular, reusable, and maintainable** way.

---

## 🧰 Tech Stack

| Category | Tools |
|-----------|-------|
| Test Framework | [Robot Framework](https://robotframework.org/) |
| Browser Automation | [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) |
| Data Generator | [FakerLibrary](https://marketsquare.github.io/robotframework-faker/) |
| Desktop Automation | [RPA.Desktop](https://rpaframework.org/) |
| Reporting | [Allure Report](https://docs.qameta.io/allure/) |
| CI/CD | [GitHub Actions](https://github.com/features/actions) |

---

## Quickstart

### A. Clone the repo
```bash
git clone https://github.com/jenar-k/lelangmobilku-web-automation.git
```

### B. Installing requirements or dependencies
```bash
pip install -r requirements.txt
```

### C. Run Test Locally
```bash
set ALLURE_RESULTS_DIR=Reports\allure && robot --listener allure_robotframework Tests

```

### D. Generate Allure Reports
```bash
allure serve output/allure
```

---
## 🧩 Example Commands

### A. Run single test file:
  ```bash
  robot Tests/login_test.robot
  ```

### B. Run all test:
```bash
robot --listener allure_robotframework Tests
```

---

## 📊 Example Allure Report Sections
![Allure Report on Dashboard](https://drive.google.com/uc?export=view&id=1KIR0nFZrY8UjSWG3lpu2-IjX2UUKOtQB)
![Allure Report on Suites](https://drive.google.com/uc?export=view&id=13nVgkFsn6W6XY8f8aqBqzy4ZoC_-Hffu)


## 👨‍💻 Author

Jenar Kuswidiardi
Quality Assurance Engineer | Automation Enthusiast
📧 [jenarkuswidiardi@gmail.com]
💼 [https://www.linkedin.com/in/jenar-kuswidiardi/]
