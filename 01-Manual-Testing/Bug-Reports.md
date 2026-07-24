# 🐞 Manual Testing - Bug Reports

This file contains sample bug reports created during manual testing practice.

---

## 🐞 BUG_001 - Login Button Does Not Work with Valid Credentials

### Module
Login

### Severity
High

### Priority
High

### Preconditions
User should have a valid registered account.

### Steps to Reproduce

1. Open the application.
2. Enter a valid username.
3. Enter a valid password.
4. Click the Login button.

### Expected Result

User should be successfully logged in to the application.

### Actual Result

The Login button does not respond and the user remains on the login page.

### Status

Open

---

## 🐞 BUG_002 - Incorrect Error Message for Invalid Password

### Module
Login

### Severity
Medium

### Priority
Medium

### Steps to Reproduce

1. Open the application.
2. Enter a valid username.
3. Enter an incorrect password.
4. Click the Login button.

### Expected Result

The system should display:

> Invalid username or password.

### Actual Result

The system displays an incorrect or unclear error message.

### Status

Open

---

## 🐞 BUG_003 - AML Alert Not Generated for Transaction Above Threshold

### Module
Transaction Monitoring

### Severity
Critical

### Priority
High

### Preconditions

AML rule should be configured with a transaction threshold.

### Steps to Reproduce

1. Login to the application.
2. Create a transaction above the configured AML threshold.
3. Submit the transaction.
4. Navigate to the Alert Management module.

### Expected Result

An AML alert should be generated for the suspicious transaction.

### Actual Result

The transaction is completed, but no AML alert is generated.

### Status

Open

---

## 🐞 BUG_004 - Incorrect Customer Details Displayed in Alert

### Module
Alert Management

### Severity
High

### Priority
High

### Steps to Reproduce

1. Generate a suspicious transaction.
2. Open the generated AML alert.
3. Verify the customer details.

### Expected Result

The alert should display the correct Customer ID and customer details.

### Actual Result

Incorrect customer details are displayed in the alert.

### Status

Open

---

## 🐞 BUG_005 - Report Download Button Does Not Download the Report

### Module
Reports

### Severity
Medium

### Priority
Medium

### Steps to Reproduce

1. Navigate to the Reports module.
2. Select a valid date range.
3. Generate the report.
4. Click the Download button.

### Expected Result

The report should be downloaded successfully.

### Actual Result

The Download button is clicked, but the report is not downloaded.

### Status

Open

---

# 📊 Bug Report Summary

| Bug ID | Module | Severity | Priority | Status |
|---|---|---|---|---|
| BUG_001 | Login | High | High | Open |
| BUG_002 | Login | Medium | Medium | Open |
| BUG_003 | Transaction Monitoring | Critical | High | Open |
| BUG_004 | Alert Management | High | High | Open |
| BUG_005 | Reports | Medium | Medium | Open |

---

## 📝 Defect Reporting Process

```text
Defect Identified
       ↓
Defect Reported
       ↓
Defect Assigned
       ↓
Defect Fixed
       ↓
Retesting
       ↓
Verified
       ↓
Closed
