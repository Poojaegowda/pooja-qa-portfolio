# 🧪 Manual Testing - Test Cases

This file contains sample manual testing test cases covering common application functionalities and AML transaction monitoring scenarios.

---

## 📋 Test Case Format

| Field | Description |
|---|---|
| Test Case ID | Unique ID of the test case |
| Test Scenario | Functionality being tested |
| Preconditions | Conditions required before testing |
| Test Steps | Steps to execute |
| Test Data | Data used for testing |
| Expected Result | Expected behavior |
| Status | Pass/Fail |

---

# 🔐 Login Test Cases

| Test Case ID | Test Scenario | Expected Result |
|---|---|---|
| TC_LOGIN_001 | Login with valid username and password | User should be logged in successfully |
| TC_LOGIN_002 | Login with invalid username and valid password | Appropriate error message should be displayed |
| TC_LOGIN_003 | Login with valid username and invalid password | Appropriate error message should be displayed |
| TC_LOGIN_004 | Login with blank username and password | Required field validation should be displayed |
| TC_LOGIN_005 | Verify password field masking | Password should be displayed in masked format |
| TC_LOGIN_006 | Verify logout functionality | User should be logged out successfully |
| TC_LOGIN_007 | Verify session timeout | User should be logged out after session expiry |
| TC_LOGIN_008 | Verify login with inactive user account | Access should be denied |

---

# 👤 Customer / KYC Test Cases

| Test Case ID | Test Scenario | Expected Result |
|---|---|---|
| TC_KYC_001 | Create customer with valid details | Customer should be created successfully |
| TC_KYC_002 | Create customer with mandatory fields blank | Validation messages should be displayed |
| TC_KYC_003 | Enter invalid PAN format | Appropriate validation message should be displayed |
| TC_KYC_004 | Enter invalid date of birth | Invalid date should not be accepted |
| TC_KYC_005 | Search customer using valid Customer ID | Correct customer details should be displayed |
| TC_KYC_006 | Search customer using invalid Customer ID | No matching customer should be displayed |
| TC_KYC_007 | Verify customer risk category | Correct risk category should be displayed |

---

# 💰 Transaction Monitoring Test Cases

| Test Case ID | Test Scenario | Expected Result |
|---|---|---|
| TC_TXN_001 | Create a valid transaction | Transaction should be processed successfully |
| TC_TXN_002 | Submit transaction with blank amount | Required field validation should be displayed |
| TC_TXN_003 | Enter a negative transaction amount | Negative amount should not be accepted |
| TC_TXN_004 | Enter alphabetic characters in amount field | Invalid input should not be accepted |
| TC_TXN_005 | Create a transaction below the AML threshold | Transaction should be processed without an alert |
| TC_TXN_006 | Create a transaction above the AML threshold | AML alert should be generated |
| TC_TXN_007 | Create multiple transactions exceeding the daily limit | Alert should be generated based on the configured rule |
| TC_TXN_008 | Verify transaction details in the alert | Correct transaction details should be displayed |

---

# 🚨 AML Alert Test Cases

| Test Case ID | Test Scenario | Expected Result |
|---|---|---|
| TC_ALERT_001 | Verify alert generation for suspicious transaction | Alert should be generated successfully |
| TC_ALERT_002 | Verify Alert ID | Unique Alert ID should be generated |
| TC_ALERT_003 | Verify Customer ID in alert | Correct Customer ID should be displayed |
| TC_ALERT_004 | Verify alert status | New alert should have the correct initial status |
| TC_ALERT_005 | Search alert using valid Alert ID | Correct alert details should be displayed |
| TC_ALERT_006 | Review an alert | Authorized user should be able to review the alert |
| TC_ALERT_007 | Create a case from an alert | Case should be created and linked to the alert |

---

# 📊 Reports Test Cases

| Test Case ID | Test Scenario | Expected Result |
|---|---|---|
| TC_REPORT_001 | Generate report with valid date range | Report should be generated successfully |
| TC_REPORT_002 | Generate report without selecting date range | Validation message should be displayed |
| TC_REPORT_003 | Export report | Report should be downloaded successfully |
| TC_REPORT_004 | Verify report data | Report data should match application data |

---

# 🧪 Test Case Design Techniques Used

## 1. Equivalence Partitioning

Inputs are divided into valid and invalid groups.

**Example:**

For a transaction amount:

- Valid amount
- Zero amount
- Negative amount
- Invalid text input

---

## 2. Boundary Value Analysis

Values at the boundaries are tested.

**Example:**

If the AML threshold is ₹10,00,000:

- ₹9,99,999 → Below threshold
- ₹10,00,000 → Boundary value
- ₹10,00,001 → Above threshold

---

## 3. Positive Testing

Testing the application with valid input to verify expected behavior.

**Example:**

Login with valid credentials.

---

## 4. Negative Testing

Testing the application with invalid input to verify error handling.

**Example:**

Login with an incorrect password.

---

# 📌 Testing Types Applied

- Functional Testing
- Smoke Testing
- Sanity Testing
- Regression Testing
- Retesting
- Positive Testing
- Negative Testing
- Boundary Value Analysis
- Equivalence Partitioning

---

## 📈 Test Execution Summary

| Metric | Count |
|---|---:|
| Total Test Cases | 35+ |
| Functional Areas | 5 |
| Positive Scenarios | Included |
| Negative Scenarios | Included |
| Boundary Scenarios | Included |
| AML Scenarios | Included |
