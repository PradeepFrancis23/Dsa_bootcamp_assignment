import 'dart:io';

void main() {
  double balance = 0.0;

  while (true) {
    // Prompt the user to select an option
    print('Please select an option:');
    print('1. Deposit');
    print('2. Withdraw');
    print('3. Exit');

    // Read the user's choice
    String? input = stdin.readLineSync();

    // Convert the input to an integer
    int choice;
    try {
      choice = int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a number.');
      continue;
    }

    switch (choice) {
      case 1:
        // Deposit
        print('Enter the amount to deposit:');
        String? depositInput = stdin.readLineSync();
        try {
          double depositAmount = double.parse(depositInput!);
          if (depositAmount > 0) {
            balance += depositAmount;
            print('You deposited \$${depositAmount.toStringAsFixed(2)}. Current balance: \$${balance.toStringAsFixed(2)}');
          } else {
            print('Deposit amount must be positive.');
          }
        } catch (e) {
          print('Invalid input. Please enter a valid number.');
        }
        break;
      case 2:
        // Withdraw
        print('Enter the amount to withdraw:');
        String? withdrawInput = stdin.readLineSync();
        try {
          double withdrawAmount = double.parse(withdrawInput!);
          if (withdrawAmount > 0) {
            if (withdrawAmount <= balance) {
              balance -= withdrawAmount;
              print('You withdrew \$${withdrawAmount.toStringAsFixed(2)}. Current balance: \$${balance.toStringAsFixed(2)}');
            } else {
              print('Insufficient funds. Your current balance is \$${balance.toStringAsFixed(2)}');
            }
          } else {
            print('Withdrawal amount must be positive.');
          }
        } catch (e) {
          print('Invalid input. Please enter a valid number.');
        }
        break;
      case 3:
        // Exit
        print('Exiting...');
        return;
      default:
        print('Invalid selection. Please select 1, 2, or 3.');
    }
  }
}
