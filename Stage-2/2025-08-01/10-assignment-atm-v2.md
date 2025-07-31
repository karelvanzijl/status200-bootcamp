# Assignment: ATM Machine - Version 2.0

## Overview

Upgrade your ATM machine to handle real-world bill denominations! This advanced version builds upon ATM v1.0 by replacing simple balance tracking with actual bill management using 100, 50, and 10 MYR denominations.

## Prerequisites

- Complete ATM v1.0 assignment first
- Understanding of arrays or multiple variables
- Comfortable with conditional logic and loops

## Learning Objectives

- Manage complex data structures (denomination counts)
- Implement algorithmic thinking for bill dispensing
- Handle multiple input fields and validation
- Build upon existing code foundation

## Assignment Requirements

### ATM Machine v2.0 Specifications

#### Initial Setup
Replace simple ATM balance with specific denominations:
- **20 bills** of 100 MYR each = 2000 MYR
- **30 bills** of 50 MYR each = 1500 MYR  
- **40 bills** of 10 MYR each = 400 MYR
- **Total ATM value**: 3900 MYR
- **User Account Balance**: 1000 MYR (unchanged)

#### Enhanced Features

1. **Denomination Display**
   - Show count of each bill type in the ATM
   - Display total ATM value (calculated from denominations)
   - Update displays in real-time after transactions

2. **Denomination-Specific Deposits**
   - **Separate input fields** for each denomination:
     - "100 MYR bills:" [input field]
     - "50 MYR bills:" [input field]  
     - "10 MYR bills:" [input field]
   - Calculate total deposit amount automatically
   - Update ATM denomination counts accordingly
   - Validate that at least one denomination is provided

3. **Smart Withdrawal Algorithm**
   - User enters total amount to withdraw (single input)
   - ATM dispenses using **largest bills first** strategy
   - Update denomination counts after dispensing
   - Display which bills were dispensed to user

4. **Advanced Validation**
   - Check if ATM can provide exact amount with available bills
   - Validate user has sufficient balance
   - Ensure ATM has sufficient total cash

## Detailed Examples

### Example 1: Deposit Transaction
**User Input:**
- 100 MYR bills: 2
- 50 MYR bills: 1
- 10 MYR bills: 3
- **Total deposit:** 2×100 + 1×50 + 3×10 = 280 MYR

**ATM Before:**
- 100 MYR bills: 20 (2000 MYR)
- 50 MYR bills: 30 (1500 MYR)
- 10 MYR bills: 40 (400 MYR)
- **Total:** 3900 MYR

**ATM After:**
- 100 MYR bills: 22 (+2)
- 50 MYR bills: 31 (+1)
- 10 MYR bills: 43 (+3)
- **Total:** 4180 MYR

**User Balance:** 1000 → 1280 MYR

### Example 2: Smart Withdrawal
**User requests:** 180 MYR withdrawal

**Algorithm:**
1. 180 ÷ 100 = 1 remainder 80 → Use 1×100 MYR bill
2. 80 ÷ 50 = 1 remainder 30 → Use 1×50 MYR bill  
3. 30 ÷ 10 = 3 remainder 0 → Use 3×10 MYR bills

**ATM Before:**
- 100 MYR bills: 20
- 50 MYR bills: 30
- 10 MYR bills: 40
- **Total:** 3900 MYR

**ATM After:**
- 100 MYR bills: 19 (-1)
- 50 MYR bills: 29 (-1)
- 10 MYR bills: 37 (-3)
- **Total:** 3720 MYR

**Bills Dispensed:** "1×100 MYR + 1×50 MYR + 3×10 MYR"

### Example 3: Impossible Withdrawal
**User requests:** 25 MYR withdrawal
**Problem:** Cannot make 25 MYR with available denominations (10, 50, 100)
**Result:** ❌ "Cannot dispense exact amount with available denominations"

## Technical Implementation Guide

### Required Functions/Logic

1. **Deposit Handler**
   ```javascript
   // Pseudocode
   function handleDeposit() {
       // Get input values for each denomination
       // Validate inputs (non-negative integers)
       // Calculate total deposit amount
       // Update ATM denomination counts
       // Update user balance
       // Update displays
   }
   ```

2. **Withdrawal Algorithm**
   ```javascript
   // Pseudocode  
   function calculateWithdrawal(amount) {
       // Start with largest denomination
       // Calculate how many bills needed
       // Check if enough bills available
       // Repeat for each denomination
       // Return bill counts or error
   }
   ```

3. **Validation Functions**
   - Check if exact change is possible
   - Validate user balance
   - Validate ATM has sufficient funds
   - Validate input formats

## Advanced Scenarios to Handle

1. **Edge Case: No Change Possible**
   - User wants 15 MYR (impossible with 10, 50, 100)
   - Display helpful error message

2. **Edge Case: Insufficient Small Bills**
   - User wants 60 MYR
   - ATM has 100×100 MYR but 0×50 MYR and 0×10 MYR
   - Cannot provide exact change

3. **Mixed Scenarios**
   - Multiple deposits and withdrawals
   - Running low on specific denominations

## User Interface Requirements

### Deposit Section
```html
<!-- Example structure -->
<h3>Deposit Money</h3>
<label>100 MYR bills: <input type="number" id="deposit100"></label>
<label>50 MYR bills: <input type="number" id="deposit50"></label>  
<label>10 MYR bills: <input type="number" id="deposit10"></label>
<button onclick="handleDeposit()">Deposit</button>
<p id="depositResult"></p>
```

### Withdrawal Section
```html
<!-- Example structure -->
<h3>Withdraw Money</h3>
<label>Amount: <input type="number" id="withdrawAmount"></label>
<button onclick="handleWithdraw()">Withdraw</button>
<p id="withdrawResult"></p>
```

### Status Display
```html
<!-- Example structure -->
<h3>ATM Status</h3>
<p>100 MYR bills: <span id="count100">20</span></p>
<p>50 MYR bills: <span id="count50">30</span></p>
<p>10 MYR bills: <span id="count10">40</span></p>
<p>Total ATM Balance: <span id="atmTotal">3900</span> MYR</p>
<p>Your Balance: <span id="userBalance">1000</span> MYR</p>
```

## Assessment Criteria

- **Algorithm Implementation** (40%): Correct bill dispensing logic
- **Data Management** (30%): Proper denomination tracking
- **User Interface** (20%): Clear, functional interface
- **Edge Case Handling** (10%): Graceful error handling

## Bonus Challenges

1. **Optimization**: Find most efficient bill combinations
2. **History**: Track which denominations were used in each transaction
3. **Alerts**: Warn when running low on specific denominations
4. **Receipt**: Generate detailed transaction receipts

## Submission Guidelines

1. **File Structure**
   ```
   atm-v2/
   ├── index.html
   ├── style.css (optional)
   └── script.js (if using external JS)
   ```

2. **Testing Checklist**
   - [ ] Deposit with various denomination combinations
   - [ ] Withdrawal using smart algorithm
   - [ ] Handle impossible withdrawals gracefully
   - [ ] Edge cases (insufficient denominations)
   - [ ] Balance validation
   - [ ] Display updates correctly

## Getting Started

1. **Build on v1.0**: Use your ATM v1.0 as foundation
2. **Replace Variables**: Change single balance to denomination counts
3. **Implement Step by Step**: 
   - First: Denomination display
   - Second: Deposit functionality  
   - Third: Withdrawal algorithm
   - Fourth: Error handling

Ready to build a real ATM system? Let's make it happen! 🏧💰