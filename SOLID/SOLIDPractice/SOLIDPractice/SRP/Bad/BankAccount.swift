
// Vioation of SRP

class BankAccount {
    
    func deposit(amount: Double) {
        print("deposit amount in bank account")
    }
    
    func saveBalInDb() {
        print("add balance in db")
    }
    
    func fetchBalFromDb() {
        print("fetch balance from db")
    }
    
    func sendEmail() {
        print("send email of every update")
    }
    
    func fundTransfer() {
        print("fund transfer")
    }
}
