from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.options import Options

CHROME_DRIVER_PATH = r"C:\Path\To\chromedriver.exe"
URL = "http://magnus.jalatechnologies.com/"
USERNAME = "training@jalaacademy.com"
PASSWORD = "jobprogram"


def create_driver():
    options = Options()
    options.add_argument("--start-maximized")
    service = ChromeService(executable_path=CHROME_DRIVER_PATH)
    return webdriver.Chrome(service=service, options=options)


def admin_login(driver):
    driver.get(URL)
    # TODO: Confirm actual login selectors on the page
    driver.find_element(By.ID, "UserName").send_keys(USERNAME)
    driver.find_element(By.ID, "Password").send_keys(PASSWORD)
    driver.find_element(By.ID, "btnLogin").click()


def verify_login():
    driver = create_driver()
    try:
        admin_login(driver)
        assert "home" in driver.title.lower() or "dashboard" in driver.title.lower(), "Login landing page not found"
        print("TC_001: Admin login passed")
    except Exception as err:
        print(f"TC_001: Admin login failed - {err}")
        raise
    finally:
        driver.quit()


def test_forgot_password():
    driver = create_driver()
    try:
        driver.get(URL)
        driver.find_element(By.LINK_TEXT, "Forgot Password").click()
        driver.find_element(By.ID, "Email").send_keys(USERNAME)
        driver.find_element(By.ID, "ResetButton").click()
        # TODO: Update selector and validation for actual success message
        assert "email sent" in driver.page_source.lower(), "Forgot password confirmation missing"
        print("TC_004: Forgot password passed")
    except Exception as err:
        print(f"TC_004: Forgot password failed - {err}")
        raise
    finally:
        driver.quit()


def test_search_student():
    driver = create_driver()
    try:
        admin_login(driver)
        # TODO: Update navigation and selector for student search page
        driver.find_element(By.ID, "studentSearch").send_keys("9999999999")
        driver.find_element(By.ID, "searchButton").click()
        assert "results" in driver.page_source.lower(), "Search results not displayed"
        print("TC_002: Student search passed")
    except Exception as err:
        print(f"TC_002: Student search failed - {err}")
        raise
    finally:
        driver.quit()


def test_newsletter_subscription():
    driver = create_driver()
    try:
        admin_login(driver)
        # TODO: Update navigation and selector for newsletter page
        driver.find_element(By.ID, "newsletterEmail").send_keys("testuser@example.com")
        driver.find_element(By.ID, "subscribeBtn").click()
        assert "subscribed" in driver.page_source.lower(), "Subscription confirmation missing"
        print("TC_005: Newsletter subscription passed")
    except Exception as err:
        print(f"TC_005: Newsletter subscription failed - {err}")
        raise
    finally:
        driver.quit()


def test_edit_user_group():
    driver = create_driver()
    try:
        admin_login(driver)
        # TODO: Update navigation and selectors for user group edit workflow
        driver.find_element(By.LINK_TEXT, "System").click()
        driver.find_element(By.LINK_TEXT, "User Groups").click()
        driver.find_element(By.LINK_TEXT, "Edit").click()
        checkbox = driver.find_element(By.NAME, "permissionCheckbox")
        if not checkbox.is_selected():
            checkbox.click()
        driver.find_element(By.ID, "saveButton").click()
        assert "success" in driver.page_source.lower(), "Edit user group save confirmation missing"
        print("TC_006: Edit user group passed")
    except Exception as err:
        print(f"TC_006: Edit user group failed - {err}")
        raise
    finally:
        driver.quit()


if __name__ == "__main__":
    verify_login()
    # Uncomment other tests after verifying selectors and workflow
    # test_forgot_password()
    # test_search_student()
    # test_newsletter_subscription()
    # test_edit_user_group()
