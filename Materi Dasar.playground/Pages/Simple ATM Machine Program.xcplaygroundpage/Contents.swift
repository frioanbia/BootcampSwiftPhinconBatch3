//: [Previous](@previous)

import Foundation

class ATMMachine {
    
    static func checkBalance() {
        print("\tYour current balance is \(BalanceInquiry.getBalance())")
    }
    
    func withdrawMoney() {
        if BalanceInquiry.balance == 0 {
            print("\tYour current balance is zero.")
            print("\tYou cannot withdraw!")
            print("\tYou need to deposit money first.")
        } else if BalanceInquiry.balance <= 500 {
            print("\tYou do not have sufficient money to withdraw")
            print("\tChecked your balance to see your money in the bank.")
        } else if Withdraw.withdraw > BalanceInquiry.balance {
            print("\tThe amount you withdraw is greater than to your balance")
            print("\tPlease check the amount you entered.")
        } else {
            BalanceInquiry.balance = BalanceInquiry.balance - Withdraw.withdraw
            print("\n\tYou withdraw the amount of Php \(Withdraw.withdraw)")
        }
    }
    
    func deposit() {
        print("\tYou deposited the amount of \(Deposit.getDeposit())")
    }
    
    func main() {
        var select = 0
        let choice = 0
        
        print("Welcome to this simple ATM Machine")
        
        repeat {
            try {
                repeat {
                    print("\tPlease select ATM Transactions")
                    print("\tPress [1] Deposit")
                    print("\tPress [2] Withdraw")
                    print("\tPress [3] Balance Inquiry")
                    print("\tPress [4] Exit")
                    print("\n\tWhat would you like to do? ")
                    
                    select = readLine().self
                    
                    if select > 4 {
                        print("\n\tPlease select correct transaction.")
                    } else {
                        switch select {
                        case 1:
                            print("\n\tEnter the amount of money to deposit: ")
                            Deposit.deposit = read.nextDouble()
                            BalanceInquiry.balance = Deposit.deposit + BalanceInquiry.balance;
                            depositMoney()
                            
                        case 2:
                            print("\n\tTo withdraw, make sure that you have sufficient balance in your account.");
                            print()
                            print("\tEnter amount of money to withdraw: ")
                            Withdraw.withdraw = read.nextDouble()
                            withdrawMoney();
                            
                        case 3:
                            checkBalance()
                            
                        default:
                            print("\n\tTransaction exited.")
                        }
                    }
                } while select > 4
                repeat {
                    try {
                        print("\n\tWould you like to try another transaction?")
                        print("\n\tPress [1] Yes \n\tPress [2] No")
                        print("\tEnter choice: ")
                        choice = read.nextInt()
                        
                        if choice > 2 {
                            print("\n\tPlease select correct choice.");
                        }
                    } catch error {
                        print("\tError Input! Please enter a number only.")
                        read = Scanner(System.in);
                        print("\tEnter yout choice:");
                        choice = read.nextInt();
                    }
                } while choice > 2
            } catch error {
                print("\tError Input! Please enter a number only.")
                read = Scanner(System.in);
                print("\tEnter yout choice:");
                select = read.nextInt();
            }
        } while choice <= 1
                   print("\n\tThank you for using this simple ATM Machine.")
    }
}

class Deposit: ATMMachine {
    static var deposit: Double = 0
    
    func setDeposit(_ d: Double) {
        Deposit.deposit = d
    }
    
    static func getDeposit() -> Double {
        return deposit
    }
}

class Withdraw: ATMMachine {
    static var withdraw: Double = 0
    
    func setWithdraw(_ w: Double) {
        Withdraw.withdraw = w
    }
    
    static func getWithdraw() -> Double {
        return withdraw
    }
}

class BalanceInquiry: ATMMachine {
    static var balance: Double = 0
    
    func setBalance(_ b: Double) {
        BalanceInquiry.balance = b
    }
    
    static func getBalance() -> Double {
        return balance
    }
}



