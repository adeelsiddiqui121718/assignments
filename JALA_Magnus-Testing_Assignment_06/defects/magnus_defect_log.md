# Magnus Defect Log

## DEF_001 – Edit User Group Checkbox Not Enabled
- **Summary:** Checkbox not enabled when editing user group permissions.
- **Severity:** S3
- **Priority:** P3
- **Environment:** Windows, Chrome/IE 9.0
- **Steps to Reproduce:**
  1. Log in as Admin.
  2. Navigate to System > User Groups.
  3. Select a user group and click Edit.
  4. Attempt to enable checkbox permissions.
- **Expected Result:** Checkbox should be enabled and selectable.
- **Actual Result:** Checkbox remains disabled after clicking.
- **Status:** Open

## DEF_002 – Search Fails for Partial Mobile Number
- **Summary:** Student search returns no results for partial mobile number input.
- **Severity:** S2
- **Priority:** P3
- **Environment:** Windows, Chrome
- **Steps to Reproduce:**
  1. Log in as Admin.
  2. Navigate to the Student search section.
  3. Enter a partial mobile number.
  4. Click Search.
- **Expected Result:** Matching student records should display for partial mobile search.
- **Actual Result:** No records are displayed.
- **Status:** Open

## DEF_003 – Forgot Password Email Not Sent
- **Summary:** Forgot Password request does not send reset email for registered user.
- **Severity:** S2
- **Priority:** P2
- **Environment:** Windows, Chrome
- **Steps to Reproduce:**
  1. Open the Magnus login page.
  2. Click Forgot Password.
  3. Enter registered admin email.
  4. Click Submit.
- **Expected Result:** Reset email should be sent and confirmation message displayed.
- **Actual Result:** No email is received and confirmation message may not appear.
- **Status:** Open

## DEF_004 – Newsletter Accepts Invalid Email Format
- **Summary:** Newsletter subscription accepts invalid email input.
- **Severity:** S3
- **Priority:** P4
- **Environment:** Windows, Chrome
- **Steps to Reproduce:**
  1. Navigate to the newsletter subscription section.
  2. Enter an invalid email format, such as `abc@`.
  3. Click Subscribe.
- **Expected Result:** Validation should reject invalid email format.
- **Actual Result:** Invalid email is accepted and subscription may succeed.
- **Status:** Open

## DEF_005 – Pagination Not Working on 50 Records Per Page
- **Summary:** Pagination fails when switching to 50 records per page in the results grid.
- **Severity:** S3
- **Priority:** P3
- **Environment:** Windows, Chrome
- **Steps to Reproduce:**
  1. Log in as Admin.
  2. Go to a results grid that supports pagination.
  3. Select 50 records per page.
- **Expected Result:** Grid should display 50 records and pagination should work.
- **Actual Result:** Grid either breaks or pagination controls stop functioning.
- **Status:** Open
