// Single Responsiblity Principle

final class SRPBankAccount {
    
    func deposit(amount: Double) {
        print("ammount deposited successfully")
    }
    
    func withdrawal(amount: Double) {
        print("ammount withdraw successfully")
    }
}

final class DataBaseService {
    
    func saveBalInDb() {
        print("add balance in db")
    }
    
    func fetchBalFromDb() {
        print("fetch balance from db")
    }
}

class NotifyUsersService {
    func notifyUserByEmailSend() {
        print("notify user by sending email")
    }
    
    func notifyUserByEmailMsg() {
        print("notify user by sending email")
    }
}

class FundTransferService {
    
    func transferFundsToUsers(from: SRPBankAccount, to: SRPBankAccount, amount: Double) {
        
    }
}
