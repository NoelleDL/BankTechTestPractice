# BankTechTestPractice

This is a program that allows a user to make deposits, withdrawals, and print a bank statement that displays her transaction history and current balance.

![Domain Model](Untitled%20Diagram.png)

## User Stories

```
So that as a customer
I can have cash in my wallet,
I would like to withdraw money from my account.
```
```
So that as a customer
I don't overdraw funds,
I would like to receive an insufficient funds message.
```
```
So that as a customer
I can safely store my earnings,
I would like to deposit money to my account.
```
```
So that as a customer
I can verify activity on my account,
I would like to print transaction history that displays the current balance.

## Getting Started

Clone or download repository from git@github.com:NoelleDL/BankTechTestPractice.git

## Installation and Testing

Install the gems: 

```gem install rspec rubocop simplecov```

Run tests:

```rspec``` and ```rubocop```

## How to Use
The app runs in a REPL such as IRB or Pry. In your REPL, you can run the following commands:

Account

#new - creates a new instance of the Account class with an @transactions array which starts off empty<br>
#deposit(money, date) - add money to account<br>
#withdraw(money, date) - take out money from account

Statement

#new - creates a new instance of the Statement class
#header - creates the header for the balance statement
#transaction_history(account) - takes an instance of the Account class which has the @transactions attribute
#print_statement - displays header and transaction history, line by line.


