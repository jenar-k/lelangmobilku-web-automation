# lelangmobilku-web-automation

Automation template using **Robot Framework + SeleniumLibrary** with **Allure Report** and **GitHub Actions (Windows)**.

## Quickstart

```bash
pip install -r requirements.txt
robot --listener allure_robotframework;ALLURE_RESULTS_DIR=Reports/allure Tests/
# To view the report:
# allure serve Reports/allure
```

> Update the locators in `Resources/Locators/*.yaml` to match the real site.
