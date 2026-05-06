# life-insurance-sql-project
Actuarial-style SQL analysis of life &amp; annuity portfolio performance (premiums, claims, loss ratios, policy behavior)


#Life Insurance Portfolio Analysis (SQL)

##  Overview

This project performs an actuarial-style analysis of a simplified life insurance portfolio using SQL. It evaluates premiums, claims experience, and profitability metrics commonly used in life & annuity valuation and financial reporting.

The goal is to simulate real-world insurance analytics work by assessing portfolio performance and loss ratios at both aggregate and policy levels.

---

## Business Context

In life insurance and annuity products, analysts regularly evaluate:

* Premium inflows (policyholder payments)
* Claims outflows (death benefits)
* Profitability of the book of business
* Policy behavior (active vs lapsed status)

This project replicates those core analytical workflows using structured SQL queries.

---

## Dataset Description

The project uses a simulated insurance dataset with three core tables:

### 1. Policies Table

Contains policy-level information such as:

* Policy issue date
* Premium amount
* Term length
* Policy status (Active/Lapsed)

### 2. Premiums Table

Tracks premium payments over time for each policy.

### 3. Claims Table

Contains claim events and payout amounts for death benefits.

---

##  Key Analytical Questions

This project answers the following business questions:

* What is the total premium collected across the portfolio?
* What is the total claims experience?
* What is the loss ratio by policy?
* How do active vs lapsed policies compare?
* Which policies are driving profitability or losses?

---

## Key Metric

**Loss Ratio = Claims / Premiums**

This is a core insurance performance metric used to evaluate underwriting profitability.

* Loss Ratio < 1 → profitable portfolio
* Loss Ratio > 1 → unprofitable portfolio

---

## Tools Used

* SQL
* SQLite (for query execution)

---

## Key Insights

* The portfolio is evaluated at both aggregate and policy level
* Loss ratios highlight underwriting performance differences across policies
* Claims concentration can be identified at the policy level
* Policy status (active vs lapsed) provides additional behavioral context

---

## Skills Demonstrated

* SQL data aggregation and joins
* Financial and insurance data analysis
* Actuarial-style thinking (loss ratios, portfolio evaluation)
* Data modeling and structured analysis
* Business insight generation from raw data

---

## Project Purpose

This project was built to strengthen actuarial and financial analytics skills by simulating real-world life insurance portfolio analysis using SQL.

It is part of a broader effort to transition into actuarial/insurance analytics roles.

---

##  Future Improvements

* Add cohort analysis (issue year performance)
* Include lapse rate modeling by duration
* Expand to reserve estimation techniques
* Build Power BI dashboard for visualization

---

