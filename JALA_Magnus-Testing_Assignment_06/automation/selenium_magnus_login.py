from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.options import Options

# Update the ChromeDriver path if needed
CHROME_DRIVER_PATH = r"C:\Path\To\chromedriver.exe"

URL = "http://magnus.jalatechnologies.com/"
USERNAME = "training@jalaacademy.com"
PASSWORD = "jobprogram"


def test_admin_login():
    options = Options()
    options.add_argument("--start-maximized")
    service = ChromeService(executable_path=CHROME_DRIVER_PATH)
    driver = webdriver.Chrome(service=service, options=options)

    try:
        driver.get(URL)

        # TODO: Update selectors for actual login fields
        username_field = driver.find_element(By.ID, "UserName")
        password_field = driver.find_element(By.ID, "Password")
        login_button = driver.find_element(By.ID, "btnLogin")

        username_field.send_keys(USERNAME)
        password_field.send_keys(PASSWORD)
        login_button.click()

        # TODO: Update validation to actual post-login landing page
        assert "home" in driver.title.lower() or "dashboard" in driver.title.lower(), "Login failed or landing page title changed"

        print("TC_001: Admin login passed")
    except Exception as err:
        print(f"TC_001: Admin login failed - {err}")
        raise
    finally:
        driver.quit()


if __name__ == "__main__":
    test_admin_login()