//class ATMachine {
//
//    var balance: Double = 0
//
//    func checkBalance() {
//        print("Your current balance is \(balance)")
//    }
//
//    func withdraw() {
//
//    }
//
//    func balanceInquiry(amount: Double) throws {
//        if balance == 0 {
//            print("\tYour current balance is zero.");
//            print("\tYou cannot withdraw!");
//            print("\tYou need to deposit money first.");
//        } else if balance <= 500 {
//            print("\tYou do not have sufficient money to withdraw");
//            print("\tChecked your balance to see your money in the bank.");
//        } else if amount > balance {
//            print("\tThe amount you withdraw is greater than to your balance");
//            print("\tPlease check the amount you entered.");
//        } else {
//            balance -= amount
//            print("\n\tYou withdraw the amount of Php \(amount)");
//        }
//    }
//
//    func depositMoney() {
//        var deposit = balance
//        print("\tYou deposited the amount of \(deposit)");
//    }
//
//}




//func inputString() -> String {
//
//    let keyboard = NSFileHandle.fileHandleWithStandardInput()
//    let inputData = keyboard.availableData
//
//    let input =   NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
//    return String(input.characters.first!)
//}
//
//
//
//func inputInteger() -> Int {
//
//    let keyboard = NSFileHandle.fileHandleWithStandardInput()
//    let inputData = keyboard.availableData
//    let intData = (NSString(data: inputData, encoding:NSUTF8StringEncoding))
//
//    return ((intData)?.integerValue)!
//}
//
//
//
//var account: Int = 0
//
//var operation: String = ""
//
//var balance: Int = 0
//
//var deposit: Int = 0
//
//var withdraw: Int = 0
//
//print("Welcome to the ATM. Please enter either your savings or checking account number.")
//
//account = inputInteger() //You have to enter either 12345 or 67890
//
//switch account {
//
//case 12345:
//    balance = 2000
//
//    print("Your starting balance is \(balance).")
//    print("What do you want to do today? Enter 'D' for Deposit or 'W' for Withdrawl.")
//
//    operation = inputString()
//
//    if  operation == "D" || operation == "d" {
//
//        print("Enter the amount to deposit.")
//
//        deposit = inputInteger()
//
//        balance += deposit
//
//        print("You deposited \(deposit). Your balance is now \(balance).")
//
//    } else if operation == "W" || operation == "w" {
//
//        print("Enter the amount to withdraw.")
//
//        withdraw = inputInteger()
//
//        switch (balance < withdraw && balance >=  0 ? "Failure" :
//            "Success")  {
//
//        case "Failure":
//            print("You cannot withdraw \(withdraw) because you only have \(balance) in your account.")
//
//        case "Success":
//
//            balance -= withdraw
//            print("You have withdrawn \(withdraw). Your balance is now \(balance).")
//
//        default:
//            print("You have entered an invalid selection.")
//
//        }
//
//    } else {
//            print("length: \(operation.characters.count)")
//}
//
//
//
//case 67890:
//    balance = 50000
//    print("Your starting balance is \(balance).")
//    sleep(2)
//    print("What do you want to do today? Enter 'D' for Deposit, 'W' for Withdrawl.")
//
//    operation = inputString()
//
//    if operation == "D" || operation == "d" {
//
//        print("Enter the amount to deposit.")
//
//        deposit = inputInteger()
//
//        balance += deposit
//
//        print("You deposited \(deposit). Your balance is now \(balance).")
//
//    } else if operation == "W" || operation == "w" {
//
//        print("Enter the amount to withdraw.")
//
//        switch (balance < withdraw && balance >=  0 ? "Failure" :
//            "Success")  {
//
//        case "Failure":
//            print("You cannot withdraw \(withdraw) because you only have \(balance) in your account.")
//
//        case "Success":
//            balance -= withdraw
//            print("You have withdrawn \(withdraw). Your balance is now \(balance).")
//
//        default:
//            print("You have entered an invalid selection")
//        }
//
//    } else {
//        print("length: \(operation.characters.count)")
//    }
//
//
//default:
//    print ("Invalid account number.")
//
//}
//: [Next](@next)
