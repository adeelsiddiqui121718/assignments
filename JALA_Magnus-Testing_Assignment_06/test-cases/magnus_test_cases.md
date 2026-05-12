# Magnus Test Cases

## TC_001 – Admin Login
- **Scenario ID:** TS_001
- **Preconditions:** Admin account exists.
- **Test Steps:**
  1. Open the browser and navigate to http://magnus.jalatechnologies.com/
  2. Enter user name: `training@jalaacademy.com`
  3. Enter password: `jobprogram`
  4. Click the Login button.
- **Expected Result:** Admin should be logged in successfully and redirected to the Home dashboard.
- **Actual Result:** 
- **Status:** 
- **Comments:** 

## TC_002 – Search Student by Mobile Number
- **Scenario ID:** TS_002
- **Preconditions:** At least one student record exists in the system.
- **Test Steps:**
  1. Log in as Admin.
  2. Navigate to the Student search section.
  3. Enter a valid student mobile number.
  4. Click Search.
- **Expected Result:** The matching student record(s) should appear in the search results grid.
- **Actual Result:** 
- **Status:** 
- **Comments:** 

## TC_003 – Search Student by Name
- **Scenario ID:** TS_002
- **Preconditions:** At least one student record exists in the system.
- **Test Steps:**
  1. Log in as Admin.
  2. Navigate to the Student search section.
  3. Enter a valid student first name.
  4. Click Search.
- **Expected Result:** The matching student record(s) should appear in the search results grid.
- **Actual Result:** 
- **Status:** 
- **Comments:** 

## TC_004 – Forgot Password
- **Scenario ID:** TS_003
- **Preconditions:** Registered email address exists.
- **Test Steps:**
  1. Open the Magnus login page.
  2. Click the Forgot Password link.
  3. Enter the registered email address.
  4. Click Submit/Reset.
- **Expected Result:** A confirmation message should appear and a reset email should be sent to the registered address.
- **Actual Result:** 
- **Status:** 
- **Comments:** 

## TC_005 – Newsletter Subscription
- **Scenario ID:** TS_004
- **Preconditions:** Access to newsletter subscription page or module.
- **Test Steps:**
  1. Navigate to the newsletter subscription section.
  2. Enter a valid email address.
  3. Click Subscribe.
- **Expected Result:** A subscription success message should appear and the email should be stored in the system.
- **Actual Result:** 
- **Status:** 
- **Comments:** 

## TC_006 – Edit User Group Permissions
- **Scenario ID:** TS_005
- **Preconditions:** Admin is logged in and a user group is available for editing.
- **Test Steps:**
  1. Log in as Admin.
  2. Go to System > User Groups.
  3. Select a user group and click Edit.
  4. Enable or disable checkbox permissions.
  5. Click Save.
- **Expected Result:** User group permissions should update successfully and changes should persist.
- **Actual Result:** 
- **Status:** 
- **Comments:** 
