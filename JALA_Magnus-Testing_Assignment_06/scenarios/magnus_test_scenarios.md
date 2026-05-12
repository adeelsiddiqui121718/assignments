# Magnus Test Scenarios

## TS_001 - Admin Login
- **Description:** Verify that Admin user can log in successfully with valid credentials.
- **Requirement Reference:** Login functionality for admin.
- **Precondition:** Admin account exists.
- **Test Coverage:** Login page, credential validation, successful redirect.

## TS_002 - Search Student
- **Description:** Verify that Admin can search student records using mobile number or name.
- **Requirement Reference:** Search functionality for student records.
- **Precondition:** At least one student record exists.
- **Test Coverage:** Search field, result grid, search filter.

## TS_003 - Forgot Password
- **Description:** Verify that Forgot Password works correctly for registered users.
- **Requirement Reference:** Password reset workflow.
- **Precondition:** Registered user email exists.
- **Test Coverage:** Forgot Password link, email validation, reset confirmation.

## TS_004 - Newsletter Subscription
- **Description:** Verify that a user can subscribe to newsletter with a valid email.
- **Requirement Reference:** Newsletter subscription functionality.
- **Precondition:** User is logged in or has access to subscription page.
- **Test Coverage:** Email input validation, subscribe action, success message.

## TS_005 - Edit User Group Permissions
- **Description:** Verify that Admin can edit user group permissions and save changes.
- **Requirement Reference:** User group management.
- **Precondition:** Admin is logged in and a user group exists.
- **Test Coverage:** User group edit page, checkbox permissions, save action.
